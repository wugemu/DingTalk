.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$a;
.super Lcmr;
.source "MineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Lcmr;-><init>()V

    .line 855
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z
    .locals 5
    .param p1, "customThemeObject"    # Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 859
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b:Lfub;

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b:Lfub;

    .line 1225
    iget-object v3, v1, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v3}, Lcom/alibaba/android/user/namecard/guide/GuideView;->removeAllViews()V

    .line 1226
    iget-object v3, v1, Lfub;->a:Landroid/view/ViewGroup;

    iget-object v4, v1, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1227
    iget-object v3, v1, Lfub;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1228
    invoke-virtual {v1}, Lfub;->a()V

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->k(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 917
    :goto_0
    return v1

    .line 865
    :cond_2
    const/4 v0, 0x0

    .line 866
    .local v0, "color":I
    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v1, :cond_8

    .line 867
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgImageValue:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 868
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgImageValue:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_3

    .line 870
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 871
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getStatusBarHeight()I

    move-result v1

    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 872
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getStatusBarHeight()I

    move-result v1

    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 907
    :cond_3
    :goto_1
    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    if-eqz v1, :cond_a

    .line 908
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v0, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    .line 916
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->k(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 917
    const/4 v1, 0x1

    goto :goto_0

    .line 875
    :cond_5
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    if-eqz v1, :cond_6

    .line 876
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v3, v3, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->bgColorValue:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 877
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_3

    .line 878
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 880
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 884
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 885
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_content_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 887
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_3

    .line 888
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 889
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 890
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 896
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 897
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_content_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 900
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_3

    .line 901
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isImmersiveStatusBarInitSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 903
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->j(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 911
    :cond_a
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 912
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$a;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_2
.end method
