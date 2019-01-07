.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$25;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcom/alibaba/android/user/namecard/guide/GuideView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 634
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pre_key_mine_guide"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b:Lfub;

    .line 636
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b:Lfub;

    .line 1221
    iput p1, v0, Lfub;->h:I

    .line 641
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 645
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const-string/jumbo v1, "from=facetoface"

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->h(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/namecard/widget/NameCardView;

    move-result-object v0

    const-string/jumbo v1, "CardSee"

    const/4 v2, 0x0

    const-string/jumbo v3, "a2o5v.12302328.1.CardSee"

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 647
    const-string/jumbo v0, "from=facetoface"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$25;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Landroid/app/Activity;Z)V

    .line 648
    return-void
.end method
