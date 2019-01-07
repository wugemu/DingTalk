.class public final Lajn;
.super Ljava/lang/Object;
.source "MailAttachmentNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "attModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    const-string/jumbo v2, "MailAttachmentNavigator"

    const-string/jumbo v4, "handleImageClick fail for urlList is null or empty"

    invoke-static {v2, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 133
    :cond_1
    if-nez p0, :cond_2

    .line 134
    const-string/jumbo v2, "MailAttachmentNavigator"

    const-string/jumbo v4, "handleImageClick fail for context is null"

    invoke-static {v2, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    if-gez p3, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p3

    if-lt v0, v2, :cond_3

    .line 139
    const-string/jumbo v2, "MailAttachmentNavigator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleImageClick fail for index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", urlList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    const/4 v14, 0x0

    .line 144
    .local v14, "currentPhotoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v23

    .line 145
    .local v23, "size":I
    move/from16 v0, v23

    new-array v13, v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 146
    .local v13, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v19, v0

    .line 147
    .local v19, "mailAttachUrls":[Z
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 149
    .local v18, "mailAttachFileNames":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 150
    .local v17, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 151
    .local v15, "att":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    if-nez v15, :cond_4

    .line 152
    add-int/lit8 v17, v17, 0x1

    .line 153
    goto :goto_1

    .line 155
    :cond_4
    new-instance v21, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 156
    .local v21, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    const-string/jumbo v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 157
    const/4 v2, 0x0

    aput-boolean v2, v19, v17

    .line 158
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 159
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 160
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 161
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    .line 162
    .local v20, "name":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Luh;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 207
    .end local v20    # "name":Ljava/lang/String;
    :cond_5
    :goto_2
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v2, :cond_6

    .line 208
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 210
    :cond_6
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "space_transfer_src"

    const-string/jumbo v5, "mail"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "favorite_enter_hide"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v2, 0x0

    aput-object v2, v18, v17

    .line 214
    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 215
    move-object/from16 v14, v21

    .line 217
    :cond_7
    aput-object v21, v13, v17

    .line 218
    add-int/lit8 v17, v17, 0x1

    .line 219
    goto/16 :goto_1

    .line 164
    :cond_8
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 165
    const-string/jumbo v2, "calendar"

    iget-object v4, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v7, "3"

    .line 1246
    .local v7, "fileType":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 166
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "accessToken":Ljava/lang/String;
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Luh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 168
    .local v22, "picExtension":Ljava/lang/String;
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    iget-object v6, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailAttachmentDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 169
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "&."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 185
    :cond_9
    iget-object v0, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 186
    .restart local v20    # "name":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Luh;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 187
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    goto/16 :goto_2

    .line 165
    .end local v3    # "accessToken":Ljava/lang/String;
    .end local v7    # "fileType":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "picExtension":Ljava/lang/String;
    :cond_a
    const-string/jumbo v7, "0"

    goto :goto_3

    .line 188
    :cond_b
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 189
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    const-string/jumbo v4, "file:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 190
    new-instance v16, Ljava/io/File;

    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 192
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 193
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 194
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 196
    :cond_c
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 197
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 198
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 201
    .end local v16    # "file":Ljava/io/File;
    :cond_d
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 202
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 203
    iget-object v2, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 220
    .end local v15    # "att":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v21    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_e
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v8

    .line 221
    .local v8, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "mail_attach_urls"

    move-object/from16 v0, v19

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 223
    const-string/jumbo v2, "mail_attach_names"

    move-object/from16 v0, v18

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v9, p0

    .line 224
    check-cast v9, Landroid/app/Activity;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v8 .. v14}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;Z)V
    .locals 24
    .param p0, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p4, "isHandleSpaceDos"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "allImageAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v10, 0x0

    .line 71
    .local v10, "mCurrentPhotoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v17

    .line 72
    .local v17, "size":I
    move/from16 v0, v17

    new-array v9, v0, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 73
    .local v9, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move/from16 v0, v17

    new-array v14, v0, [Z

    .line 74
    .local v14, "mailAttachUrls":[Z
    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    .line 75
    .local v13, "mailAttachFileNames":[Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v19, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    const/4 v11, 0x0

    .line 78
    .local v11, "i":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 80
    .local v15, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    .line 81
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1054
    new-instance v18, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 1055
    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 1056
    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 1057
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    .line 1058
    iget-object v8, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->orgId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1059
    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 1060
    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 83
    .local v18, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static/range {v18 .. v18}, Ltm;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    const-string/jumbo v8, "mail"

    invoke-static {v7, v8}, Ltm;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v16

    .line 85
    .local v16, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 86
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v7, :cond_2

    .line 87
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v16

    iput-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 89
    :cond_2
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v8, "favorite_enter_hide"

    const-string/jumbo v20, "true"

    move-object/from16 v0, v20

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v7, 0x0

    aput-boolean v7, v14, v11

    .line 91
    const/4 v7, 0x0

    aput-object v7, v13, v11

    .line 92
    if-eqz p4, :cond_3

    .line 93
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v18    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_3
    :goto_2
    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v7}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v12

    .line 104
    .local v12, "isLocalUrl":Z
    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v7, v20, v22

    if-lez v7, :cond_4

    iget-wide v0, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    move-wide/from16 v22, v0

    cmp-long v7, v20, v22

    if-eqz v7, :cond_6

    :cond_4
    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    if-eqz v12, :cond_7

    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 106
    :cond_6
    move-object/from16 v10, v16

    .line 108
    :cond_7
    aput-object v16, v9, v11

    .line 109
    add-int/lit8 v11, v11, 0x1

    .line 110
    goto/16 :goto_1

    .line 96
    .end local v12    # "isLocalUrl":Z
    .end local v16    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_8
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v16

    .line 97
    .restart local v16    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v7, 0x1

    aput-boolean v7, v14, v11

    .line 98
    iget-object v7, v15, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    aput-object v7, v13, v11

    .line 99
    if-eqz p4, :cond_3

    .line 100
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    .end local v15    # "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v16    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_9
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    .line 112
    .local v4, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "mail_attach_urls"

    invoke-virtual {v6, v5, v14}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 114
    const-string/jumbo v5, "mail_attach_names"

    invoke-virtual {v6, v5, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    if-eqz p4, :cond_a

    .line 116
    const-string/jumbo v5, "dentry_list"

    move-object/from16 v0, v19

    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 118
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto/16 :goto_0
.end method
