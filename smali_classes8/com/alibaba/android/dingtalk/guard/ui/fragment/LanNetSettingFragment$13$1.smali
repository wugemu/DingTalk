.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13$1;
.super Ljava/lang/Object;
.source "LanNetSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 546
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$13;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Landroid/view/View;)V

    .line 547
    const-string/jumbo v0, "LanNetSettingFragment"

    const-string/jumbo v1, "alpha_bind_scope_dialog_guide_click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 548
    return-void
.end method
