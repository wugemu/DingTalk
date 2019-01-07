.class Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "MailAdditionalApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->setFoldersPushSettings(Ljava/util/List;ZLxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

.field final synthetic val$accountSwitch:Z

.field final synthetic val$folderSettings:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;->val$folderSettings:Ljava/util/List;

    iput-boolean p4, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;->val$accountSwitch:Z

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 4
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 295
    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    .line 297
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;Lcom/alibaba/alimei/framework/api/ApiResult;)V

    .line 321
    .local v0, "callback":Lcom/alibaba/alimei/restfulapi/service/RpcCallback;, "Lcom/alibaba/alimei/restfulapi/service/RpcCallback<Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;->this$0:Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;->access$300(Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getMailService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcMailService;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;->val$folderSettings:Ljava/util/List;

    iget-boolean v3, p0, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl$7;->val$accountSwitch:Z

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/restfulapi/service/RpcMailService;->setFoldersPushSetting(Ljava/util/List;ZLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 322
    return-void
.end method
