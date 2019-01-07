.class final Lbnp$c$3;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp$c;
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbnp$c;


# direct methods
.method constructor <init>(Lbnp$c;)V
    .locals 0
    .param p1, "this$1"    # Lbnp$c;

    .prologue
    .line 405
    iput-object p1, p0, Lbnp$c$3;->a:Lbnp$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 405
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1421
    iget-object v0, p0, Lbnp$c$3;->a:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->h:Lbnp;

    invoke-static {v0}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lbnp$c$3;->a:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->h:Lbnp;

    invoke-static {v0}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1424
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1425
    :cond_1
    sget v0, Lbpu$f;->dt_circle_post_is_deleted:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1426
    :goto_0
    return-void

    .line 1428
    :cond_2
    invoke-static {}, Lbnw;->a()Lbnw;

    invoke-static {p1}, Lbnw;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 1430
    iget-object v0, p0, Lbnp$c$3;->a:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->h:Lbnp;

    invoke-static {v0}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v0, p0, Lbnp$c$3;->a:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->h:Lbnp;

    invoke-static {v0}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lbnp$c$3;->a:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->h:Lbnp;

    invoke-static {v0}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 416
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 409
    return-void
.end method
