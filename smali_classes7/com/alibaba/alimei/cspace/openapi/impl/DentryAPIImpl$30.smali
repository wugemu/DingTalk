.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->updateUploadedSizeAndUrl(JJLjava/lang/String;Lxv;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$id:J

.field final synthetic val$tempUrl:Ljava/lang/String;

.field final synthetic val$uploadedSize:J


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-wide p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;->val$id:J

    iput-wide p5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;->val$uploadedSize:J

    iput-object p7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;->val$tempUrl:Ljava/lang/String;

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
    .line 1385
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    .line 1386
    .local v1, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;->val$id:J

    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;->val$uploadedSize:J

    iget-object v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$30;->val$tempUrl:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateUploadedSizeAndUrl(JJLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1387
    return-void
.end method
