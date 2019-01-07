.class public Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "MemberSessionSettingsActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    .prologue
    .line 27
    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    .line 1097
    sget v0, Lctk$f;->shopping_conv_logo_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->c:Landroid/widget/ImageView;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->c:Landroid/widget/ImageView;

    const-string/jumbo v2, "https://gw.alicdn.com/mt/TB11Jihub9YBuNjy0FgXXcxcXXa-96-96.png"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1083
    sget v0, Lctk$f;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 1084
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1085
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_0
    return-void

    .line 1084
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v2, Lctk$g;->activity_layout_member_shopping_settings:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->setContentView(I)V

    .line 41
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "inIntent":Landroid/content/Intent;
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->a:Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;)V

    .line 71
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 74
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :cond_0
    const-class v2, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 78
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->finish()V

    goto :goto_0
.end method
