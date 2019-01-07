.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->saveOrUpdateEncryptFile2DB(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLtj;Lxv;)V
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

.field final synthetic val$cryptModel:Ltj;

.field final synthetic val$extendInfo:Ljava/lang/String;

.field final synthetic val$pathUrlKv:Ljava/util/HashMap;

.field final synthetic val$spaceId:Ljava/lang/String;

.field final synthetic val$wifiOnly:Z


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$spaceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$pathUrlKv:Ljava/util/HashMap;

    iput-boolean p5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$wifiOnly:Z

    iput-object p6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$extendInfo:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$cryptModel:Ltj;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 8
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$spaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$pathUrlKv:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$wifiOnly:Z

    iget-object v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$extendInfo:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->val$cryptModel:Ltj;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$1200(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Ltj;Z)Ljava/util/List;

    move-result-object v7

    .line 348
    .local v7, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$7;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v0, p1, v7}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$1300(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Ljava/util/List;)V

    .line 349
    return-void
.end method
