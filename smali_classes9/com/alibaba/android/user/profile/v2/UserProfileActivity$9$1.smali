.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->dismissLoadingDialog()V

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 1342
    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isActive:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1344
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;

    iget-object v0, v0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->g(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    .line 1346
    :cond_1
    return-void
.end method
