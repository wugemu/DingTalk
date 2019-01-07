.class public Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
.super Ljava/lang/Object;
.source "DDSpaceFileUploader.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 42
    .line 3311
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object p2, v0

    .line 3322
    .end local p2    # "x2":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :goto_0
    return-object p2

    .line 3315
    .restart local p2    # "x2":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_1
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {v1, p1}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v1, v3, :cond_4

    .line 3316
    :cond_2
    const/16 v1, 0x1f6

    iput v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 3317
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 3318
    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    goto :goto_0

    .line 3320
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    goto :goto_0

    .line 3325
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 3327
    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3328
    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 3329
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 3330
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 3331
    const/16 v0, 0x1f4

    iput v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_0

    .line 3333
    :cond_5
    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 3334
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 3335
    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 3339
    :goto_1
    const/16 v0, 0x1f5

    iput v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_0

    .line 3337
    :cond_6
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    goto :goto_1
.end method

.method private a()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 42
    .line 4295
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4296
    :cond_0
    :goto_0
    return-void

    .line 4299
    :cond_1
    iget v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    iput v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    .line 4301
    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4303
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "mail_sendtomsg_success_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 4305
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Uploader$UploadListener;

    .prologue
    const-wide/16 v4, 0x0

    .line 42
    .line 5194
    if-eqz p3, :cond_1

    .line 5197
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 5198
    :cond_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b:Landroid/content/Context;

    sget v2, Lctk$i;->and_cspace_upload_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 5199
    :cond_1
    :goto_0
    return-void

    .line 5201
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 6109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5201
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 7109
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5201
    new-instance v6, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$4;-><init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(JJLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    const/4 v2, 0x0

    .line 42
    .line 3164
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3179
    :cond_0
    :goto_0
    return-void

    .line 3169
    :cond_1
    iget-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 3170
    iget-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    iput-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 3172
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v0, :cond_0

    .line 3176
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 3178
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3182
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v1, :cond_0

    .line 3186
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 3188
    invoke-static {p2}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->setExtension(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Uploader$UploadListener;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 278
    .local p3, "uploadListener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    if-nez p3, :cond_0

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$6;-><init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Uploader$UploadListener;

    .prologue
    .line 42
    .line 7241
    if-eqz p3, :cond_0

    .line 7244
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$5;-><init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 13
    .param p1, "uploadParams"    # Lcom/alibaba/wukong/im/Uploader$UploadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Uploader$UploadParams;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "uploadListener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    const/4 v12, 0x0

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v8

    .line 54
    .local v8, "isEncrypt":Z
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    .line 1346
    .local v9, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v9, :cond_3

    instance-of v1, v9, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v1, :cond_3

    .line 1347
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_0

    .line 1348
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x1f5

    if-eq v1, v2, :cond_0

    .line 1349
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0x1f6

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 56
    :goto_0
    if-eqz v1, :cond_7

    move-object v6, v9

    .line 58
    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 59
    .local v6, "multiMessageContent1":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 60
    .local v7, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v1, v2}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 61
    .local v3, "result":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {v3}, Ldkc;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;

    invoke-direct {v2, p0, p2, v9}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;Lcom/alibaba/wukong/im/MessageContent;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 158
    .end local v3    # "result":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v6    # "multiMessageContent1":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v7    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v8    # "isEncrypt":Z
    .end local v9    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_1
    :goto_1
    return-void

    .restart local v8    # "isEncrypt":Z
    .restart local v9    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_2
    move v1, v12

    .line 1349
    goto :goto_0

    :cond_3
    move v1, v12

    .line 1351
    goto :goto_0

    .line 70
    .restart local v3    # "result":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .restart local v6    # "multiMessageContent1":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .restart local v7    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    :cond_4
    iget-object v11, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 72
    .local v11, "path":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v11}, Lhcs;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 73
    :cond_5
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b:Landroid/content/Context;

    sget v4, Lctk$i;->and_cspace_upload_fail:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_6
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v5

    .line 82
    .local v5, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Uploader$UploadListener;Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;)V

    .line 139
    .local v0, "listener":Lgqt;
    new-instance v10, Lgrc;

    invoke-direct {v10}, Lgrc;-><init>()V

    .line 140
    .local v10, "param":Lgrc;
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 2116
    iput-object v1, v10, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 2124
    iput-boolean v8, v10, Lgrc;->i:Z

    .line 3084
    iput-object v11, v10, Lgrc;->d:Ljava/lang/String;

    .line 3132
    iput-boolean v12, v10, Lgrc;->j:Z

    .line 145
    const/16 v1, 0x64

    invoke-interface {p2, v1, v12, v12}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onProgress(III)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->b:Landroid/content/Context;

    invoke-virtual {v5, v1, v10, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lgrc;Lgqt;)V

    goto :goto_1

    .line 149
    .end local v0    # "listener":Lgqt;
    .end local v3    # "result":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v5    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v6    # "multiMessageContent1":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v7    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v10    # "param":Lgrc;
    .end local v11    # "path":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;->a()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$3;

    invoke-direct {v2, p0, p2, v9}, Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader$3;-><init>(Lcom/alibaba/android/dingtalkim/imtools/DDSpaceFileUploader;Lcom/alibaba/wukong/im/Uploader$UploadListener;Lcom/alibaba/wukong/im/MessageContent;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
