.class final Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 762
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1765
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iput-object p1, v0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1770
    if-eqz p1, :cond_1

    .line 1771
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->r(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    :cond_0
    :goto_0
    return-void

    .line 1773
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a()V

    .line 1774
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->finish()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->dismissLoadingDialog()V

    .line 786
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 781
    return-void
.end method
