.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->a:Z

    iput-boolean p3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->b:Z

    iput-object p4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v1, "folderPushSettings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 444
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->a:Z

    if-eqz v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 446
    .local v0, "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_0

    .line 447
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;-><init>()V

    .line 448
    .local v2, "fs":Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iput-object v4, v2, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->folderId:Ljava/lang/String;

    .line 449
    iget-boolean v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    iput-boolean v4, v2, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->isSubscribe:Z

    .line 450
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    .end local v0    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "fs":Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;
    :cond_1
    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->b:Z

    if-nez v3, :cond_3

    .line 456
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 457
    .restart local v0    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    new-instance v2, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;-><init>()V

    .line 459
    .restart local v2    # "fs":Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->folderId:Ljava/lang/String;

    .line 460
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    iput-boolean v3, v2, Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;->isSubscribe:Z

    .line 461
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v0    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "fs":Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;->d:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    new-instance v5, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$8;)V

    invoke-interface {v3, v1, v4, v5}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->setFoldersPushSettings(Ljava/util/List;ZLxv;)V

    .line 520
    return-void
.end method
