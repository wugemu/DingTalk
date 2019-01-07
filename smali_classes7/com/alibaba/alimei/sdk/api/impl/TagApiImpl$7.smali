.class Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "TagApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->updateTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;

.field final synthetic val$color:Ljava/lang/String;

.field final synthetic val$tagId:Ljava/lang/String;

.field final synthetic val$tagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->this$0:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$tagId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$tagName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$color:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 5
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;Lcom/alibaba/alimei/framework/model/UserAccountModel;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 194
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Ljava/lang/Boolean;>;"
    iget-object v1, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getTagService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcTagService;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$tagId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$tagName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$7;->val$color:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcTagService;->updateTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 195
    return-void
.end method
