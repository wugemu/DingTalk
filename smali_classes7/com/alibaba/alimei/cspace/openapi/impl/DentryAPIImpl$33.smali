.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->updateThumbnailsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIJLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$authCode:Ljava/lang/String;

.field final synthetic val$authMediaId:Ljava/lang/String;

.field final synthetic val$dataSize:J

.field final synthetic val$duration:J

.field final synthetic val$fileId:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$rotation:I

.field final synthetic val$spaceId:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$spaceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$fileId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$mediaId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$authMediaId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$authCode:Ljava/lang/String;

    iput-wide p8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$duration:J

    iput p10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$width:I

    iput p11, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$height:I

    iput p12, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$rotation:I

    iput-wide p13, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$dataSize:J

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
    .line 1441
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 1442
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$4800(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$spaceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$fileId:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 1444
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-nez v1, :cond_0

    .line 1445
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1461
    :goto_0
    return-void

    .line 1449
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicUrl(Ljava/lang/String;)V

    .line 1450
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$authMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicUrl(Ljava/lang/String;)V

    .line 1451
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$authCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthPicCode(Ljava/lang/String;)V

    .line 1452
    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$duration:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDuration(J)V

    .line 1453
    iget v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$width:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicWidth(I)V

    .line 1454
    iget v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$height:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicHeight(I)V

    .line 1455
    iget v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$rotation:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicRotation(I)V

    .line 1456
    iget-wide v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->val$dataSize:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPicSize(J)V

    .line 1458
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$33;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v2}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$4900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->saveOrUpdate(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)J

    .line 1460
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
