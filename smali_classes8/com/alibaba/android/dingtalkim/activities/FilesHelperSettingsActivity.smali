.class public Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "FilesHelperSettingsActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    .prologue
    .line 21
    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    .line 1068
    sget v0, Lctk$f;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 1069
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1070
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;Landroid/widget/ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_0
    return-void

    .line 1069
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

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
    .line 30
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v1, Lctk$g;->layout_fileshelper_settings:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "inIntent":Landroid/content/Intent;
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->a:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->finish()V

    goto :goto_0
.end method
