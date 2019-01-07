.class Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "BaseMailAdditionApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;->searchLocalContactsByPage(Ljava/lang/String;IILxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lagv;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$limit:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->val$keyword:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->val$offset:I

    iput p5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->val$limit:I

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 7
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 32
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->this$0:Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;

    invoke-static {v3}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;->access$000(Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->val$keyword:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->val$offset:I

    iget v6, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->val$limit:I

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->searchLocalContactsByPage(Ljava/lang/String;Ljava/lang/String;II)Lagv;

    move-result-object v2

    .line 33
    .local v2, "resultModel":Lagv;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v1, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lagv;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;->val$keyword:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 37
    return-void
.end method
