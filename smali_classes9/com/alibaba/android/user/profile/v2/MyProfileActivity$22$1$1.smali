.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1009
    .line 4013
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 4014
    const-string/jumbo v0, "user"

    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "upload user avatar update profile:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4016
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->a:Ljava/lang/String;

    .line 4018
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4024
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 4025
    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 4024
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4026
    const-string/jumbo v0, "IMAGE"

    .line 4028
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4032
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    .line 4033
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 4035
    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    .line 4034
    invoke-virtual {v1, v2, v3, v4}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 4038
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->b:Ljava/lang/String;

    sget v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v1, v3, v4, v5}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 4039
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4070
    :cond_0
    sget v0, Lezg$l;->dt_save_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1009
    return-void

    .line 4019
    :catch_0
    move-exception v0

    .line 4020
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 4022
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1081
    const-string/jumbo v1, "setavatar"

    const-string/jumbo v2, "set avatar upload fail %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 2056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 1082
    if-eqz v1, :cond_0

    .line 1083
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    .line 3056
    iget-object v1, v1, Lcid;->c:Lcmy;

    .line 1083
    invoke-interface {v1, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "error":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .end local v0    # "error":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 1087
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    .line 1089
    return-void

    :cond_0
    move-object v0, p2

    .line 1083
    goto :goto_0

    .line 1084
    .restart local v0    # "error":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    sget v2, Lezg$l;->load_avatar_fail:I

    .line 1085
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1076
    return-void
.end method
