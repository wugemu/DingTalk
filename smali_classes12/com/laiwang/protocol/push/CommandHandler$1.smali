.class Lcom/laiwang/protocol/push/CommandHandler$1;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lcom/laiwang/protocol/lang/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/push/CommandHandler;->apply(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/lang/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/protocol/push/CommandHandler;

.field final synthetic val$callback:Lcom/laiwang/protocol/lang/Callback;

.field final synthetic val$request:Lcom/laiwang/protocol/core/Request;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/push/CommandHandler;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/push/CommandHandler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/laiwang/protocol/push/CommandHandler$1;->this$0:Lcom/laiwang/protocol/push/CommandHandler;

    iput-object p2, p0, Lcom/laiwang/protocol/push/CommandHandler$1;->val$request:Lcom/laiwang/protocol/core/Request;

    iput-object p3, p0, Lcom/laiwang/protocol/push/CommandHandler$1;->val$callback:Lcom/laiwang/protocol/lang/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/push/CommandHandler$1;->apply(Ljava/lang/String;)V

    return-void
.end method

.method public apply(Ljava/lang/String;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v1, p0, Lcom/laiwang/protocol/push/CommandHandler$1;->val$request:Lcom/laiwang/protocol/core/Request;

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v0

    .line 55
    .local v0, "response":Lcom/laiwang/protocol/core/Response;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/core/Response;->payload([B)V

    .line 56
    iget-object v1, p0, Lcom/laiwang/protocol/push/CommandHandler$1;->val$callback:Lcom/laiwang/protocol/lang/Callback;

    invoke-interface {v1, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
