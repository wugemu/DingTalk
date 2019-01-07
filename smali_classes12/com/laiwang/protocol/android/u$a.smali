.class Lcom/laiwang/protocol/android/u$a;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPBioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/u;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/u;)V
    .locals 4
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/u;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/laiwang/protocol/android/u$a;->a:Lcom/laiwang/protocol/android/u;

    .line 86
    const-string/jumbo v0, "tcp_bio_connect_timeout"

    const-wide/16 v2, 0x4e20

    invoke-direct {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/laiwang/protocol/android/u$a;->a:Lcom/laiwang/protocol/android/u;

    sget-object v1, Lcom/laiwang/protocol/android/k;->a:Lcom/laiwang/protocol/android/k$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/u;->a(Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method
