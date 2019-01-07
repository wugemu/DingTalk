.class final Lhlf$1$1;
.super Lcmi;
.source "DingDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlf$1;->login(Ljava/lang/String;Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;

.field final synthetic b:Lhlf$1;


# direct methods
.method constructor <init>(Lhlf$1;Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;)V
    .locals 0
    .param p1, "this$1"    # Lhlf$1;

    .prologue
    .line 43
    iput-object p1, p0, Lhlf$1$1;->b:Lhlf$1;

    iput-object p2, p0, Lhlf$1$1;->a:Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 56
    const/4 v0, -0x1

    .line 58
    .local v0, "errCode":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :goto_0
    iget-object v2, p0, Lhlf$1$1;->a:Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lhlf$1$1;->a:Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;

    invoke-interface {v2, v0, p2}, Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;->onFail(ILjava/lang/String;)V

    .line 65
    :cond_0
    const-string/jumbo v2, "login.dingDataProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UICAuth_onException,code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 67
    .local v1, "properties":Ljava/util/Properties;
    const-string/jumbo v2, "code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v2, "UICAuth_onException"

    invoke-static {v2}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 70
    return-void

    .end local v1    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 43
    check-cast p1, Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Lhlf$1$1;->a:Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lhlf$1$1;->a:Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;

    invoke-interface {v0, p1}, Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;->onSuccess(Ljava/lang/String;)V

    .line 1050
    :cond_0
    const-string/jumbo v0, "UICAuth_onLoadSuccess"

    invoke-static {v0}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v0, "login.dingDataProvider"

    const-string/jumbo v1, "UICAuth_onLoadSuccess"

    invoke-static {v0, v1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
