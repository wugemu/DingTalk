.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->run()V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

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
    .line 506
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "setFoldersPushSettings "

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    .line 511
    sget v0, Laxo$i;->connectivity_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 512
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-boolean v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->b:Z

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->n(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 517
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 467
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;

    .line 1470
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-boolean v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->b:Z

    if-nez v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1489
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g()V

    .line 1491
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1492
    const-string/jumbo v0, "result: "

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1493
    iget-object v0, p1, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;->subcribeResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$SetFolderPushResult;

    .line 1494
    const-string/jumbo v3, "  folder:"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1495
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$SetFolderPushResult;->folderId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1496
    const-string/jumbo v3, " resultCode:"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1497
    iget v0, v0, Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult$SetFolderPushResult;->errorCode:I

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 1499
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1500
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 1501
    const-string/jumbo v1, "CMailSettingsFolderPushActivity"

    const-string/jumbo v2, "setFoldersPushSettings "

    invoke-static {v1, v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_2
    return-void
.end method
