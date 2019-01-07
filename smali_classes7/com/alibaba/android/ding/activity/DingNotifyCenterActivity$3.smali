.class final Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$3;
.super Ljava/lang/Object;
.source "DingNotifyCenterActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$3;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$3;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->dismissLoadingDialog()V

    .line 304
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 294
    .line 1297
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$3;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;->dismissLoadingDialog()V

    .line 1298
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$3;->a:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity;

    .line 2183
    if-eqz v0, :cond_0

    .line 2186
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.ding.confirm.all_comment"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2187
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 294
    :cond_0
    return-void
.end method
