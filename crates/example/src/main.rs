#[tokio_macros::main]
async fn main() {
    tokio::spawn(async move {
        println!("hello");
    });
}
