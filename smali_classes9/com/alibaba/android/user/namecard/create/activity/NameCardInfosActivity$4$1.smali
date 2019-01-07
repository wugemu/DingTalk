.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;
.super Ljava/lang/Object;
.source "NameCardInfosActivity.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 390
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .end local p2    # "s":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->dismissLoadingDialog()V

    .line 393
    return-void

    .line 390
    .restart local p2    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    sget v1, Lezg$l;->load_avatar_fail:I

    .line 391
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 370
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 366
    check-cast p1, Lifx;

    .line 1374
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->dismissLoadingDialog()V

    .line 1375
    if-eqz p1, :cond_0

    .line 2026
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 1375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3026
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 1377
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v2, v2, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 1378
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v1

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    .line 1379
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 366
    :cond_0
    return-void
.end method
