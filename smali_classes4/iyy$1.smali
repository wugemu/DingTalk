.class final Liyy$1;
.super Ljava/lang/Object;
.source "DispatchMessage.java"

# interfaces
.implements Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liyy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/lang/Callback;

.field final synthetic b:Lcom/laiwang/protocol/core/Request;

.field final synthetic c:Liyy;


# direct methods
.method constructor <init>(Liyy;Lcom/laiwang/protocol/lang/Callback;Lcom/laiwang/protocol/core/Request;)V
    .locals 0
    .param p1, "this$0"    # Liyy;

    .prologue
    .line 55
    iput-object p1, p0, Liyy$1;->c:Liyy;

    iput-object p2, p0, Liyy$1;->a:Lcom/laiwang/protocol/lang/Callback;

    iput-object p3, p0, Liyy$1;->b:Lcom/laiwang/protocol/core/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Liyy$1;->a:Lcom/laiwang/protocol/lang/Callback;

    iget-object v1, p0, Liyy$1;->b:Lcom/laiwang/protocol/core/Request;

    sget-object v2, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Liyy$1;->a:Lcom/laiwang/protocol/lang/Callback;

    iget-object v1, p0, Liyy$1;->c:Liyy;

    iget-object v2, p0, Liyy$1;->b:Lcom/laiwang/protocol/core/Request;

    sget-object v3, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {v1, v2, v3, p1}, Liyy;->a(Liyy;Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;Ljava/lang/String;)Lcom/laiwang/protocol/core/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Liyy$1;->b:Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
