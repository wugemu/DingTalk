.class final Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;
.super Ljava/lang/Object;
.source "DingReceiverActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingReceiverActivity;
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
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

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
    .line 223
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1226
    if-nez p1, :cond_0

    .line 1227
    const-string/jumbo v0, "[DingReceiverPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->finish()V

    .line 1229
    :goto_0
    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->e(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->f(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->supportInvalidateOptionsMenu()V

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;I)V

    .line 1236
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string/jumbo v0, "[DingReceiverPage]retrieveDing failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;->a:Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->finish()V

    .line 247
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 241
    return-void
.end method
