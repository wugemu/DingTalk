.class public Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "RemindForwardHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;
    }
.end annotation


# instance fields
.field private final mRemindForwardDelegate:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;)V
    .locals 0
    .param p1, "remindForwardDelegate"    # Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;->mRemindForwardDelegate:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    .line 29
    return-void
.end method


# virtual methods
.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 39
    :cond_0
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;->onFail(ILjava/lang/String;)V

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;->mRemindForwardDelegate:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    if-nez v1, :cond_3

    .line 49
    :cond_2
    :goto_0
    return-void

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_direct_uri"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler;->mRemindForwardDelegate:Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/forward/RemindForwardHandler$RemindForwarAtyLogic;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    goto :goto_0
.end method
