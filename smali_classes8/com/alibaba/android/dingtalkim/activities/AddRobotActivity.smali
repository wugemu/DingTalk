.class public Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "AddRobotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lctl$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

.field private j:Ljava/lang/String;

.field private k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

.field private l:Lcir;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/widget/ToggleButton;

.field private o:Lctl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->m:Ljava/util/Map;

    .line 505
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lctl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->o:Lctl;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Landroid/text/Editable;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 86
    .line 3359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3360
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    .line 3361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 86
    .line 3423
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_im_robot_created"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3424
    const-string/jumbo v1, "intent_key_robot_object"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3425
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3426
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 3427
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 86
    return-void
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
    .local p2, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    :goto_0
    return-void

    .line 618
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2608
    .local v1, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_3

    .line 2609
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "conversationId":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 621
    const-string/jumbo v3, "ding_group_id"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v3, :cond_2

    .line 624
    const-string/jumbo v3, "bots_template_id"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    invoke-interface {v3, v2, p1, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .end local v0    # "conversationId":Ljava/lang/String;
    :cond_3
    move-object v0, v2

    .line 2611
    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    const-wide/32 v4, 0x13880

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v0, v1

    .line 197
    goto :goto_0

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->function:I

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->isIncoming(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_0
    const-string/jumbo v0, "im_bot_adding_groupset_confirm_click"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 233
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->c:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_robot_weather_please_select:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method private g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 366
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mCid:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mName:Ljava/lang/String;

    .line 369
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V

    .line 415
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->showLoadingDialog()V

    .line 416
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 418
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    .line 419
    invoke-interface {v1, v0, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 416
    invoke-interface {v2, v3, v1}, Ldxu;->a(Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;Lcma;)V

    .line 420
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->showLoadingDialog()V

    .line 466
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;)V
    .locals 0
    .param p1, "updateBotObject"    # Lcom/alibaba/android/dingtalkim/base/model/UpdateBotObject;

    .prologue
    .line 482
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 502
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->f()V

    .line 503
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 486
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mIcon:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "regionKey"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->m:Ljava/util/Map;

    const-string/jumbo v1, "locationId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->dismissLoadingDialog()V

    .line 471
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 475
    sget v0, Lctk$f;->region_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2431
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->l:Lcir;

    if-nez v0, :cond_0

    .line 2432
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->l:Lcir;

    .line 2454
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->l:Lcir;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 477
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->btn_add_robot_next:I

    if-ne v3, v4, :cond_8

    .line 238
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    sget v3, Lctk$i;->dt_robot_error_tip_fill_name:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 260
    :goto_0
    const-string/jumbo v3, "im_bot_adding_nextbtn_click"

    invoke-direct {p0, v3, v9}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 309
    :cond_0
    :goto_1
    return-void

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v3, :cond_2

    .line 241
    sget v3, Lctk$i;->dt_robot_error_tip_choose_group:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mIcon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    sget v3, Lctk$i;->dt_robot_error_tip_choose_avatar:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    const-wide/32 v6, 0x13880

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 246
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->m:Ljava/util/Map;

    const-string/jumbo v4, "locationId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    sget v3, Lctk$i;->dt_robot_error_tip_choose_city:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->m:Ljava/util/Map;

    const-string/jumbo v4, "cronTimeHour"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->m:Ljava/util/Map;

    const-string/jumbo v4, "cronTimeMinute"

    .line 251
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 250
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 252
    :cond_5
    sget v3, Lctk$i;->dt_robot_error_tip_choose_push_time:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 254
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->m:Ljava/util/Map;

    iput-object v4, v3, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mExtension:Ljava/util/Map;

    .line 258
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->g()V

    goto :goto_0

    .line 261
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->group_selector:I

    if-ne v3, v4, :cond_9

    .line 262
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v3, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/group_conversation.html"

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V

    .line 263
    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 277
    const-string/jumbo v3, "im_bot_adding_groupset_click"

    invoke-direct {p0, v3, v9}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 279
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->robot_name:I

    if-ne v3, v4, :cond_b

    .line 1312
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1313
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1314
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1315
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    :cond_a
    sget v4, Lctk$i;->dt_robot_add_recieve_group_placeholder:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 1318
    new-array v4, v8, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    .line 1320
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1321
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1322
    sget v5, Lctk$i;->dt_robot_add_robot_name:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1323
    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1324
    sget v5, Lctk$i;->cancel:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1325
    sget v5, Lctk$i;->sure:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$5;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1332
    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 1334
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1335
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1336
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;

    invoke-direct {v5, p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1353
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1354
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 281
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->region_selector:I

    if-ne v3, v4, :cond_c

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "region_data"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->o:Lctl;

    .line 2321
    iget-object v4, v4, Lctl;->c:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 283
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 285
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->t(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 286
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lctk$f;->push_time_selector:I

    if-ne v3, v4, :cond_0

    .line 287
    new-instance v2, Landroid/widget/TimePicker;

    invoke-direct {v2, p0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    .line 288
    .local v2, "timePicker":Landroid/widget/TimePicker;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lctk$i;->dt_robot_weather_push_time:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 291
    sget v3, Lctk$i;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 292
    sget v3, Lctk$i;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$4;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Landroid/widget/TimePicker;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    sget v0, Lctk$g;->activity_add_robot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->setContentView(I)V

    .line 109
    new-instance v0, Lctl;

    invoke-direct {v0, p0, p0}, Lctl;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lctl$a;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->o:Lctl;

    .line 1117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "conversation"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_key_robot_template_object"

    .line 1120
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-nez v0, :cond_4

    .line 1123
    const-string/jumbo v0, "imrobot"

    sget-object v4, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "mBotTemplateModelObject is null"

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->finish()V

    .line 1134
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v0, :cond_3

    .line 1138
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1139
    sget v0, Lctk$f;->robot_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1140
    sget v0, Lctk$f;->group_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d:Landroid/view/View;

    .line 1141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d:Landroid/view/View;

    sget v4, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->c:Landroid/widget/TextView;

    .line 1143
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d:Landroid/view/View;

    sget v4, Lctk$f;->_uidic_forms_item_arrow:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    sget v0, Lctk$f;->tv_group_selector_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_7

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    sget v0, Lctk$f;->robot_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1150
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->canNameModify()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1151
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 1152
    sget v4, Lctk$f;->_uidic_forms_item_arrow:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    :cond_0
    sget v4, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->f:Landroid/widget/TextView;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->f()V

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->icon:Ljava/lang/String;

    invoke-virtual {v0, v8, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->canIconModify()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setClickable(Z)V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    sget v0, Lctk$f;->icon_robot_avatar_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    :cond_2
    sget v0, Lctk$f;->region_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->g:Landroid/widget/TextView;

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    const-wide/32 v6, 0x13880

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    .line 1206
    sget v0, Lctk$f;->ll_weather_robot_setting_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    sget v0, Lctk$f;->push_time_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lctk$f;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->h:Landroid/widget/TextView;

    .line 1210
    sget v0, Lctk$f;->weather_warning_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lctk$f;->uidic_forms_item_toggle:I

    .line 1211
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->n:Landroid/widget/ToggleButton;

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->n:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->n:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->o:Lctl;

    invoke-virtual {v0}, Lctl;->b()V

    .line 1183
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    sget v0, Lctk$f;->btn_add_robot_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lctk$i;->dt_robot_add_finish_add:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 112
    :cond_3
    const-string/jumbo v0, "im_bot_adding_page_enter"

    invoke-direct {p0, v0, v8}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    return-void

    .line 1127
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->j:Ljava/lang/String;

    .line 1128
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mTemplateId:J

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->k:Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->i:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->icon:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mIcon:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 1143
    goto/16 :goto_1

    :cond_6
    move v0, v3

    .line 1144
    goto/16 :goto_2

    :cond_7
    move v0, v3

    .line 1146
    goto/16 :goto_3

    .line 1180
    :cond_8
    sget v0, Lctk$f;->ll_weather_robot_setting_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 460
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 461
    return-void
.end method
