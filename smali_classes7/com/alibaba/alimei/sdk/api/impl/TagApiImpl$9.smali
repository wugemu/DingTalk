.class Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$9;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "TagApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;->updateLastVisitTime(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;

.field final synthetic val$tagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$9;->this$0:Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$9;->val$tagId:Ljava/lang/String;

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
    .line 245
    if-eqz p2, :cond_0

    .line 246
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    iget-object v1, p2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl$9;->val$tagId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;->updateLastVisitTime(JLjava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 249
    :cond_0
    return-void
.end method
