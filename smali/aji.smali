.class public final Laji;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static/range {p2 .. p2}, Lse;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    const/4 v5, 0x1

    new-array v9, v5, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 51
    .local v9, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    invoke-static/range {p2 .. p2}, Ltm;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v5

    invoke-static {v5}, Ltm;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v5

    const-string/jumbo v7, "mail"

    invoke-static {v5, v7}, Ltm;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v18

    .line 52
    .local v18, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-wide/16 v12, 0x0

    move-object/from16 v0, v18

    iput-wide v12, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 53
    const/4 v5, 0x0

    aput-object v18, v9, v5

    .line 54
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    .local v4, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    move-object/from16 v5, p0

    .line 56
    check-cast v5, Landroid/app/Activity;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto :goto_0

    .line 58
    .end local v4    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v9    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v18    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_2
    const/4 v5, 0x1

    new-array v9, v5, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 59
    .restart local v9    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v18

    .line 60
    .restart local v18    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v5, 0x0

    aput-object v18, v9, v5

    .line 61
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 62
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const/4 v5, 0x1

    new-array v0, v5, [Z

    move-object/from16 v17, v0

    .line 63
    .local v17, "mailAttachUrls":[Z
    const/4 v5, 0x0

    const/4 v7, 0x1

    aput-boolean v7, v17, v5

    .line 64
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    .line 65
    .local v10, "mailAttachFileNames":[Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    aput-object v7, v10, v5

    .line 66
    const-string/jumbo v5, "mail_attach_urls"

    move-object/from16 v0, v17

    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 67
    const-string/jumbo v5, "mail_attach_names"

    invoke-virtual {v6, v5, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    .restart local v4    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    move-object/from16 v5, p0

    .line 70
    check-cast v5, Landroid/app/Activity;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0

    .line 73
    .end local v4    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v9    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v10    # "mailAttachFileNames":[Ljava/lang/String;
    .end local v17    # "mailAttachUrls":[Z
    .end local v18    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_3
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 74
    invoke-static/range {p2 .. p2}, Ltm;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v19

    .line 75
    .local v19, "spDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 76
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "data"

    move-object/from16 v0, v19

    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v11

    .line 78
    .local v11, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    move-object v13, v6

    invoke-virtual/range {v11 .. v16}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_0

    .line 80
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v11    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v19    # "spDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_4
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5, v7}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/ImageView;
    .param p4, "model"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 128
    if-nez p4, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    invoke-static {p0}, Lafi;->a(Landroid/content/Context;)Lafi;

    move-result-object v0

    iget-object v2, p4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    const/16 v3, 0x100

    const/16 v4, 0x100

    const/4 v5, 0x1

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lafi;->a(Landroid/widget/ImageView;Ljava/lang/String;III)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :cond_3
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    iget-object v4, p4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    const/16 v5, 0x100

    const/16 v6, 0x100

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "url":Ljava/lang/String;
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 141
    .local v7, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/4 v0, 0x0

    invoke-interface {v7, p3, v8, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 15
    .param p0, "mailServerId"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "model"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 93
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 96
    .local v14, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-nez p3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 103
    .local v3, "url":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v14, v0, v3, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 104
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    const/4 v1, 0x0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    const-string/jumbo v4, "jpg"

    const/16 v5, 0x100

    const/16 v6, 0x100

    const/16 v7, 0x3c

    invoke-static/range {v1 .. v7}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentryImageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 109
    .restart local v3    # "url":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v1}, Luf;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 112
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    const-string/jumbo v9, "jpg"

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    const/16 v11, 0x100

    const/16 v12, 0x100

    const/16 v13, 0x3c

    move-object/from16 v5, p1

    move-object v6, p0

    invoke-static/range {v4 .. v13}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 115
    .restart local v3    # "url":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v14, v0, v3, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0
.end method
