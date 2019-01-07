.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;
.super Ljava/lang/Object;
.source "LanNetSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 536
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "LanNetSettingFragment"

    const-string/jumbo v3, "alpha_bind_scope_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 537
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->m(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v1, v5, p1, v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;ZLandroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 555
    :goto_0
    return-void

    .line 541
    :cond_1
    const-string/jumbo v1, "firstSetNetScope"

    invoke-static {v1, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 542
    .local v0, "firstSetNetScope":Z
    if-eqz v0, :cond_2

    .line 543
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;)V

    invoke-static {v1, v6, p1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;ZLandroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 550
    const-string/jumbo v1, "LanNetSettingFragment"

    const-string/jumbo v2, "alpha_bind_scope_dialog_guide"

    invoke-static {v1, v2, v4}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 551
    const-string/jumbo v1, "firstSetNetScope"

    invoke-static {v1, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Landroid/view/View;)V

    goto :goto_0
.end method
