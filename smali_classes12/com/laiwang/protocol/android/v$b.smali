.class Lcom/laiwang/protocol/android/v$b;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPNioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/v;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/v;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/v;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/laiwang/protocol/android/v$b;->a:Lcom/laiwang/protocol/android/v;

    .line 136
    const-string/jumbo v0, "tcp-nio-select-write"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/laiwang/protocol/android/v$b;->a:Lcom/laiwang/protocol/android/v;

    invoke-static {v0}, Lcom/laiwang/protocol/android/v;->b(Lcom/laiwang/protocol/android/v;)Lcom/laiwang/protocol/android/q;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/v$b;->a:Lcom/laiwang/protocol/android/v;

    invoke-static {v1}, Lcom/laiwang/protocol/android/v;->a(Lcom/laiwang/protocol/android/v;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/laiwang/protocol/android/q;->a(Ljava/nio/channels/SelectionKey;IZ)V

    .line 142
    return-void
.end method
