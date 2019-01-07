.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;
.super Ljava/lang/Object;
.source "LanNetSettingFragment.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->n(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 586
    if-eqz p1, :cond_3

    .line 587
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->l()Lbsw$c;

    move-result-object v0

    instance-of v0, v0, Lbst;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->o(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->p(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)V

    goto :goto_0

    .line 593
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanNetSettingFragment"

    const-string/jumbo v2, "alpha_bind_and_active_fail"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
