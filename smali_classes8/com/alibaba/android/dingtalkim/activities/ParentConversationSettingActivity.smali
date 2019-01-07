.class public Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ParentConversationSettingActivity.java"


# instance fields
.field private a:Landroid/widget/ToggleButton;

.field private b:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->a:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lctk$g;->activity_parent_conversation_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->setContentView(I)V

    .line 44
    sget v0, Lctk$f;->conversation_setting_top:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->a:Landroid/widget/ToggleButton;

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "p_conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->a:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->a:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
