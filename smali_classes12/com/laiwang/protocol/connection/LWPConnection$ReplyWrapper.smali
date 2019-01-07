.class Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;
.super Ljava/lang/Object;
.source "LWPConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/connection/LWPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReplyWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private autoRelease:Z

.field private reply:Lcom/laiwang/protocol/android/Reply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/laiwang/protocol/connection/LWPConnection;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/connection/LWPConnection;Lcom/laiwang/protocol/android/Reply;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/connection/LWPConnection;
    .param p3, "auto"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "reply":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->this$0:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->reply:Lcom/laiwang/protocol/android/Reply;

    .line 188
    iput-boolean p3, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->autoRelease:Z

    .line 189
    return-void
.end method


# virtual methods
.method public on(Lcom/laiwang/protocol/core/Response;)V
    .locals 5
    .param p1, "t"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v0

    .line 194
    .local v0, "status":Lcom/laiwang/protocol/core/Constants$Status;
    iget-boolean v1, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->autoRelease:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v0, v1, :cond_0

    .line 195
    const-string/jumbo v2, "[LWPConn] reply on, auto release conn %s"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->this$0:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-static {v1}, Lcom/laiwang/protocol/connection/LWPConnection;->a(Lcom/laiwang/protocol/connection/LWPConnection;)Lcom/laiwang/protocol/android/t;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->this$0:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-virtual {v1}, Lcom/laiwang/protocol/connection/LWPConnection;->release()V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->reply:Lcom/laiwang/protocol/android/Reply;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->reply:Lcom/laiwang/protocol/android/Reply;

    invoke-interface {v1, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    .line 200
    :cond_1
    return-void

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->this$0:Lcom/laiwang/protocol/connection/LWPConnection;

    invoke-static {v1}, Lcom/laiwang/protocol/connection/LWPConnection;->a(Lcom/laiwang/protocol/connection/LWPConnection;)Lcom/laiwang/protocol/android/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/t;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/connection/LWPConnection$ReplyWrapper;->on(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
