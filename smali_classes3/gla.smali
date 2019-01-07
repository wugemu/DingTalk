.class public final Lgla;
.super Ljava/lang/Object;
.source "AliFileManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    .locals 8
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileExtension"    # Ljava/lang/String;
    .param p4, "fileContentType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 47
    new-instance v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;-><init>()V

    .line 49
    .local v7, "msgDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    iput-object p0, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->spaceId:Ljava/lang/String;

    .line 50
    iput-object p1, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->fileId:Ljava/lang/String;

    .line 51
    iput-object p2, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->fileName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    .line 53
    invoke-static/range {v0 .. v5}, Lgla;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->linkUrl:Ljava/lang/String;

    .line 55
    invoke-static {p4, p2, p3}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->title:Ljava/lang/String;

    .line 56
    iget-object v0, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget v0, Lfzs$h;->dt_cspace_unknown_file:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->title:Ljava/lang/String;

    .line 60
    :cond_0
    const/4 v6, 0x0

    .line 61
    .local v6, "descResId":I
    invoke-static {p3}, Lgpx;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    sget v6, Lfzs$h;->dt_alidoc_doc:I

    .line 66
    :cond_1
    :goto_0
    if-nez v6, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->content:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "file"

    invoke-static {p2, p3, v0}, Lgpx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->iconUrl:Ljava/lang/String;

    .line 70
    return-object v7

    .line 63
    :cond_2
    invoke-static {p3}, Lgpx;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget v6, Lfzs$h;->dt_alidoc_excel:I

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {v6}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileExtension"    # Ljava/lang/String;
    .param p4, "enableEdit"    # Z
    .param p5, "newBorn"    # Z

    .prologue
    .line 75
    invoke-static {}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a()Lcom/alibaba/android/dingtalk/doc/WEDocInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "AliFileManager"

    const-string/jumbo v6, "chooseReceiverAndSendAliFile: null param"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {p1}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "AliFileManager"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "genAliFileLinkUrl: invalid aliFile"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, ", spaceId: "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, ", fileId: "

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, ", contentType: "

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, ", fileExtension: "

    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 90
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 85
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 94
    invoke-static {v4, v5, v6, v7, v8}, Lgla;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    move-result-object v0

    .line 96
    .local v0, "msgDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->linkUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "AliFileManager"

    const-string/jumbo v6, "genAliFileLinkUrl: null msgDo or linkUrl"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_3
    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-direct {v1}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;-><init>()V

    .line 102
    .local v1, "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->linkUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setLinkUrl(Ljava/lang/String;)V

    .line 103
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 104
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->content:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setContent(Ljava/lang/String;)V

    .line 105
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 108
    .local v2, "shareInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    invoke-virtual {v2, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 109
    invoke-virtual {v2, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v3

    .line 110
    .local v3, "shareUnit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v4

    const-class v5, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v4, v5}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v4, p0, v3, v1}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0
.end method
