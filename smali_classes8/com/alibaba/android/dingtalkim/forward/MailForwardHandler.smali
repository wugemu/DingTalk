.class public Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "MailForwardHandler.java"


# instance fields
.field private volatile mDestroy:Z

.field private mMailAccountName:Ljava/lang/String;

.field private mMailServerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mMailAccountName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mMailServerId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mDestroy:Z

    return v0
.end method


# virtual methods
.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mDestroy:Z

    .line 70
    return-void
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mMailAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mMailServerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "showConfirm"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    new-instance v6, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;)V

    .line 64
    .local v6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mMailAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->mMailServerId:Ljava/lang/String;

    iget-object v4, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    move-object v1, p1

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcma;)V

    .line 65
    return-void
.end method
