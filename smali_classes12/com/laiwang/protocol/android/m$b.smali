.class Lcom/laiwang/protocol/android/m$b;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/m;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/m;)V
    .locals 4
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$b;->a:Lcom/laiwang/protocol/android/m;

    .line 385
    const-string/jumbo v0, "auth-timeout"

    const-wide/16 v2, 0x4e20

    invoke-direct {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 386
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 389
    const-string/jumbo v0, "[LwpConn] auth timeout"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/laiwang/protocol/android/m$b;->a:Lcom/laiwang/protocol/android/m;

    sget-object v1, Lcom/laiwang/protocol/android/m;->c:Lcom/laiwang/protocol/android/m$c;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V

    .line 391
    return-void
.end method
