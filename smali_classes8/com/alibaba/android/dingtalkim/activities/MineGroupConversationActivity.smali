.class public Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "MineGroupConversationActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$b;,
        Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 45
    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->c:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->d:I

    .line 48
    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->e:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->f:I

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->b:Ljava/util/List;

    .line 296
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;I)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;
    .param p1, "x1"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 42
    .line 3195
    if-nez p1, :cond_3

    .line 3196
    new-instance v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;-><init>()V

    .line 3197
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3198
    const-string/jumbo v2, "intent_key_menu_seed"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_menu_seed"

    invoke-virtual {v3, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3199
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "name_card_forward"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3200
    const-string/jumbo v2, "name_card_forward"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3202
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "msg_forward"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3203
    const-string/jumbo v2, "msg_forward"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3204
    const-string/jumbo v2, "message_id"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "message_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    :cond_1
    :goto_0
    const-string/jumbo v2, "intent_key_group_mode"

    sget-object v3, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->CREATE:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3209
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->setArguments(Landroid/os/Bundle;)V

    .line 3226
    :goto_1
    return-object v0

    .line 3205
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_share"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3206
    const-string/jumbo v2, "from_share"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3211
    :cond_3
    if-ne p1, v6, :cond_7

    .line 3212
    new-instance v0, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;-><init>()V

    .line 3213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3214
    const-string/jumbo v2, "intent_key_menu_seed"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "intent_key_menu_seed"

    invoke-virtual {v3, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3215
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "name_card_forward"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3216
    const-string/jumbo v2, "name_card_forward"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3218
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "msg_forward"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3219
    const-string/jumbo v2, "msg_forward"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3220
    const-string/jumbo v2, "message_id"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "message_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    :cond_5
    :goto_2
    const-string/jumbo v2, "intent_key_group_mode"

    sget-object v3, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->JOIN:Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2$MODE;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3225
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/mygroup/MineGroupConversationFragmentV2;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 3221
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_share"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3222
    const-string/jumbo v2, "from_share"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 3228
    :cond_7
    const/4 v0, 0x0

    .line 42
    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 42
    .line 2272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$b;

    .line 2274
    if-eqz v0, :cond_0

    .line 2275
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2272
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lctk$f;->view_search:I

    if-ne v0, v1, :cond_0

    .line 265
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Group:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;I)V

    .line 267
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lctk$g;->activity_group_conversation_new:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->setContentView(I)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->my_group_conversation:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1077
    sget v0, Lctk$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 1078
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;Lcn;)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1082
    sget v0, Lctk$f;->ll_tab_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1085
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->i:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->i:I

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$a;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->i:I

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->i:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->hideToolbarDivide()V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_share"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "msg_forward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "name_card_forward"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_contact_group_create_chat_title:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 238
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 240
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 245
    .line 1293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_show_invitation"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const-string/jumbo v2, "contact_group_create"

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->finish()V

    .line 256
    const/4 v1, 0x0

    .line 259
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->i:I

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onResume()V

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1094
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1095
    const-string/jumbo v1, "group_conversation"

    const-string/jumbo v4, "list_conversations"

    invoke-interface {v0, v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;Lcom/alibaba/doraemon/statistics/Statistics;J)V

    const-class v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v4, v0, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1146
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const/16 v2, 0x3e8

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->listLocalGroupConversations(Lcom/alibaba/wukong/Callback;I)V

    .line 71
    return-void
.end method
