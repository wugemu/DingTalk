.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$3;
.super Ljava/lang/Object;
.source "WifiUnavailableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->m()Lbsw$b;

    move-result-object v0

    .line 79
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbsw$b;->g(Z)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->o()V

    .line 83
    return-void
.end method
