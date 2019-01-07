.class public Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "DocScanForwardHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;"
    }
.end annotation


# instance fields
.field private mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

.field private mNonSendCount:I

.field private mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->parseIntentExtra(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->finish(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$106(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mNonSendCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mNonSendCount:I

    return v0
.end method

.method private createThread()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 107
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-class v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 109
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 110
    return-object v0
.end method

.method private finish(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 244
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 247
    :cond_1
    return-void
.end method

.method private sendImageMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 250
    .local p4, "filePath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->finish(Landroid/app/Activity;)V

    .line 298
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v2, :cond_2

    .line 255
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 259
    :cond_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mNonSendCount:I

    .line 260
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 261
    .local v0, "messageSender":Ldiz;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v4, Ldiz$a;

    invoke-interface {v2, v3, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldiz$a;

    .line 1131
    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 285
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 286
    .local v1, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;

    invoke-direct {v2, p0, p4, v0, p3}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$3;-><init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Ljava/util/List;Ldiz;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 117
    .local p4, "sendFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->file_upload_error_not_found:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->finish(Landroid/app/Activity;)V

    .line 238
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->msg_space_uploading:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mProgressDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 127
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->createThread()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    .line 128
    .local v6, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v0, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 129
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getType()Lcom/alibaba/dingtalk/doclens/DocFileType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    if-ne v1, v2, :cond_2

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getDocImagePath()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getDocImagePath()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getType()Lcom/alibaba/dingtalk/doclens/DocFileType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    if-ne v0, v1, :cond_3

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getDocPdfPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_3
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method public parseIntentExtra(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string/jumbo v0, "intent_key_forward_doclens_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    goto :goto_0
.end method

.method public bridge synthetic parseIntentExtra(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->parseIntentExtra(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    move-result-object v0

    return-object v0
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-object v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$4;->a:[I

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getType()Lcom/alibaba/dingtalk/doclens/DocFileType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/doclens/DocFileType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getDocPdfPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 89
    .local v2, "paths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getDocPdfPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 94
    .end local v2    # "paths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v3

    iget-object v4, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v3, v4}, Ldho;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 95
    .local v0, "isEncrypt":Z
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mDocScanForwardExtra:Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/forward/extra/DocScanForwardExtra;->getDocImagePath()Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    .local v1, "mDocImageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 97
    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendSpaceFileMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->mAppendInfo:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendImageMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
