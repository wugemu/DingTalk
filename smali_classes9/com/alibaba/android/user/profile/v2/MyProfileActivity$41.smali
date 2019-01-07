.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 437
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1440
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1441
    if-eqz p1, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->d(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    :goto_0
    return-void

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->finish()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$41;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->finish()V

    .line 456
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 450
    return-void
.end method
