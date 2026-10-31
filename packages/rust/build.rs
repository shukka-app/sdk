//! Generates the client from `openapi.json` at build time.
//!
//! The copy sits next to this manifest (not in the workspace `spec/`) so the
//! crate is self-contained once published; `scripts/generate.mjs` refreshes it
//! from `spec/openapi-3.0.json`.
//!
//! progenitor only accepts OpenAPI 3.0.x and requires a unique `operationId` on
//! every operation — both are guarantees of the shukka contract, not accidents.
//! The generated code lands in `OUT_DIR/codegen.rs` and is `include!`d by
//! `src/lib.rs`.
use std::path::PathBuf;

fn main() {
    let spec_path = PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("openapi.json");
    println!("cargo:rerun-if-changed={}", spec_path.display());

    let file = std::fs::File::open(&spec_path).expect("open packages/rust/openapi.json");
    let spec = serde_json::from_reader(file).expect("parse OpenAPI document");

    let mut generator = progenitor::Generator::default();
    let tokens = generator.generate_tokens(&spec).expect("generate client");
    let ast = syn::parse2(tokens).expect("parse generated tokens");
    let content = prettyplease::unparse(&ast);

    let out = PathBuf::from(std::env::var("OUT_DIR").unwrap()).join("codegen.rs");
    std::fs::write(out, content).expect("write generated client");
}
