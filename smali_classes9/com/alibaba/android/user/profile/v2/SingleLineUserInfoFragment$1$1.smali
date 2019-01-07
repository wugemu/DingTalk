.class final Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;
.super Ljava/lang/Object;
.source "SingleLineUserInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfry;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;Lfry;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;->a:Lfry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 268
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;->b:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1;->a:Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;->a:Lfry;

    iget-object v3, v3, Lfry;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "user"

    const-string/jumbo v2, "getUserEmployeeInfo"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "organizationProfile navigateFromUrl error: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SingleLineUserInfoFragment$1$1;->a:Lfry;

    iget-object v5, v5, Lfry;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 273
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
