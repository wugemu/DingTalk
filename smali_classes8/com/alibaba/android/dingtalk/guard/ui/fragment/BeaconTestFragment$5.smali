.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$5;
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
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

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
    .line 109
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;Z)Z

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 112
    .local v0, "cmb":Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment$5;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;->d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconTestFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const-string/jumbo v1, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 115
    return-void
.end method
