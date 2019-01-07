.class final Laht$1;
.super Ljava/lang/Object;
.source "MailChangeFavoriteFlagTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laht;->a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback$Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic b:Laht;


# direct methods
.method constructor <init>(Laht;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Laht;

    .prologue
    .line 79
    iput-object p1, p0, Laht$1;->b:Laht;

    iput-object p2, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 1
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 103
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 79
    .line 1089
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onPostExecute(Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 1
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 96
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 79
    .line 2082
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Laht$1;->a:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/restfulapi/service/RpcCallback;->onSuccess(Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method
