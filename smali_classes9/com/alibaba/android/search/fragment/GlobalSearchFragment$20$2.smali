.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a(Lcom/alibaba/android/search/SearchGroupType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/SearchGroupType;

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 929
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 995
    :goto_0
    return-void

    .line 933
    :cond_0
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 934
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Lerw$a;->d(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    if-eqz v2, :cond_1

    .line 936
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/search/search_more.html"

    new-instance v4, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 951
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/SearchGroupType;

    .line 953
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    invoke-interface {v2}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    .line 954
    .local v0, "lastType":Lcom/alibaba/android/search/SearchGroupType;
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    invoke-interface {v2, v0}, Lerw$a;->b(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v4

    .line 2884
    if-eqz v0, :cond_2

    .line 2888
    iget-object v2, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    iget-object v5, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    invoke-virtual {v5, v0}, Lemy;->a(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a(I)Landroid/view/View;

    move-result-object v2

    .line 2889
    if-eqz v2, :cond_2

    .line 2893
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lemy$a;

    .line 2894
    if-eqz v2, :cond_2

    .line 2898
    iget-object v5, v2, Lemy$a;->c:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2899
    iget-object v5, v2, Lemy$a;->d:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2900
    iget-object v5, v2, Lemy$a;->a:Landroid/widget/TextView;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lemt$b;->ui_common_tab_bar_level2_inactive_bg_color:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2901
    iget-object v3, v2, Lemy$a;->a:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2903
    if-gtz v4, :cond_9

    .line 2904
    iget-object v2, v2, Lemy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 3860
    iget-object v4, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v4, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/SearchGroupType;

    .line 3862
    if-eqz v2, :cond_3

    .line 3866
    iget-object v4, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    iget-object v5, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    invoke-virtual {v5, v2}, Lemy;->a(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a(I)Landroid/view/View;

    move-result-object v2

    .line 3867
    if-eqz v2, :cond_3

    .line 3871
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lemy$a;

    .line 3872
    if-eqz v2, :cond_3

    .line 3876
    iget-object v4, v2, Lemy$a;->c:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3877
    iget-object v4, v2, Lemy$a;->d:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3878
    iget-object v4, v2, Lemy$a;->a:Landroid/widget/TextView;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lemt$b;->ui_common_tab_bar_active_fg_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3879
    iget-object v2, v2, Lemy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 956
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v2, v3, v8}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a(Lcom/alibaba/android/search/SearchGroupType;Z)V

    .line 957
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    .line 4816
    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    .line 957
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v3, v4}, Lerw$a;->d(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b(I)V

    .line 958
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    .line 5816
    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    .line 958
    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 6143
    iput-object v3, v2, Lemy;->c:Lcom/alibaba/android/search/SearchGroupType;

    .line 959
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Lerw$a;->a(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 962
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v2

    if-nez v2, :cond_4

    .line 963
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView;->a()V

    .line 966
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 967
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    invoke-interface {v2}, Lerk$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v2, v3, :cond_6

    .line 968
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 969
    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v4, v4, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    .line 6483
    .local v1, "resultRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    iput v9, v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    .line 971
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    .end local v1    # "resultRender":Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->i(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$b;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v3

    invoke-interface {v3}, Lerk$a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lerk$b;->a(Ljava/util/List;)V

    .line 977
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v2, v3, :cond_b

    .line 978
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    invoke-interface {v2, v8}, Lerk$a;->a(Z)V

    .line 979
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    invoke-interface {v2}, Lerk$a;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 980
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/SearchGroupType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lerk$a;->c(Ljava/lang/String;)V

    .line 981
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v8}, Lerk$a;->a(Ljava/lang/String;Z)V

    .line 988
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->a:Lcom/alibaba/android/search/SearchGroupType;

    sget-object v3, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    if-ne v2, v3, :cond_8

    .line 989
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lere$a;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 990
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lere$a;

    move-result-object v2

    invoke-interface {v2}, Lere$a;->r()V

    .line 994
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->k(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    goto/16 :goto_0

    .line 2906
    :cond_9
    const-string/jumbo v3, "("

    .line 2907
    const/16 v5, 0x63

    if-le v4, v5, :cond_a

    .line 2908
    new-array v4, v9, [Ljava/lang/String;

    aput-object v3, v4, v7

    const-string/jumbo v3, "99+"

    aput-object v3, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2912
    :goto_3
    new-array v4, v9, [Ljava/lang/String;

    aput-object v3, v4, v7

    const-string/jumbo v3, ")"

    aput-object v3, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2913
    iget-object v4, v2, Lemy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2914
    iget-object v2, v2, Lemy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2910
    :cond_a
    new-array v5, v9, [Ljava/lang/String;

    aput-object v3, v5, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 984
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;

    iget-object v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v2

    invoke-interface {v2, v7}, Lerk$a;->a(Z)V

    goto :goto_2
.end method
