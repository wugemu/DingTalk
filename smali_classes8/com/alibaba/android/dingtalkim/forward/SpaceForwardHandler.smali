.class public Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "SpaceForwardHandler.java"


# static fields
.field private static final DENTRY_TYPE_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG:Ljava/lang/String; = "SpaceForwardHandler"


# instance fields
.field private mChoosePictureOrientation:I

.field private mDingTextContent:Ljava/lang/String;

.field private mFilePrivateTag:I

.field private final mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field private mNeedShowConfirmDialog:Z

.field private mNeedSpaceCopy:Z

.field private mSrcMessage:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>(ZLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;II)V
    .locals 0
    .param p1, "needSpaceCopy"    # Z
    .param p2, "srcMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "dingTextContent"    # Ljava/lang/String;
    .param p4, "needShowConfirmDialog"    # Z
    .param p5, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p6, "filePrivateTag"    # I
    .param p7, "choosePictureOrientation"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 72
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mNeedSpaceCopy:Z

    .line 73
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    .line 74
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mDingTextContent:Ljava/lang/String;

    .line 75
    iput-boolean p4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mNeedShowConfirmDialog:Z

    .line 76
    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 77
    iput p6, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mFilePrivateTag:I

    .line 78
    iput p7, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mChoosePictureOrientation:I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mChoosePictureOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ldiz;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/util/Map;
    .param p6, "x6"    # Ldiz;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendCryptImageMessageAfterGetSize(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ldiz;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->isInUserOrgEmployee(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->showDecryptDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpace2IM(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendDecryptFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    return-void
.end method

.method private checkMediaInfo(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLjava/lang/String;)V
    .locals 12
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "needFinish"    # Z
    .param p5, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 230
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 231
    :cond_0
    sget v1, Lctk$i;->space_send_fail:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 279
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 235
    .local v10, "spaceId":J
    iget-object v1, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 3109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 236
    .local v8, "fileId":J
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    .line 238
    .local v7, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_3

    iget-object v1, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    .line 239
    invoke-virtual {v7, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$6;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    .local v0, "listener":Lcma;, "Lcma<Lgrh;>;"
    move-object v1, v7

    move-wide v2, v10

    move-wide v4, v8

    move-object v6, v0

    .line 275
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(JJLcma;)V

    goto :goto_0

    .line 277
    .end local v0    # "listener":Lcma;, "Lcma<Lgrh;>;"
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private createThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 720
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 721
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 722
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 723
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 724
    return-object v0
.end method

.method private genChatSenderListener(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;ZLdiz;)Ldiz$a;
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "appendText"    # Ljava/lang/String;
    .param p3, "needFinish"    # Z
    .param p4, "messageSender"    # Ldiz;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 375
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$9;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$9;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Ldiz;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    goto :goto_0
.end method

.method private isEncryptedMessage(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 4
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 729
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v3, v2, :cond_3

    .line 730
    :cond_0
    const/16 v0, 0x1f6

    .line 731
    .local v0, "contentType":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_1

    .line 732
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 735
    :cond_1
    const/16 v3, 0x1f6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xcb

    if-eq v0, v3, :cond_2

    const/16 v3, 0xcd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xce

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    .line 741
    .end local v0    # "contentType":I
    :cond_3
    return v1
.end method

.method private isGroupPermitForwardMessage(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 4
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 880
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v3, v2, :cond_3

    .line 881
    :cond_0
    const/16 v0, 0x1f6

    .line 882
    .local v0, "contentType":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 886
    :cond_1
    const/16 v3, 0x1f6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xcd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xce

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    .line 891
    .end local v0    # "contentType":I
    :cond_3
    return v1
.end method

.method private isInUserOrgEmployee(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 10
    .param p1, "data"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 746
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 748
    iget-object v3, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 749
    .local v3, "spaceDoOrgId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 750
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-static {v4}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 753
    :cond_0
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "SpaceForwardHandler"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "isInUserOrgEmployee spaceDoOrgId="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", spaceId="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, ", fileId="

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 756
    .local v1, "employees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 758
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "SpaceForwardHandler"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "employees size="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 760
    .local v0, "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "orgId":Ljava/lang/String;
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "SpaceForwardHandler"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "employees spaceDoOrgId="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", employee orgId="

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 763
    const/4 v4, 0x1

    .line 769
    .end local v0    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v1    # "employees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v2    # "orgId":Ljava/lang/String;
    .end local v3    # "spaceDoOrgId":Ljava/lang/String;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSpaceDoFolder(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 2
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 223
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    const-string/jumbo v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendCryptImageMessageAfterGetSize(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ldiz;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p6, "messageSender"    # Ldiz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ldiz;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 521
    .local p5, "extMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;

    invoke-direct {v0, p0, p4, p5, p6}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$12;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;ILjava/util/Map;Ldiz;)V

    .line 561
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 562
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 563
    return-void
.end method

.method private sendDecryptFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 789
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 790
    :cond_0
    sget v0, Lctk$i;->space_send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 875
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 795
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 798
    :cond_2
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "MsgForwardActivity"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sendDecryptFileMessage cid="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 799
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", spaceId="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", fileId="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v7, Ldiz;

    invoke-direct {v7, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 802
    .local v7, "messageSender":Ldiz;
    const-string/jumbo v0, "EVENTBUTLER"

    .line 803
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$4;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    const-class v1, Ldiz$a;

    .line 804
    invoke-interface {v8, v0, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldiz$a;

    .line 8131
    iput-object v0, v7, Ldiz;->b:Ldiz$a;

    .line 836
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 837
    .local v6, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$5;

    invoke-direct {v0, p0, p3, v7, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$5;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v2, Lcma;

    invoke-interface {v6, v0, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, p3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    goto :goto_0
.end method

.method private sendEncryptMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "appendText"    # Ljava/lang/String;
    .param p5, "needFinish"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 305
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 306
    :cond_0
    sget v5, Lctk$i;->space_send_fail:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 371
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mDingTextContent:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 311
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 312
    .local v1, "dingTextSendObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    iput v7, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 313
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mDingTextContent:Ljava/lang/String;

    iput-object v5, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 314
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, p2, v1, v8}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 318
    .end local v1    # "dingTextSendObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    :cond_2
    new-instance v3, Ldiz;

    invoke-direct {v3, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 319
    .local v3, "messageSender":Ldiz;
    invoke-direct {p0, p1, p4, p5, v3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->genChatSenderListener(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;ZLdiz;)Ldiz$a;

    move-result-object v5

    .line 4131
    iput-object v5, v3, Ldiz;->b:Ldiz$a;

    .line 321
    const/16 v0, 0x1f6

    .line 322
    .local v0, "contentType":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 323
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 330
    :cond_3
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 366
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 367
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 369
    :cond_4
    sget v5, Lctk$i;->space_send_fail:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_0

    .line 326
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v5

    iget-object v6, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mFilePrivateTag:I

    if-eq v5, v7, :cond_3

    .line 327
    const/16 v0, 0xcb

    goto :goto_1

    .line 332
    :sswitch_0
    const/16 v5, 0x1f6

    iput v5, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 333
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 334
    iput-object v8, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 339
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    .line 340
    .local v4, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v5, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 341
    new-instance v5, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$8;

    invoke-direct {v5, p0, v3, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$8;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Ldiz;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 336
    .end local v4    # "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_6
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    goto :goto_2

    .line 351
    :sswitch_1
    invoke-direct {p0, p1, p3, v3, v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendEncryptedImage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ldiz;I)V

    goto/16 :goto_0

    .line 357
    :sswitch_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v5, :cond_7

    .line 358
    const-class v5, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageBuilder;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    .line 359
    invoke-static {p3}, Ldkc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;

    move-result-object v7

    .line 358
    invoke-interface {v5, v6, v7}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptMessage(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 363
    .local v2, "message":Lcom/alibaba/wukong/im/Message;
    :goto_3
    const/4 v5, 0x0

    .line 4500
    invoke-virtual {v3, v2, v5, v8}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 361
    .end local v2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_7
    const-class v5, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {p3}, Ldkc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptMessage(ILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .restart local v2    # "message":Lcom/alibaba/wukong/im/Message;
    goto :goto_3

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        0xcb -> :sswitch_1
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0x1f6 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendEncryptedImage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ldiz;I)V
    .locals 17
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "messageSender"    # Ldiz;
    .param p4, "contentType"    # I

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_6

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 417
    .local v4, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v1

    if-lez v1, :cond_2

    .line 419
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    .line 420
    invoke-static/range {p2 .. p2}, Ldkc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptMessageContent(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 422
    .local v15, "newImageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    if-eqz v15, :cond_0

    .line 423
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setThumbId(Ljava/lang/String;)V

    .line 425
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, v15}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v14

    .line 426
    .local v14, "imageMessage":Lcom/alibaba/wukong/im/Message;
    const/4 v1, 0x0

    .line 5500
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v1, v2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    .line 518
    .end local v4    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .end local v14    # "imageMessage":Lcom/alibaba/wukong/im/Message;
    .end local v15    # "newImageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    :cond_1
    :goto_0
    return-void

    .line 429
    .restart local v4    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    :cond_2
    const/4 v13, 0x0

    .line 430
    .local v13, "cacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v16

    .line 431
    .local v16, "srcSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v16, :cond_3

    .line 432
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 435
    :cond_3
    invoke-static/range {p2 .. p2}, Ldkc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;

    move-result-object v5

    .line 436
    .local v5, "extMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 437
    move-object v3, v13

    .line 438
    .local v3, "finalCacheKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$10;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Ljava/lang/String;Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;Ljava/util/Map;Ldiz;)V

    invoke-interface {v7, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 466
    .end local v3    # "finalCacheKey":Ljava/lang/String;
    :cond_4
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    .line 467
    invoke-static/range {p2 .. p2}, Ldkc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptMessageContent(Lcom/alibaba/wukong/im/Message;Ljava/util/Map;)Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 469
    .restart local v15    # "newImageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    if-eqz v15, :cond_5

    .line 470
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->setThumbId(Ljava/lang/String;)V

    .line 472
    :cond_5
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-interface {v1, v15}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v14

    .line 473
    .restart local v14    # "imageMessage":Lcom/alibaba/wukong/im/Message;
    const/4 v1, 0x0

    .line 6500
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v1, v2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto :goto_0

    .line 477
    .end local v4    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .end local v5    # "extMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "cacheKey":Ljava/lang/String;
    .end local v14    # "imageMessage":Lcom/alibaba/wukong/im/Message;
    .end local v15    # "newImageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .end local v16    # "srcSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 479
    .local v12, "originSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static/range {p2 .. p2}, Ldkc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;

    move-result-object v5

    .line 480
    .restart local v5    # "extMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v6, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Ldrp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 481
    .restart local v13    # "cacheKey":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 482
    move-object v3, v13

    .line 483
    .restart local v3    # "finalCacheKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v6, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$11;

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v5

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v12}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$11;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Ljava/lang/String;Ljava/util/Map;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-interface {v1, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 513
    .end local v3    # "finalCacheKey":Ljava/lang/String;
    :cond_7
    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static/range {p2 .. p2}, Ldkc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/util/Map;

    move-result-object v2

    move/from16 v0, p4

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildEncryptMessage(ILjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v14

    .line 514
    .restart local v14    # "imageMessage":Lcom/alibaba/wukong/im/Message;
    const/4 v1, 0x0

    .line 7500
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v1, v2}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendSpace2IM(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 665
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    const-string/jumbo v0, "EVENTBUTLER"

    .line 666
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    const-class v1, Lcma;

    .line 667
    invoke-interface {v6, v0, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 665
    invoke-virtual {v7, p1, p2, p3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 717
    return-void
.end method

.method private sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLjava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "needFinish"    # Z
    .param p5, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 285
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 286
    :cond_0
    sget v2, Lctk$i;->space_send_fail:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 302
    :goto_0
    return-void

    .line 289
    :cond_1
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 290
    .local v0, "messageSender":Ldiz;
    invoke-direct {p0, p1, p5, p4, v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->genChatSenderListener(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;ZLdiz;)Ldiz$a;

    move-result-object v2

    .line 3131
    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 291
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 292
    .local v1, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 295
    sget v2, Lctk$i;->dt_mail_please_wait:I

    const-wide/16 v4, 0x258

    invoke-virtual {p1, v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(IJ)V

    .line 296
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$7;

    invoke-direct {v2, p0, v0, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$7;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Ldiz;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLjava/lang/String;Z)V
    .locals 10
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "decryptBeforeSend"    # Z
    .param p5, "needFinish"    # Z
    .param p6, "appendText"    # Ljava/lang/String;
    .param p7, "needThumbnail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->paramInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->onFail(I)V

    .line 220
    :goto_0
    return-void

    .line 177
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 178
    :cond_1
    sget v0, Lctk$i;->space_send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 182
    :cond_2
    if-nez p4, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move v5, p5

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendEncryptMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Z)V

    goto :goto_0

    .line 187
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    .line 189
    .local v7, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-virtual {v7, p2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    invoke-virtual {v7, p2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 191
    .local v8, "orgId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 192
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->isSpaceDoFolder(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1f7

    :goto_1
    iput v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 208
    .end local v8    # "orgId":J
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mDingTextContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 209
    new-instance v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 210
    .local v6, "dingTextSendObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/4 v0, 0x1

    iput v0, v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mDingTextContent:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v6, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 215
    .end local v6    # "dingTextSendObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    :cond_5
    if-eqz p7, :cond_a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object/from16 v5, p6

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->checkMediaInfo(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLjava/lang/String;)V

    goto :goto_0

    .line 193
    .restart local v8    # "orgId":J
    :cond_6
    const/16 v0, 0x1f4

    goto :goto_1

    .line 197
    .end local v8    # "orgId":J
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 198
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 199
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 203
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->isSpaceDoFolder(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1f7

    :goto_4
    iput v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_2

    .line 201
    :cond_8
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    goto :goto_3

    .line 203
    :cond_9
    const/16 v0, 0x1f5

    goto :goto_4

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object/from16 v5, p6

    .line 218
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 159
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLjava/lang/String;Z)V

    .line 160
    return-void
.end method

.method private sendWebSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 12
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 577
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 578
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v1, v9, :cond_2

    .line 579
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    iput v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 588
    :cond_0
    :goto_0
    const-string/jumbo v1, "im"

    const-string/jumbo v4, "SpaceForwardHandler"

    const-string/jumbo v5, "sendWebSpaceMessage"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->isEncryptedMessage(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 591
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_4

    .line 592
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    .line 594
    .local v8, "srcConversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v10, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->isGroupPermitForwardMessage(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpace2IM(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    .line 661
    .end local v8    # "srcConversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    :goto_1
    return-void

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v1, v9, :cond_0

    .line 581
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 582
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const/16 v4, 0xcb

    iput v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_0

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const/16 v4, 0x1f6

    iput v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_0

    .line 600
    :cond_4
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v9, :cond_5

    .line 602
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 603
    .local v2, "uid":J
    const-string/jumbo v1, "im"

    const-string/jumbo v4, "SpaceForwardHandler"

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "sendWebSpaceMessage chat getUserProfileExtension uid="

    aput-object v6, v5, v11

    .line 604
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$13;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$13;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    goto :goto_1

    .line 636
    .end local v2    # "uid":J
    :cond_5
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 638
    invoke-static {p2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "orgId":Ljava/lang/String;
    const-string/jumbo v7, "0"

    .line 640
    .local v7, "spaceDoOrgId":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 641
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 644
    :cond_6
    const-string/jumbo v1, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_7

    .line 645
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 648
    :cond_7
    const-string/jumbo v1, "im"

    const-string/jumbo v4, "SpaceForwardHandler"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "sendWebSpaceMessage group spaceDoOrgId="

    aput-object v6, v5, v11

    aput-object v7, v5, v9

    const-string/jumbo v6, ", orgId="

    aput-object v6, v5, v10

    const/4 v6, 0x3

    aput-object v0, v5, v6

    .line 649
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 648
    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 652
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->showDecryptDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 654
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpace2IM(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 658
    .end local v0    # "orgId":Ljava/lang/String;
    .end local v7    # "spaceDoOrgId":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpace2IM(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private share2SingleConversationInner(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "cid":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;->clickSpaceStatistic(Lcom/alibaba/wukong/im/Conversation;)V

    .line 147
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Ldjl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mNeedSpaceCopy:Z

    if-eqz v1, :cond_2

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendWebSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDecryptDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 773
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 777
    :cond_0
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v6, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 778
    .local v6, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v7, Lctk$i;->dt_im_forward_encrypt_file_yes:I

    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$3;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    const/4 v2, 0x0

    .line 784
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->dt_cspace_decrypt_before_forward_tip:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 785
    return-void
.end method


# virtual methods
.method protected getForwardTipInfo()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 896
    sget v0, Lctk$i;->lst_msg_tip_file:I

    .line 897
    .local v0, "textResId":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 912
    sget v0, Lctk$i;->lst_msg_tip_file:I

    .line 916
    :cond_0
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 900
    :pswitch_0
    sget v0, Lctk$i;->lst_msg_tip_pic:I

    .line 901
    goto :goto_0

    .line 903
    :pswitch_1
    sget v0, Lctk$i;->lst_msg_tip_voice:I

    .line 904
    goto :goto_0

    .line 906
    :pswitch_2
    sget v0, Lctk$i;->lst_msg_tip_video:I

    .line 907
    goto :goto_0

    .line 909
    :pswitch_3
    sget v0, Lctk$i;->dt_im_lst_msg_tip_common_video:I

    .line 910
    goto :goto_0

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->u(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method protected send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->share2SingleConversationWithAppend(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;Z)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "needFinish"    # Z
    .param p4, "appendText"    # Ljava/lang/String;
    .param p5, "needThumbnail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 164
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mMsgEntity:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLjava/lang/String;Z)V

    .line 165
    return-void
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->mNeedShowConfirmDialog:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p2}, Ldhy;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-static {p1, v0, v1}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ldhy$b;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->share2SingleConversationWithAppend(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method

.method share2SingleConversationWithAppend(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendText"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->share2SingleConversationInner(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0
.end method
