.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->onClick(Landroid/content/DialogInterface;I)V
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

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1230
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2246
    if-eqz p1, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nickPinyin:Ljava/lang/String;

    .line 2249
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/auth/AuthService;->setNickname(Ljava/lang/String;)V

    .line 2250
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2251
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 2252
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 2253
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 2254
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.PROFILE_NICK_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2256
    const-string/jumbo v1, "newNick"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2257
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2259
    sget v0, Lezg$l;->dt_save_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1230
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->dismissLoadingDialog()V

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$25$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 1241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1235
    return-void
.end method
