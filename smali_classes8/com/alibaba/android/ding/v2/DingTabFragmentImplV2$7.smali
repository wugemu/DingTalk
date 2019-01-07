.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v10, 0xff

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 265
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .line 266
    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .line 267
    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 268
    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v6, 0x1020002

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v5, v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 269
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Laxp$g;->ding_ll_fab:I

    iget-object v7, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v7}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Landroid/view/View;)Landroid/view/View;

    .line 270
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->fab_iv_bg:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    .line 271
    .local v0, "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    const/16 v4, 0xf2

    invoke-static {v4, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setBgColor(I)V

    .line 272
    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;

    move-result-object v4

    sget v6, Laxp$f;->menu:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v5, v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .line 273
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setViewBg(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V

    .line 274
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$1;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setListener(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;)V

    .line 295
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    sget v6, Laxp$i;->dt_ding_filter_ding:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setLabelText(Ljava/lang/String;)V

    .line 297
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_meeting_schedule:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 298
    .local v3, "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$2;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_calendar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 309
    .local v1, "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$3;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_task:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$4;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_meeting:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 336
    .local v2, "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$5;-><init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;)V

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-static {}, Lbju;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    invoke-virtual {v3, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 348
    invoke-virtual {v1, v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 349
    invoke-virtual {v2, v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 355
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->j(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v5}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->k(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 360
    .end local v0    # "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    .end local v1    # "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v2    # "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v3    # "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getUserVisibleHint()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;Z)V

    .line 363
    :cond_1
    return-void

    .line 351
    .restart local v0    # "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    .restart local v1    # "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .restart local v2    # "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .restart local v3    # "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    :cond_2
    invoke-virtual {v3, v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 352
    invoke-virtual {v1, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 353
    invoke-virtual {v2, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    goto :goto_0
.end method
