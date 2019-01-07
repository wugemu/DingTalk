.class final Lfcg$c$3;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg$c;
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
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfcg$c;


# direct methods
.method constructor <init>(Lfcg$c;)V
    .locals 0
    .param p1, "this$1"    # Lfcg$c;

    .prologue
    .line 407
    iput-object p1, p0, Lfcg$c$3;->a:Lfcg$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 407
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1423
    iget-object v0, p0, Lfcg$c$3;->a:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->h:Lfcg;

    invoke-static {v0}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lfcg$c$3;->a:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->h:Lfcg;

    invoke-static {v0}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1426
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1427
    :cond_1
    sget v0, Lezg$l;->dt_circle_post_is_deleted:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1428
    :goto_0
    return-void

    .line 1430
    :cond_2
    invoke-static {}, Lfcn;->a()Lfcn;

    invoke-static {p1}, Lfcn;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 1432
    iget-object v0, p0, Lfcg$c$3;->a:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->h:Lfcg;

    invoke-static {v0}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a(Landroid/content/Context;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lfcg$c$3;->a:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->h:Lfcg;

    invoke-static {v0}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lfcg$c$3;->a:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->h:Lfcg;

    invoke-static {v0}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 418
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 411
    return-void
.end method
