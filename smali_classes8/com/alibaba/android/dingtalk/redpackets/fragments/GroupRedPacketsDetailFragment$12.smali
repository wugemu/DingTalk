.class final Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$12;
.super Ljava/lang/Object;
.source "GroupRedPacketsDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->b(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$12;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

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
    .line 537
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 538
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://h5.dingtalk.com/market/bombredpack2018/index.html"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment$12;->a:Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 540
    return-void
.end method
