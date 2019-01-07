.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;
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
    .line 571
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 574
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->n(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->c(Lbsy$b;)V

    .line 597
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "LanNetSettingFragment"

    const-string/jumbo v2, "alpha_bind_and_active_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 598
    return-void
.end method
