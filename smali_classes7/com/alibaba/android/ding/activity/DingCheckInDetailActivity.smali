.class public Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingCheckInDetailActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private h:Landroid/support/v4/view/ViewPager$d;

.field private i:Ljava/lang/String;

.field private j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private k:Laxt;

.field private l:I

.field private m:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->l:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)Laxt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 47
    .line 3217
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v0, :cond_0

    .line 3218
    const-string/jumbo v0, "[DingCheckInDetailPage]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->finish()V

    .line 3234
    :goto_0
    return-void

    .line 3223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3824
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->J:Lckm;

    invoke-virtual {v0}, Lckm;->a()Ljava/lang/Object;

    move-result-object v0

    .line 3224
    instance-of v1, v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    if-nez v1, :cond_1

    .line 3225
    const-string/jumbo v0, "[DingCheckInDetailPage]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "eventsWrapperModel is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->finish()V

    goto :goto_0

    .line 3230
    :cond_1
    check-cast v0, Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;

    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/idl/DingEventsWrapperModel;)Lcom/alibaba/android/ding/base/objects/idl/EventModel;

    move-result-object v1

    .line 3231
    if-nez v1, :cond_2

    .line 3232
    const-string/jumbo v0, "[DingCheckInDetailPage]init failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "main event is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->finish()V

    goto :goto_0

    .line 3237
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    if-nez v0, :cond_3

    .line 3238
    new-instance v0, Laxt;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/idl/EventModel;->startTime:Ljava/lang/Long;

    .line 3239
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3240
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->i:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Laxt;-><init>(Landroid/content/Context;JLcn;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 3243
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setAdapter(Lgl;)V

    .line 3244
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 3245
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->l:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(I)V

    .line 3246
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->l:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    .line 4276
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    if-nez v0, :cond_1

    .line 4277
    :cond_0
    :goto_0
    return-void

    .line 4280
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->M()I

    move-result v1

    .line 4281
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->N()I

    move-result v0

    .line 4283
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 5086
    iget-object v2, v2, Laxt;->c:[Ljava/lang/String;

    .line 4283
    if-lez v0, :cond_2

    new-array v3, v9, [Ljava/lang/String;

    sget v4, Laxp$i;->dt_ding_not_signed_member_title:I

    .line 4285
    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string/jumbo v4, "("

    aput-object v4, v3, v6

    .line 4286
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const-string/jumbo v0, ")"

    aput-object v0, v3, v8

    .line 4284
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4287
    :goto_1
    aput-object v0, v2, v5

    .line 4289
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 6086
    iget-object v2, v0, Laxt;->c:[Ljava/lang/String;

    .line 4289
    if-lez v1, :cond_3

    new-array v0, v9, [Ljava/lang/String;

    sget v3, Laxp$i;->dt_ding_signed_member_title:I

    .line 4291
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const-string/jumbo v3, "("

    aput-object v3, v0, v6

    .line 4292
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, ")"

    aput-object v1, v0, v8

    .line 4290
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4293
    :goto_2
    aput-object v0, v2, v6

    .line 4295
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 7086
    iget-object v1, v1, Laxt;->c:[Ljava/lang/String;

    .line 4295
    aget-object v1, v1, v5

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 4296
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 8086
    iget-object v1, v1, Laxt;->c:[Ljava/lang/String;

    .line 4296
    aget-object v1, v1, v6

    invoke-virtual {v0, v6, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 4284
    :cond_2
    sget v0, Laxp$i;->dt_ding_not_signed_member_title:I

    .line 4287
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4290
    :cond_3
    sget v0, Laxp$i;->dt_ding_signed_member_title:I

    .line 4293
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic g(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 47
    .line 8300
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    .line 8301
    if-eqz v0, :cond_2

    .line 8302
    invoke-static {}, Lbkk;->a()Ljava/util/List;

    move-result-object v0

    .line 8303
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8304
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_meeting_view_qr_code:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8309
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8310
    :goto_1
    return-void

    .line 8306
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_meeting_look_check_in_qr_code_or_face_device:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 8311
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 47
    .line 9250
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 9254
    new-instance v0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->m:Lckm$a;

    .line 9265
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->m:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->A(Lckm$a;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    .line 9316
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    if-eqz v0, :cond_1

    .line 9319
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 10078
    iget-object v0, v0, Laxt;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 9319
    if-eqz v0, :cond_0

    .line 9320
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 11078
    iget-object v3, v0, Laxt;->a:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 9320
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->l:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Z)V

    .line 9322
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 11082
    iget-object v0, v0, Laxt;->b:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 9322
    if-eqz v0, :cond_1

    .line 9323
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->k:Laxt;

    .line 12082
    iget-object v0, v0, Laxt;->b:Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;

    .line 9323
    iget v3, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->l:I

    if-eq v3, v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingCheckInStatusFragment;->a(Z)V

    .line 47
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 9320
    goto :goto_0

    :cond_3
    move v1, v2

    .line 9323
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v0, Laxp$g;->ding_activity_confirm_complete_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->setContentView(I)V

    .line 1105
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "ding_id"

    invoke-static {v0, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->i:Ljava/lang/String;

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "show_ding_index"

    invoke-static {v0, v2, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->l:I

    .line 1110
    sget v0, Laxp$i;->dt_ding_meeting_attendance_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->setTitle(I)V

    .line 1112
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Laxp$g;->ding_actbar_check_in_detail:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->a:Landroid/view/View;

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->a:Landroid/view/View;

    sget v2, Laxp$f;->menu_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1114
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->a:Landroid/view/View;

    sget v1, Laxp$f;->tv_check_in_export:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->e:Landroid/widget/TextView;

    .line 1117
    sget v0, Laxp$f;->view_pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 1118
    sget v0, Laxp$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 1119
    sget v0, Laxp$f;->rl_view_qr_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->c:Landroid/widget/RelativeLayout;

    .line 1120
    sget v0, Laxp$f;->tv_view_qr_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->d:Landroid/widget/TextView;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    sget v1, Lcjj;->a:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setPageMargin(I)V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    sget v1, Laxp$e;->default_divider:I

    invoke-static {p0, v1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setOffscreenPageLimit(I)V

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcqb;->a(Landroid/support/v4/view/ViewPager;I)V

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1177
    const-string/jumbo v0, "[DingCheckInDetailPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->finish()V

    .line 2129
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2135
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2142
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2149
    new-instance v0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->h:Landroid/support/v4/view/ViewPager$d;

    .line 2172
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->h:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 84
    return-void

    .line 1114
    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1181
    :cond_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->i:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    const-class v3, Lcma;

    .line 1182
    invoke-static {v0, v3, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1181
    invoke-virtual {v1, v2, v0}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x1

    sget v4, Laxp$i;->sure:I

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 95
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->a:Landroid/view/View;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 96
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 98
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    .line 99
    .local v1, "tvExportVisible":Z
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 99
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 88
    .line 2269
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 2272
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->j:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->m:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->B(Lckm$a;)V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 90
    return-void
.end method
