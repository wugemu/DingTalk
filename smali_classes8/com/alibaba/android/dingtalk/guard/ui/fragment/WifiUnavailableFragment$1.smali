.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;
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
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

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
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;I)V

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiUnavailableFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
