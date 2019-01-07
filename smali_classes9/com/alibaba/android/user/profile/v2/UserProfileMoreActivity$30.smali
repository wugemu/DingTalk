.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;
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
    .line 1580
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

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
    .line 1580
    .line 2584
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.msg.sender.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2585
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2587
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "first_enter_concern"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "first_enter_concern"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2589
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v0}, Lfls;->a(Landroid/content/Context;)V

    .line 2594
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.concern.list.item.delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2595
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$30;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1580
    return-void

    .line 2591
    :cond_0
    sget v0, Lezg$l;->concern_cancel_success:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
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

    .line 1606
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 1607
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "unconcern error, error code:"

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

    .line 1608
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1601
    return-void
.end method
