.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 323
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "getFoldersPushSettings "

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    sget v0, Laxo$i;->connectivity_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 328
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 302
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;

    .line 1305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    .line 1309
    if-nez p1, :cond_1

    .line 1310
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "getFoldersPushSettings"

    const-string/jumbo v2, " result null"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-object v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;->subscribeList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1314
    iget-object v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;->subscribeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;

    .line 1315
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->folderId:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->isSubscribe:Z

    invoke-static {v2, v3, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1318
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;->accountSwitch:Z

    invoke-static {v0, v1}, Lajj;->a(Ljava/lang/String;Z)V

    .line 1319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    goto :goto_0
.end method
