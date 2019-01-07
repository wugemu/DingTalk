.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->updateDownloadInfo(JLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$downloadedSize:J

.field final synthetic val$id:J

.field final synthetic val$localUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->val$id:J

    iput-wide p5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->val$downloadedSize:J

    iput-object p7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->val$localUrl:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 6
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 788
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->val$id:J

    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->val$downloadedSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateDownloadedSize(JJ)Z

    .line 789
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->val$id:J

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$14;->val$localUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateLocalUrl(JLjava/lang/String;)Z

    .line 790
    return-void
.end method
