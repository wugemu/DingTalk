.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;
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
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;->a:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;->b:Landroid/view/View;

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
    .line 779
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/LanNetSettingFragment$5;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 782
    :cond_0
    const-string/jumbo v0, "LanNetSettingFragment"

    const-string/jumbo v1, "alpha_bind_scope_dialog_set_click"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 783
    return-void
.end method
