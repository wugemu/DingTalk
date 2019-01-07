.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$7;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$7;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$7;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/model/SWPersonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$7;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/model/SWPersonObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/user/model/SWPersonObject;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$7;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$7;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->b(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Lcom/alibaba/android/user/model/SWPersonObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/model/SWPersonObject;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z

    goto :goto_0
.end method
