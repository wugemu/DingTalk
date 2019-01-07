.class public Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.source "EmotionSendForwardHandler.java"


# instance fields
.field private mEmotionObjectWrapper:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;)V
    .locals 0
    .param p1, "emotionObjectWrapper"    # Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->mEmotionObjectWrapper:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;)Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->mEmotionObjectWrapper:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    return-object v0
.end method


# virtual methods
.method public getForwardTipInfo()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_trans_to_multiple_emotion:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->mEmotionObjectWrapper:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->mEmotionObjectWrapper:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;->getEmotionPackageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_1
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
    .line 52
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 53
    .local v0, "chatMessageSender":Ldiz;
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;

    move-result-object v1

    .line 54
    .local v1, "textSender":Ldiz;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;->getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/EmotionSendForwardHandler;Ldiz;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
