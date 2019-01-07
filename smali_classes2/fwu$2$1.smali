.class final Lfwu$2$1;
.super Lcmi;
.source "DeviceSettingRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfwu$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfwu$2;


# direct methods
.method constructor <init>(Lfwu$2;)V
    .locals 0
    .param p1, "this$1"    # Lfwu$2;

    .prologue
    .line 61
    iput-object p1, p0, Lfwu$2$1;->a:Lfwu$2;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 78
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 80
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 81
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 84
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    iget-object v0, p0, Lfwu$2$1;->a:Lfwu$2;

    iget-object v0, v0, Lfwu$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lfwu$2$1;->a:Lfwu$2;

    iget-object v0, v0, Lfwu$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    .line 1064
    iget-object v0, p0, Lfwu$2$1;->a:Lfwu$2;

    iget-object v0, v0, Lfwu$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lfwu$2$1;->a:Lfwu$2;

    iget-object v0, v0, Lfwu$2;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method
