.class public Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;
.super Ljava/lang/Object;
.source "MessageEncryptPhotoObjectsFetcher.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;


# instance fields
.field private mConversation:Lcom/alibaba/wukong/im/Conversation;

.field private mCursorMessage:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;-><init>(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "cursorMessage"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 45
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->mCursorMessage:Lcom/alibaba/wukong/im/Message;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->getDoraemonThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method

.method private getDoraemonThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 202
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 203
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "MessageEncryptPhotoObjectsFetcher"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 205
    return-object v0
.end method


# virtual methods
.method public cancelGet(Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 184
    .local v0, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_0

    const/16 v2, 0xcb

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 186
    invoke-static {p1}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 187
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 192
    .end local v0    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    return-void
.end method

.method public fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "callback"    # Lcom/alibaba/wukong/Callback;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x3e8

    const/4 v5, 0x1

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v8, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;

    invoke-direct {v8, p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/Callback;)V

    .line 94
    .local v8, "callbackAdapter":Lcom/alibaba/wukong/Callback;
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 96
    .local v4, "imageTypes":[I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->mCursorMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_2

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_photo_fetch_middle_cursor"

    .line 1083
    invoke-virtual {v0, v1, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3, v4, v8}, Lcom/alibaba/wukong/im/Conversation;->listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;I[ILcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;->mCursorMessage:Lcom/alibaba/wukong/im/Message;

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/wukong/im/Conversation;->listLocalMessages(Lcom/alibaba/wukong/im/Message;I[IZJLcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 94
    :array_0
    .array-data 4
        0xcb
        0x2
    .end array-data
.end method

.method public getPhotoObject(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 199
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {p1, v0, p2}, Ldrp;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoUrl(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
    .locals 16
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "callback"    # Lcom/alibaba/wukong/Callback;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 106
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v12

    .line 107
    .local v12, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v12, :cond_0

    const/16 v2, 0xcb

    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object v8, v12

    .line 108
    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 109
    .local v8, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->spaceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "imageKey":Ljava/lang/String;
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 111
    .local v7, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v7, v11}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1, v11}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$2;-><init>(Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    .end local v7    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v8    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .end local v11    # "imageKey":Ljava/lang/String;
    .end local v12    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v7    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .restart local v8    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .restart local v11    # "imageKey":Ljava/lang/String;
    .restart local v12    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_1
    invoke-static/range {p1 .. p1}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v6

    .line 121
    .local v6, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v6, :cond_0

    .line 122
    const/4 v9, 0x0

    .line 123
    .local v9, "imageFile":Ljava/io/File;
    iget-object v2, v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v2}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    new-instance v9, Ljava/io/File;

    .end local v9    # "imageFile":Ljava/io/File;
    iget-object v2, v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v9    # "imageFile":Ljava/io/File;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "imageFilePath":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1, v10}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$3;-><init>(Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 136
    .end local v10    # "imageFilePath":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "MessageEncryptPhotoObjectsFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "downlaodImage start msgId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v13

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$4;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher$4;-><init>(Lcom/alibaba/android/dingtalkim/impls/MessageEncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/doraemon/image/ImageMagician;)V

    invoke-virtual {v13, v6, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    goto :goto_0
.end method
