.class public Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "BirthConversationSettingsActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;

    .prologue
    .line 28
    .line 2067
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 2068
    sget v0, Lctk$f;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 2069
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2070
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2078
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 2079
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2099
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 28
    :cond_0
    return-void

    .line 2069
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lctk$g;->layout_birth_conversation_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->setContentView(I)V

    .line 39
    sget v0, Lctk$f;->aiv_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 40
    sget v0, Lctk$f;->tv_username:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;->d:Landroid/widget/TextView;

    .line 41
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BirthConversationSettingsActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 1509
    .local v1, "callback":Lcom/alibaba/wukong/Callback;
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-array v6, v5, [Ljava/lang/Long;

    const/4 v3, 0x0

    const-wide/32 v8, 0xcd2e306

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v3

    move-object v3, v2

    move-object v4, v2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 64
    return-void
.end method
