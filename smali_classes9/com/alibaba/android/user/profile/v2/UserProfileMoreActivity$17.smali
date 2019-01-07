.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1204
    .line 2208
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->dismissLoadingDialog()V

    .line 2210
    sget v0, Lezg$l;->black_list_setting_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2212
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.workapp.black.list.item.add"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2213
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2215
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2216
    const-string/jumbo v2, "profile"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1204
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
    const/4 v3, 0x0

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$17;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->dismissLoadingDialog()V

    .line 1230
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 1231
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "addToBlacklist error, error code:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1232
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1225
    return-void
.end method
