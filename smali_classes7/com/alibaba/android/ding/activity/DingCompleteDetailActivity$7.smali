.class final Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;
.super Ljava/lang/Object;
.source "DingCompleteDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 271
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1276
    const-string/jumbo v0, "[DingCompleteDetailPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->finish()V

    .line 1283
    :goto_0
    return-void

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1281
    const-string/jumbo v0, "[DingCompleteDetailPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not task"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->finish()V

    goto :goto_0

    .line 1285
    :cond_1
    instance-of v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_2

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->f(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 1287
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Z)Z

    .line 1288
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->Sent:Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->G()Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v0

    if-ne v3, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->b(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;Z)Z

    .line 1289
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->supportInvalidateOptionsMenu()V

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->g(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    .line 1292
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->h(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    .line 1293
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->i(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V

    goto :goto_0

    .line 1288
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string/jumbo v0, "[DingCompleteDetailPage]retrieveDing failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->finish()V

    .line 304
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 298
    return-void
.end method
