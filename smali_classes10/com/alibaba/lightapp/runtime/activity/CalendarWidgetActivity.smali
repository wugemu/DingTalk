.class public Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CalendarWidgetActivity.java"

# interfaces
.implements Lhoq$c;


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:I

.field private f:Lhen;

.field private g:Lhoq$b;

.field private h:I

.field private i:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

.field private j:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

.field private k:Ljava/lang/String;

.field private l:[I

.field private m:J

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->e:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->e:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->e:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a:Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 349
    new-instance v0, Lhor;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->l:[I

    invoke-direct {v0, v1, v2, p0}, Lhor;-><init>(Ljava/lang/String;[ILhoq$c;)V

    .line 350
    return-void
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->i:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->j:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->i:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-nez v1, :cond_1

    .line 255
    new-instance v0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;-><init>()V

    .line 257
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->g:Lhoq$b;

    if-nez v1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->c()V

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->g:Lhoq$b;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->m:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->a(Lhoq$b;IJ)V

    .line 263
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->i:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 267
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->i:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    return-object v1
.end method

.method public final a(I)V
    .locals 4
    .param p1, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    if-ne v0, v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$6;-><init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 312
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lhoq$b;

    .line 2345
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->g:Lhoq$b;

    .line 34
    return-void
.end method

.method public final b()Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 273
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->j:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-nez v3, :cond_0

    .line 274
    iget v3, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    packed-switch v3, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->j:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    return-object v3

    .line 276
    :pswitch_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;-><init>()V

    .line 277
    .local v0, "halfDayFragment":Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->m:J

    .line 2063
    iput v6, v0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->a:I

    .line 2065
    iput-wide v4, v0, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;->b:J

    .line 278
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->j:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto :goto_0

    .line 282
    .end local v0    # "halfDayFragment":Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetHalfDayFragment;
    :pswitch_2
    new-instance v2, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;-><init>()V

    .line 283
    .local v2, "timeFragment":Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->m:J

    .line 2082
    iput v6, v2, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->a:I

    .line 2084
    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;->b:J

    .line 284
    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->j:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto :goto_0

    .line 287
    .end local v2    # "timeFragment":Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetTimeFragment;
    :pswitch_3
    new-instance v1, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;-><init>()V

    .line 289
    .local v1, "monthFragment":Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->g:Lhoq$b;

    if-nez v3, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->c()V

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->g:Lhoq$b;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->n:J

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/alibaba/lightapp/runtime/fragment/CalendarWidgetMonthFragment;->a(Lhoq$b;IJ)V

    .line 294
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->j:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 114
    sget v0, Lhdn$a;->hold:I

    sget v1, Lhdn$a;->sw_none:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->overridePendingTransition(II)V

    .line 115
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->o:Z

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->o:Z

    .line 123
    sget v1, Lhdn$a;->calendar_widget_bottom_out:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 124
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v2, Lhdn$i;->calendar_widget_activity:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v2, "calendar_widget_style"

    iget v5, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    .line 79
    const-string/jumbo v2, "bizTypes"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->l:[I

    .line 81
    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 82
    const-string/jumbo v2, "defaultStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->m:J

    .line 83
    const-string/jumbo v2, "defaultEnd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->n:J

    .line 88
    :goto_0
    const-string/jumbo v2, "corpId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->k:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string/jumbo v2, "error: corpId is null"

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->finish()V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->c()V

    .line 1147
    sget v2, Lhdn$h;->caleandar_widget_root_view:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->d:Landroid/view/View;

    .line 1148
    sget v2, Lhdn$h;->caleandar_widget_view_pager:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a:Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    .line 1149
    sget v2, Lhdn$h;->caleandar_widget_indicator:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .line 1150
    sget v2, Lhdn$h;->caleandar_widget_sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->c:Landroid/widget/TextView;

    .line 1154
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a:Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->setPageMargin(I)V

    .line 1155
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a:Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    invoke-virtual {v2, v8}, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->setScrollble(Z)V

    .line 1156
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a:Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lhdn$g;->default_divider:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->f:Lhen;

    if-nez v2, :cond_1

    .line 1158
    new-instance v5, Lhen;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->getSupportFragmentManager()Lcn;

    move-result-object v6

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    if-ne v4, v2, :cond_3

    move v2, v3

    :goto_1
    invoke-direct {v5, p0, v6, v2}, Lhen;-><init>(Lhoq$c;Lcn;I)V

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->f:Lhen;

    .line 1161
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->a:Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->f:Lhen;

    invoke-virtual {v2, v5}, Lcom/alibaba/lightapp/runtime/adapter/SWJKViewPager;->setAdapter(Lgl;)V

    .line 1164
    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->h:I

    if-ne v4, v2, :cond_4

    .line 1165
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setSingleTabMode(Z)V

    .line 1167
    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "tab1"

    aput-object v3, v2, v8

    .line 1172
    :goto_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a([Ljava/lang/String;)V

    .line 1174
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setTabSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;)V

    .line 1197
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->c:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity$5;-><init>(Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v2, Lhdn$a;->calendar_widget_bottom_in:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 106
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->d:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void

    .line 85
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    const-string/jumbo v2, "default"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/lightapp/runtime/activity/CalendarWidgetActivity;->m:J

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 1158
    goto :goto_1

    .line 1169
    :cond_4
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "tab1"

    aput-object v4, v2, v8

    const-string/jumbo v4, "tab2"

    aput-object v4, v2, v3

    goto :goto_2
.end method
