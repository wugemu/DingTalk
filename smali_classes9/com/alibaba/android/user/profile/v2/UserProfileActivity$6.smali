.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$6;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1226
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2229
    if-eqz p1, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2233
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->v(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2234
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$6;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1244
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1240
    return-void
.end method
