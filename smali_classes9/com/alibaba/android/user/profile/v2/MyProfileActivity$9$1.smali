.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 712
    .line 2716
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 2717
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 2719
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2720
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    .line 2721
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->a:Ljava/lang/String;

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v1, v2, v3, v4}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 2723
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2724
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2735
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 2736
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2738
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2739
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Restore avatar suc"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 744
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Restore avatar fail"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 1056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 745
    if-eqz v1, :cond_0

    .line 746
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 2056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 746
    invoke-interface {v1, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "error":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .end local v0    # "error":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 750
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 751
    return-void

    :cond_0
    move-object v0, p2

    .line 746
    goto :goto_0

    .line 747
    .restart local v0    # "error":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    sget v2, Lezg$l;->load_avatar_fail:I

    .line 748
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 756
    return-void
.end method
