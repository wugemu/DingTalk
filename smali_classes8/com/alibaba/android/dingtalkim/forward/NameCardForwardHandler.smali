.class public Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.source "NameCardForwardHandler.java"


# instance fields
.field private mNameCardDo:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;)V
    .locals 0
    .param p1, "namecardDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->mNameCardDo:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;)Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->mNameCardDo:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    return-object v0
.end method


# virtual methods
.method public getForwardTipInfo()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->mNameCardDo:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_trans_to_multiple_namecard_tip:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->mNameCardDo:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->mNameCardDo:Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method public send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 46
    .local v0, "mMessageSender":Ldiz;
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;

    move-result-object v1

    .line 47
    .local v1, "textSender":Ldiz;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;->getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/NameCardForwardHandler;Ldiz;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
