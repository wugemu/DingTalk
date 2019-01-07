.class public Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "AddRobotCompleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

.field private b:J

.field private c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    return-object p1
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x438

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v0, :cond_2

    .line 88
    sget v0, Lctk$f;->robot_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget v0, Lctk$f;->tv_robot_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2165
    const-string/jumbo v0, ""

    .line 2168
    :try_start_0
    const-string/jumbo v1, "@lALOkYNql80C280EHQ"

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v2

    .line 2169
    if-eqz v2, :cond_0

    .line 2170
    const-string/jumbo v0, "@lALOkYNql80C280EHQ"

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2176
    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 2177
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 2178
    :cond_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    .line 2179
    invoke-virtual {v1, v0, v3, v3}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2183
    :goto_0
    sget v0, Lctk$f;->iv_pc_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2185
    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$2;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;Lcom/laiwang/protocol/media/MediaId;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 2173
    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "pageEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 247
    .local p2, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3236
    .local v1, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3237
    if-eqz v2, :cond_3

    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3238
    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 3239
    instance-of v3, v2, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_3

    .line 3240
    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "conversationId":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    const-string/jumbo v2, "ding_group_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v2, :cond_2

    .line 256
    const-string/jumbo v2, "bots_template_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v2, "bots_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 3243
    .end local v0    # "conversationId":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a()V

    return-void
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onAttachedToWindow()V

    .line 114
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 3124
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->showLoadingDialog()V

    .line 3125
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;)V

    .line 3148
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->b:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3149
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    .line 3150
    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3148
    invoke-interface {v2, v4, v5, v0}, Ldxu;->b(JLcma;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->setting_qa:I

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->mobileGuideURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->mobileGuideURL:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    const-string/jumbo v0, "im_bot_adding_finish_faqlink_click"

    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v0, Lctk$g;->activity_add_robot_complete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->setContentView(I)V

    .line 1097
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_robot_object"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->b:J

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2082
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2083
    sget v0, Lctk$f;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->c:Landroid/widget/LinearLayout;

    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a()V

    .line 78
    :goto_1
    const-string/jumbo v0, "im_bot_adding_finish_page_enter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    return-void

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "botId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->b:J

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    if-nez v1, :cond_1

    .line 212
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 217
    :goto_0
    return v1

    .line 215
    :cond_1
    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_robot_menu_add_finished:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 216
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 217
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 223
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->cid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a:Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->cid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 232
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->finish()V

    goto :goto_0

    .line 232
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
