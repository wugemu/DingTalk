.class public Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.source "MiniAppForwardHandler.java"


# instance fields
.field private mConversation:Lcom/alibaba/wukong/im/Conversation;

.field private mMiniAppDo:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;)V
    .locals 0
    .param p1, "miniAppDo"    # Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;->mMiniAppDo:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;)Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;->mMiniAppDo:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    return-object v0
.end method


# virtual methods
.method public getForwardTipInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 41
    return-void
.end method

.method protected onShareComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    .line 90
    :cond_0
    return-void
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;->mMiniAppDo:Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
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
    .line 53
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 54
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 55
    .local v0, "mMessageSender":Ldiz;
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;->getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;

    move-result-object v1

    .line 56
    .local v1, "textSender":Ldiz;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;->getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/MiniAppForwardHandler;Ldiz;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
