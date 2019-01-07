.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;
.super Ljava/lang/Object;
.source "BeaconTestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

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
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Z)Z

    .line 72
    return-void
.end method
