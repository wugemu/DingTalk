.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;
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
    .line 1243
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

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
    .line 1243
    .line 2247
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->dismissLoadingDialog()V

    .line 2249
    sget v0, Lezg$l;->black_list_cancel_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2250
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.black.list.item.delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2251
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->A(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2252
    const-string/jumbo v1, "list_view_position"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->B(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2254
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1243
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

    .line 1264
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$18;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->dismissLoadingDialog()V

    .line 1265
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 1266
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "removeFromBlacklist error, error code:"

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

    .line 1267
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1260
    return-void
.end method
