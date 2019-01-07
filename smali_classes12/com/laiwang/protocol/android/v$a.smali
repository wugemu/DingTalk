.class Lcom/laiwang/protocol/android/v$a;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPNioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/v;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/v;)V
    .locals 4
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/v;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/laiwang/protocol/android/v$a;->a:Lcom/laiwang/protocol/android/v;

    .line 93
    const-string/jumbo v0, "tcp-nio-connect-timeout"

    const-wide/16 v2, 0x4e20

    invoke-direct {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/laiwang/protocol/android/v$a;->a:Lcom/laiwang/protocol/android/v;

    sget-object v1, Lcom/laiwang/protocol/android/k;->a:Lcom/laiwang/protocol/android/k$a;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/v;->a(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method
