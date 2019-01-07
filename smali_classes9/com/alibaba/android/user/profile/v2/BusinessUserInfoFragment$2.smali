.class final Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$2;
.super Ljava/lang/Object;
.source "BusinessUserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$2;->b:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$2;->a:Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1078
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$2;->b:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment$2;->a:Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1079
    return-void
.end method
