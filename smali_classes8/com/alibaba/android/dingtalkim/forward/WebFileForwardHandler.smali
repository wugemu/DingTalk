.class public Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "WebFileForwardHandler.java"


# static fields
.field private static final SPACE_CAPACITY_FULL:Ljava/lang/String; = "13026000"


# instance fields
.field private mChoosePictureOrientation:I

.field private mDingTextContent:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePrivateTag:I

.field private mFileUrl:Ljava/lang/String;

.field private mSpaceForwardHandler:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

.field private mSrcMessage:Lcom/alibaba/wukong/im/Message;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;II)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .param p3, "srcMessage"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "dingTextContent"    # Ljava/lang/String;
    .param p5, "filePrivateTag"    # I
    .param p6, "choosePictureOrientation"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFileName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFileUrl:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    .line 38
    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mDingTextContent:Ljava/lang/String;

    .line 39
    iput p5, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFilePrivateTag:I

    .line 40
    iput p6, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mChoosePictureOrientation:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->sendWebFile(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mSpaceForwardHandler:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;)Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mSpaceForwardHandler:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mSrcMessage:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mDingTextContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFilePrivateTag:I

    return v0
.end method

.method static synthetic access$500(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mChoosePictureOrientation:I

    return v0
.end method

.method private sendWebFile(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendInfo"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 94
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFileUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFileName:Ljava/lang/String;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 96
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    const-class v5, Lcma;

    invoke-interface {v1, v2, v5, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    move-object v1, p1

    move-object v2, p2

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method protected getForwardTipInfo()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_trans_to_multiple_file_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mSpaceForwardHandler:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mSpaceForwardHandler:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mFileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
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
    .line 58
    if-nez p1, :cond_0

    .line 59
    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->onFail(ILjava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {p2}, Ldhy;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    invoke-static {p1, v0, v1}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ldhy$b;)V

    goto :goto_0
.end method
