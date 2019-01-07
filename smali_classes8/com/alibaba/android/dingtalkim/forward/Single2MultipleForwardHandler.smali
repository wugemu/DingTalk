.class public abstract Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "Single2MultipleForwardHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected final share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 24
    if-nez p1, :cond_1

    .line 25
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->onFail(ILjava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {p2}, Ldhy;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v0

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->preCheckPermissionBeforeForward(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Lcma;)V

    goto :goto_0
.end method
