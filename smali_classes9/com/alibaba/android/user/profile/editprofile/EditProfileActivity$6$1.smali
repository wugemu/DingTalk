.class final Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6$1;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6$1;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 663
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6$1;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6$1;->a:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;->d:Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 664
    return-void
.end method
