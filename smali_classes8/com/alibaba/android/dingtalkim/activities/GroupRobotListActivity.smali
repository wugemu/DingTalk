.class public Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "GroupRobotListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/alibaba/wukong/im/Conversation;

.field private f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

.field private g:Z

.field private h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 465
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 252
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ldxu;->c(Ljava/lang/String;Lcma;)V

    .line 253
    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 268
    if-gtz p1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 271
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 54
    .line 3226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->c(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a(I)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Ljava/util/List;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    .line 5256
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->dismissLoadingDialog()V

    .line 5257
    if-eqz p2, :cond_0

    .line 5258
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c()V

    .line 5264
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->supportInvalidateOptionsMenu()V

    .line 54
    return-void

    .line 5260
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->g:Z

    .line 5261
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a(I)V

    .line 5262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 5261
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 54
    .line 4218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a(I)V

    .line 54
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjt;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOnlyOwnerModifiable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 291
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    .prologue
    .line 54
    .line 6369
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/robots_market.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 54
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 54
    .line 5211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->b(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 5213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a(I)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 322
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V

    .line 355
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {}, Ldxv;->a()Ldxu;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    .line 356
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    .line 357
    invoke-interface {v2, v0, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 355
    invoke-interface {v3, v4, v2}, Ldxu;->b(Ljava/lang/String;Lcma;)V

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 361
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    .restart local v1    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "ding_group_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "im_bot_botlist_addbtn_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 365
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    const/4 v4, 0x0

    .line 54
    .line 5394
    if-eqz p1, :cond_1

    .line 5395
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botTemplateModelObject:Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->globalBotUid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 5396
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;JLandroid/os/Bundle;)V

    .line 5401
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5402
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 5403
    const-string/jumbo v1, "ding_group_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5405
    :cond_0
    const-string/jumbo v1, "bots_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5406
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "im_bot_botlist_botcell_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    :cond_1
    return-void

    .line 5398
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 54
    .line 6384
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->isManageable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 6385
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {p0, p1, v0}, Ldip;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;Lcom/alibaba/wukong/im/Conversation;)V

    .line 6386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6387
    const-string/jumbo v1, "ding_group_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6388
    const-string/jumbo v1, "bots_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botUid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6389
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "im_bot_botlist_setbtn_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onAttachedToWindow()V

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->showLoadingDialog()V

    .line 2164
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$1;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v1, p0, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    .line 118
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a()V

    .line 3124
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3125
    const-string/jumbo v2, "intent_key_show_robot_guide"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3126
    const-string/jumbo v2, "intent_key_current_robot_count"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 3127
    :cond_0
    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/drobot?dd_nav_bgcolor=ff2E313D"

    .line 3144
    const-string/jumbo v1, ""

    .line 3145
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_1

    .line 3146
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 3147
    if-eqz v3, :cond_1

    .line 3148
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v3

    .line 3149
    if-eqz v3, :cond_1

    .line 3150
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/taobao/wireless/security/sdk/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3129
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3130
    const-string/jumbo v3, "robot_guide_ecid"

    invoke-static {v2, v3, v1}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3131
    if-eqz v0, :cond_3

    .line 3132
    const-string/jumbo v0, "robot_guide_finish"

    const-string/jumbo v2, "1"

    invoke-static {v1, v0, v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3139
    :goto_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    return-void

    .line 3135
    :cond_3
    const-string/jumbo v0, "robot_guide_finish"

    const-string/jumbo v2, "0"

    invoke-static {v1, v0, v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d()V

    .line 319
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v1, Lctk$g;->group_robot_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1158
    if-eqz v1, :cond_0

    .line 1159
    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->finish()V

    .line 86
    :goto_0
    return-void

    .line 1294
    :cond_1
    sget v1, Lctk$f;->rl_empty_page:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->a:Landroid/view/ViewGroup;

    .line 1295
    sget v1, Lctk$f;->tv_no_permission_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b:Landroid/widget/TextView;

    .line 1296
    sget v1, Lctk$f;->tv_add_robot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c:Landroid/widget/TextView;

    .line 1297
    sget v1, Lctk$f;->lv_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d:Landroid/widget/ListView;

    .line 1300
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c()V

    .line 2089
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-direct {v1, p0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    .line 2090
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->f:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 82
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .restart local v0    # "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ding_group_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "im_bot_botlist_page_enter"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->g:Z

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x0

    sget v2, Lctk$i;->action_add:I

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    .local v0, "addMenu":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 99
    .end local v0    # "addMenu":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 479
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->h:Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a()V

    .line 482
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->g:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d()V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
