.class public Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "SendActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:I

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private e:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;

.field private f:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

.field private g:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

.field private h:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

.field private i:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

.field private j:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

.field private final k:[I

.field private final l:[I

.field private final m:[I

.field private n:I

.field private o:Z

.field private p:I

.field private q:[J

.field private r:D

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private final x:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcaj$f;->dt_redenvelop_goodtime:I

    aput v1, v0, v2

    sget v1, Lcaj$f;->redpackets_random:I

    aput v1, v0, v3

    sget v1, Lcaj$f;->redpackets_oriented:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->k:[I

    .line 69
    new-array v0, v4, [I

    sget v1, Lcaj$f;->redpackets_random:I

    aput v1, v0, v2

    sget v1, Lcaj$f;->redpackets_oriented:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->l:[I

    .line 70
    new-array v0, v3, [I

    sget v1, Lcaj$f;->redpackets_normal:I

    aput v1, v0, v2

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->m:[I

    .line 74
    iput v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->q:[J

    .line 305
    iput v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->x:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->j:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->h:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->i:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->h:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendNormalRedPacketsFragment;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->i:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsGuideFragment;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->q:[J

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->r:D

    return-wide v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->g:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendOrientedRedPacketsFragment;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->f:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendRandomRedPacketsFragment;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->j:Lcom/alibaba/android/dingtalk/redpackets/fragments/SendLuckyTimeRedPacketsFragment;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->k:[I

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->l:[I

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->m:[I

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 357
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onBackPressed()V

    .line 358
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 207
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    sget v0, Lcaj$e;->activity_send_redpackets:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->setContentView(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lcaj$f;->redpackets_send:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_redpacket_PAGE_INDEX"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p:I

    .line 214
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p:I

    if-gez v0, :cond_1

    .line 215
    const-string/jumbo v0, "send_enterprise_page_index"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p:I

    .line 217
    :cond_1
    sget v0, Lcaj$d;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 218
    sget v0, Lcaj$d;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcaj$c;->default_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "source_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b:I

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "receivers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->q:[J

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "money"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->r:D

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_msgs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->u:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "thirdparty_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->t:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "thirdparty_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->v:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent_key_callback_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->w:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cong"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->s:Ljava/lang/String;

    .line 234
    iput v5, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    .line 235
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p:I

    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 237
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p:I

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 241
    iput v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    .line 252
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->e:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;

    if-nez v0, :cond_4

    .line 253
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->e:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->e:Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v1, Lcaj$c;->redpackets_tab_text_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorSeletor(I)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 288
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 290
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lcaj$f;->redpackets_normal:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 303
    :cond_5
    :goto_1
    return-void

    .line 243
    :cond_6
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->b:I

    if-ne v0, v3, :cond_7

    .line 244
    iput v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    .line 247
    :cond_7
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->o:Z

    goto :goto_0

    .line 294
    :cond_8
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->n:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lcaj$f;->redpackets_oriented:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_1

    .line 301
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->p:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 309
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.menu.MenuBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1334
    const-string/jumbo v2, "setOptionalIconsVisible"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1335
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1338
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    sget v1, Lcaj$f;->redpackets_menu_help:I

    invoke-interface {p1, v6, v7, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 312
    .local v0, "helpIcon":Landroid/view/MenuItem;
    sget v1, Lcaj$c;->redpackets_menu_help:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 313
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 315
    .end local v0    # "helpIcon":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 1340
    :catch_0
    move-exception v1

    .line 1341
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onDestroy()V

    .line 372
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 347
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_redpackets"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 352
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onPause()V

    .line 363
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/SendActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 365
    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 367
    :cond_0
    return-void
.end method
