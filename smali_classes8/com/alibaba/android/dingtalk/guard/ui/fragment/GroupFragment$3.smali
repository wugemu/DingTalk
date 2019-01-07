.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "GroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$3;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->c()V

    goto :goto_0
.end method
