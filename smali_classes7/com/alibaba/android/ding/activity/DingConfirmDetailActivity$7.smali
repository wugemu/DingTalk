.class final Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$7;
.super Ljava/lang/Object;
.source "DingConfirmDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;
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
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 229
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1232
    if-nez p1, :cond_0

    .line 1233
    const-string/jumbo v0, "[DingConfirmDetailPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->finish()V

    .line 1235
    :goto_0
    return-void

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->f(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)V

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->g(Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v0, "[DingConfirmDetailPage]retrieveDing failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity$7;->a:Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingConfirmDetailActivity;->finish()V

    .line 250
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 244
    return-void
.end method
