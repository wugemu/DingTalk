.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

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

    .line 232
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    .line 233
    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    .line 234
    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v6, 0x1020002

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v5, v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 236
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Laxp$g;->ding_ll_fab:I

    iget-object v7, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v7}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->h(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;Landroid/view/View;)Landroid/view/View;

    .line 237
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->fab_iv_bg:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;

    .line 238
    .local v0, "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    const/16 v4, 0xf2

    invoke-static {v4, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->setBgColor(I)V

    .line 239
    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v4

    sget v6, Laxp$f;->menu:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v5, v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .line 240
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setViewBg(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;)V

    .line 241
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setListener(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;)V

    .line 265
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    sget v6, Laxp$i;->dt_ding_filter_ding:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setLabelText(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_meeting_schedule:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 268
    .local v3, "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_calendar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 281
    .local v1, "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$3;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_task:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$4;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v4

    sget v5, Laxp$f;->menu_create_meeting:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .line 308
    .local v2, "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    new-instance v4, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$5;-><init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V

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
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->h(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v5}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->i(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 332
    .end local v0    # "ivFabBg":Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    .end local v1    # "menuCreateCalendar":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v2    # "menuCreateMeeting":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    .end local v3    # "menuCreateMeetingSchedule":Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getUserVisibleHint()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->a(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;Z)V

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
