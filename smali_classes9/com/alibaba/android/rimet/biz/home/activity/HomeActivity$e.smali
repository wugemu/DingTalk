.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 3193
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3195
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->b:I

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3394
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->onPageScrollStateChanged(I)V

    .line 3396
    :cond_0
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->onPageScrolled(IFI)V

    .line 3202
    :cond_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 14
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3206
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3207
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->onPageSelected(I)V

    .line 3209
    :cond_0
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V

    .line 3210
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Landroid/content/Context;)V

    .line 3211
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->I(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3213
    const/4 v8, 0x4

    if-ne p1, v8, :cond_6

    .line 3214
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const v9, 0x7f1105bb

    invoke-virtual {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3219
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 3350
    :goto_1
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v8

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v8

    const/4 v9, 0x4

    if-gt v8, v9, :cond_1

    .line 3351
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3352
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 3353
    .local v3, "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    if-eqz v3, :cond_1

    .line 3354
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v10}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-interface {v8, v3, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3361
    .end local v3    # "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 3362
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->X(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 3363
    .restart local v3    # "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    if-eqz v3, :cond_2

    .line 3364
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, p1

    invoke-interface {v8, v3, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3369
    .end local v3    # "fragment":Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)I

    .line 3370
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v9

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_14

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Z)V

    .line 3371
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Y(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3373
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Z(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejq;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3374
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Z(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejq;

    move-result-object v9

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->getCurrentItem()I

    move-result v8

    if-nez v8, :cond_15

    const/4 v8, 0x1

    .line 5198
    :goto_3
    iput-boolean v8, v9, Lejq;->d:Z

    .line 5199
    invoke-virtual {v9}, Lejq;->b()V

    .line 3376
    :cond_3
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejp;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 3377
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->aa(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejp;

    move-result-object v9

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->u(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->getCurrentItem()I

    move-result v8

    if-nez v8, :cond_16

    const/4 v8, 0x1

    .line 5255
    :goto_4
    iput-boolean v8, v9, Lejp;->e:Z

    .line 5256
    if-eqz v8, :cond_17

    .line 5257
    invoke-virtual {v9}, Lejp;->a()V

    .line 3380
    :cond_4
    :goto_5
    iput p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->b:I

    .line 3382
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ab(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejr;

    move-result-object v9

    invoke-static {v8, p1, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;ILejr;)V

    .line 3383
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ab(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lejr;

    move-result-object v9

    invoke-static {v8, p1, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;ILejr;)V

    .line 3385
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v8

    const-class v9, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v8, v9}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 3386
    .local v6, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    if-eqz v6, :cond_5

    .line 3387
    invoke-virtual {v6, p1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->onHomeTabSeleceted(I)V

    .line 3389
    :cond_5
    return-void

    .line 3216
    .end local v6    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const v9, 0x7f1105bb

    invoke-virtual {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3221
    :pswitch_0
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V

    .line 3222
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->J(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3224
    iget v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->b:I

    if-eq p1, v8, :cond_7

    .line 3225
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, p1

    const-string/jumbo v10, "tab_chat_click"

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3228
    :cond_7
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->K(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3229
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3233
    :goto_6
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->N(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3234
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const v9, 0x7f1105c2

    invoke-virtual {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 3231
    :cond_8
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_6

    .line 3236
    :cond_9
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const v9, 0x7f1105c2

    invoke-virtual {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 3241
    :pswitch_1
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V

    .line 3242
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 3243
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->f()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_a

    .line 3244
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->O(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->a(Landroid/view/View;)V

    .line 3246
    :cond_a
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->s(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;

    invoke-static {}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->g()V

    .line 3248
    :cond_b
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto/16 :goto_1

    .line 3252
    :pswitch_2
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->P(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)I

    move-result v8

    if-gtz v8, :cond_c

    .line 3253
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const-string/jumbo v9, "showOperateOrgRedDot"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3254
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)I

    .line 3256
    :cond_c
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V

    .line 3257
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->Q(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3258
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->L(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3262
    :goto_7
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->R(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3263
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const v9, 0x7f1105cd

    invoke-virtual {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3267
    :goto_8
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, p1

    const-string/jumbo v10, "tab_contact_click"

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 3260
    :cond_d
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_7

    .line 3265
    :cond_e
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const v9, 0x7f1105cd

    invoke-virtual {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 3271
    :pswitch_3
    const/4 v0, 0x0

    .line 3272
    .local v0, "args":Ljava/util/Map;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v7

    .line 3273
    .local v7, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_f

    .line 3274
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v8

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 3276
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 3277
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "args":Ljava/util/Map;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3278
    .restart local v0    # "args":Ljava/util/Map;
    const-string/jumbo v8, "corpId"

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3282
    .end local v2    # "corpId":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, p1

    const-string/jumbo v10, "tab_oa_click"

    invoke-interface {v8, v9, v10, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3284
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    if-nez v8, :cond_10

    .line 3285
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {}, Lcom/alibaba/android/oa/fragment/OAFragment;->c()Lcom/alibaba/android/oa/fragment/OAFragment;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 3286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3287
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "need_default_header"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3288
    const-string/jumbo v8, "default_header_height"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3289
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3292
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_10
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->g()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3293
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->S(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3294
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v11}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->v(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lecw;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3299
    :goto_9
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->U(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3302
    :try_start_0
    const-string/jumbo v8, "oa"

    const-string/jumbo v9, ""

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "switchOA WEBVIEW_TAB orgIdFromIntent "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 3303
    invoke-static {v12}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3302
    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3308
    :goto_a
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_13

    .line 3309
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;J)V

    .line 3326
    :cond_11
    :goto_b
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->V(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3328
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->W(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3330
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v8

    const-class v9, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v8, v9}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->hpmCheckUpdate()V

    .line 3332
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/ads/base/models/AdsAlertStyleObject;)V

    .line 3334
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto/16 :goto_1

    .line 3296
    :cond_12
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3297
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->T(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_9

    .line 3311
    :cond_13
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v8

    const-string/jumbo v9, "switch_current_org_enable"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3312
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/android/oa/fragment/OAFragment;

    if-eqz v8, :cond_11

    .line 3313
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 4359
    iget-wide v4, v8, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 3314
    .local v4, "currentOrgId":J
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8, v4, v5}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;J)V

    .line 3317
    :try_start_1
    const-string/jumbo v8, "oa"

    const-string/jumbo v9, ""

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "orgId in onPageSelected: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 3318
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " orgIdFromIntent="

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v12}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3317
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v8

    goto/16 :goto_b

    .line 3339
    .end local v0    # "args":Ljava/util/Map;
    .end local v4    # "currentOrgId":J
    .end local v7    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :pswitch_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, p1

    const-string/jumbo v10, "mainpage_setting_click"

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3342
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;I)V

    .line 3344
    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$e;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v8}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->M(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto/16 :goto_1

    .line 3370
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3374
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 3377
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 5259
    :cond_17
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Lejp;->a(Z)V

    goto/16 :goto_5

    .restart local v0    # "args":Ljava/util/Map;
    .restart local v7    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :catch_1
    move-exception v8

    goto/16 :goto_a

    .line 3219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
