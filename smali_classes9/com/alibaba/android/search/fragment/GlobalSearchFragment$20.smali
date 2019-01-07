.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Lerw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

.field b:Lemy;

.field final synthetic c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 8
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1124
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->y(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1125
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 1126
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1127
    const/4 v1, 0x0

    .line 1128
    .local v1, "iSearchChannel":Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    if-eqz v2, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .end local v1    # "iSearchChannel":Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    check-cast v1, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;

    .line 1131
    .restart local v1    # "iSearchChannel":Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    new-instance v3, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    invoke-direct {v3, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;)V

    invoke-static {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    .line 1132
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 1133
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v3

    .line 6668
    iput-object v3, v2, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->a:Lerw$a;

    .line 1135
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .end local v1    # "iSearchChannel":Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 1153
    :cond_1
    :goto_1
    return-void

    .line 1136
    .restart local v1    # "iSearchChannel":Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "switchToHomepageFragment error: "

    aput-object v3, v2, v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 7050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1140
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "iSearchChannel":Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment$a;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->a(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 1142
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v4}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1146
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->z(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchHomepageFragment;->H()V

    goto :goto_0

    .line 1143
    :catch_1
    move-exception v0

    .line 1144
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "switchToHomepageFragment error: "

    aput-object v3, v2, v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 8050
    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1149
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1150
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->A(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1151
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto :goto_1
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    invoke-interface {v2}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v2

    invoke-interface {v1, v2}, Lerw$a;->d(Lcom/alibaba/android/search/SearchGroupType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->b(I)V

    .line 1121
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 921
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v0

    invoke-interface {v0}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$2;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;Lcom/alibaba/android/search/SearchGroupType;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;I)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1088
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$3;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;Lcom/alibaba/android/search/SearchGroupType;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1116
    return-void
.end method

.method public final a(Lcom/alibaba/android/search/SearchGroupType;Z)V
    .locals 6
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p2, "showAnim"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1002
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->l(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Z

    .line 1008
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->m(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    .line 1010
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 1011
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;I)V

    .line 1013
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    .line 3157
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/AllSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    .line 3158
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .line 3159
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/GroupSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    .line 3160
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .line 3161
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/FunctionSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    .line 3162
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    .line 3163
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/DeptSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    .line 3165
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3166
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->d(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3167
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->e(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3168
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->f(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3169
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3170
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->h(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3171
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->i(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3172
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->j(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3173
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->k(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 3174
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->l(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Z)Z

    .line 1015
    sget-object v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$14;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1076
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    .line 1082
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto/16 :goto_0

    .line 1011
    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_1

    .line 1017
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqr$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqr$a;

    move-result-object v0

    invoke-interface {v0}, Leqr$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1018
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->o(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerl$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->o(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerl$a;

    move-result-object v0

    invoke-interface {v0}, Lerl$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1019
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqz$a;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqz$a;

    move-result-object v0

    invoke-interface {v0}, Leqz$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1020
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v0

    invoke-interface {v0}, Lerk$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1021
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerc$a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerc$a;

    move-result-object v0

    invoke-interface {v0}, Lerc$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1022
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->r(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqt$a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->r(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqt$a;

    move-result-object v0

    invoke-interface {v0}, Leqt$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1023
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->s(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->s(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    invoke-interface {v0}, Leqp$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1024
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->t(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->t(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    invoke-interface {v0}, Leqp$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1025
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->u(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->u(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    invoke-interface {v0}, Leqp$a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    .line 1026
    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->v(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->v(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqp$a;

    move-result-object v0

    invoke-interface {v0}, Leqp$a;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1027
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    goto/16 :goto_2

    .line 1029
    :cond_d
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    goto/16 :goto_2

    .line 1033
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqr$a;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqr$a;

    move-result-object v0

    invoke-interface {v0}, Leqr$a;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3181
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v2

    if-nez v2, :cond_e

    .line 3182
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    new-instance v3, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;

    invoke-direct {v3}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .line 3183
    const-string/jumbo v2, "choose_mode"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3184
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3185
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 3186
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->n(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqr$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Leqp$a;)V

    .line 3187
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lerw$a;)V

    .line 3188
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->D(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 3190
    :cond_e
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3191
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 3193
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3198
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->B(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto/16 :goto_2

    .line 3194
    :catch_0
    move-exception v0

    .line 3195
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "switchToContactSearchFragment error: "

    aput-object v3, v2, v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1036
    :cond_f
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    goto/16 :goto_2

    .line 1040
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->o(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerl$a;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->o(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerl$a;

    move-result-object v0

    invoke-interface {v0}, Lerl$a;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4226
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4227
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v2

    if-nez v2, :cond_10

    .line 4228
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    new-instance v3, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;

    invoke-direct {v3}, Lcom/alibaba/android/search/fragment/GroupDetailSearchFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/GroupSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    .line 4229
    const-string/jumbo v2, "choose_mode"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4230
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4231
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4232
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->o(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerl$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->a(Leqp$a;)V

    .line 4233
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->a(Lerw$a;)V

    .line 4234
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->G(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/GroupSearchFragment;->b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 4236
    :cond_10
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 4240
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4244
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->F(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/GroupSearchFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto/16 :goto_2

    .line 4241
    :catch_1
    move-exception v0

    .line 4242
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "switchToMyGroupSearchFragment error: "

    aput-object v3, v2, v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1043
    :cond_11
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    goto/16 :goto_2

    .line 1047
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v0

    invoke-interface {v0}, Lerk$a;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4250
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v2

    if-nez v2, :cond_12

    .line 4251
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    new-instance v3, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;

    invoke-direct {v3}, Lcom/alibaba/android/search/fragment/MsgDetailSearchFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .line 4252
    const-string/jumbo v2, "choose_mode"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4253
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4254
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4255
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerk$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Leqp$a;)V

    .line 4256
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Lerw$a;)V

    .line 4257
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 4259
    :cond_12
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4260
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 4262
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4266
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->H(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto/16 :goto_2

    .line 4263
    :catch_2
    move-exception v0

    .line 4264
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "switchToMsgSearchFragment error: "

    aput-object v3, v2, v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 1050
    :cond_13
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    goto/16 :goto_2

    .line 1054
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerc$a;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerc$a;

    move-result-object v0

    invoke-interface {v0}, Lerc$a;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4271
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    move-result-object v0

    if-nez v0, :cond_14

    .line 4272
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    new-instance v2, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/fragment/FunctionDetailSearchFragment;-><init>()V

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/FunctionSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    .line 4273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4274
    const-string/jumbo v2, "choose_mode"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4275
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4276
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4277
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4278
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->q(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerc$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->a(Leqp$a;)V

    .line 4279
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->a(Lerw$a;)V

    .line 4280
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->K(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/FunctionSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 4282
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 4284
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4288
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->J(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/FunctionSearchFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto/16 :goto_2

    .line 4285
    :catch_3
    move-exception v0

    .line 4286
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "switchToFunctionSearchFragment error: "

    aput-object v3, v2, v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 1057
    :cond_15
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    goto/16 :goto_2

    .line 1061
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqz$a;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqz$a;

    move-result-object v0

    invoke-interface {v0}, Leqz$a;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4292
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    move-result-object v0

    if-nez v0, :cond_16

    .line 4293
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    new-instance v2, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;

    invoke-direct {v2}, Lcom/alibaba/android/search/fragment/ExternalContactDetailSearchFragment;-><init>()V

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    .line 4294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4295
    const-string/jumbo v2, "choose_mode"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4296
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4297
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4298
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 4299
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->p(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqz$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Leqp$a;)V

    .line 4300
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Lerw$a;)V

    .line 4301
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->M(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;->a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V

    .line 4303
    :cond_16
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 4305
    :try_start_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4309
    :goto_7
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->L(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/ExternalContactSearchFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto/16 :goto_2

    .line 4306
    :catch_4
    move-exception v0

    .line 4307
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "switchToExternalContactSearchFragment error: "

    aput-object v3, v2, v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1064
    :cond_17
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    goto/16 :goto_2

    .line 1068
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->r(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqt$a;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->r(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqt$a;

    move-result-object v0

    invoke-interface {v0}, Leqt$a;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5202
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    move-result-object v0

    if-nez v0, :cond_18

    .line 5203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5204
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    new-instance v3, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;

    invoke-direct {v3}, Lcom/alibaba/android/search/fragment/DeptDetailSearchFragment;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/fragment/DeptSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    .line 5205
    const-string/jumbo v2, "choose_mode"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->C(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5206
    const-string/jumbo v2, "intent_key_show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5207
    const-string/jumbo v2, "keyword"

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v3, v3, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5209
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5210
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->r(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Leqt$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->a(Leqp$a;)V

    .line 5211
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/fragment/DeptSearchFragment;->a(Lerw$a;)V

    .line 5213
    :cond_18
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, v2}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->b(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V

    .line 5216
    :try_start_5
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->x(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lemt$e;->ll_search_result_fragment_container:I

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 5221
    :goto_8
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->E(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/DeptSearchFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto/16 :goto_2

    .line 5217
    :catch_5
    move-exception v0

    .line 5218
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "switchToDeptSearchFragment error: "

    aput-object v3, v2, v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 6050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1071
    :cond_19
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b(Lcom/alibaba/android/search/SearchGroupType;)V

    goto/16 :goto_2

    .line 1078
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->w(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    goto/16 :goto_2

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leob;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 824
    .local p1, "tabModelList":Ljava/util/List;, "Ljava/util/List<Leob;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->lv_tabs:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    .line 827
    new-instance v0, Lemy;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lemy;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    .line 828
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 829
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;Ljava/util/List;)V

    .line 2166
    iput-object v1, v0, Lemy;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    invoke-virtual {v0, p1}, Lemy;->a(Ljava/util/List;)V

    .line 856
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->b:Lemy;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->g(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lerw$a;

    move-result-object v1

    invoke-interface {v1}, Lerw$a;->a()Lcom/alibaba/android/search/SearchGroupType;

    move-result-object v1

    .line 3143
    iput-object v1, v0, Lemy;->c:Lcom/alibaba/android/search/SearchGroupType;

    .line 857
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1330
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1320
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 816
    check-cast p1, Lerw$a;

    .line 8314
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$20;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->a(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lerw$a;)Lerw$a;

    .line 816
    return-void
.end method
