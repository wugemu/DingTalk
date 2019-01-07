.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

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

    .line 237
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .line 238
    invoke-virtual {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    .line 239
    invoke-virtual {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 240
    iget-object v5, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v6, 0x1020002

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v5, v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 241
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    iget-object v5, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Laxp$g;->ding_ll_fab:I

    iget-object v7, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v7}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->k(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Landroid/view/View;)Landroid/view/View;

    .line 242
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->fab_iv_bg:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    .line 243
    .local v0, "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    const/16 v4, 0xf2

    invoke-static {v4, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setBgColor(I)V

    .line 244
    iget-object v5, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;

    move-result-object v4

    sget v6, Laxp$f;->menu:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v5, v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .line 245
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setViewBg(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V

    .line 246
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setListener(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;)V

    .line 270
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    sget v6, Laxp$i;->dt_ding_filter_ding:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setLabelText(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_meeting_schedule:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 273
    .local v3, "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$2;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_calendar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 284
    .local v1, "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$3;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_task:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$4;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_meeting:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 308
    .local v2, "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$5;-><init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V

    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-static {}, Lbju;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    invoke-virtual {v3, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 320
    invoke-virtual {v1, v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 321
    invoke-virtual {v2, v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 327
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->k(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v5}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->l(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 332
    .end local v0    # "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    .end local v1    # "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v2    # "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v3    # "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getUserVisibleHint()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    iget-object v4, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->a(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;Z)V

    .line 335
    :cond_1
    return-void

    .line 323
    .restart local v0    # "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    .restart local v1    # "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .restart local v2    # "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .restart local v3    # "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    :cond_2
    invoke-virtual {v3, v9}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 324
    invoke-virtual {v1, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    .line 325
    invoke-virtual {v2, v8}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setVisibility(I)V

    goto :goto_0
.end method
