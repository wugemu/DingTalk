.class public Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "BurnChatIntroActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ldbw;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;Ldbw;)Ldbw;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;
    .param p1, "x1"    # Ldbw;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->b:Ldbw;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Ldbw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->b:Ldbw;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a:Ljava/lang/String;

    .line 40
    sget v0, Lctk$g;->burn_chat_intro_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->setContentView(I)V

    .line 41
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->b:Ldbw;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->b:Ldbw;

    invoke-virtual {v0}, Ldbw;->a()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->b:Ldbw;

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 122
    return-void
.end method
