.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;)V
    .locals 0
    .param p1, "this$4"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1050
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 1051
    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 1050
    invoke-virtual {v1, v2}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1052
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 1053
    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v3, v3, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 1054
    invoke-static {v3}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 1052
    invoke-virtual {v1, v2, v4, v5}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 1055
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->c:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->k(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)V

    .line 1056
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "media_id"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 1062
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1063
    const-string/jumbo v1, "setavatar"

    const-string/jumbo v2, "set avatar suc %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;

    iget-object v5, v5, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1$1;->d:Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;

    iget-object v5, v5, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$22$1$1;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    return-void
.end method
