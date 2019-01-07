.class final Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;
.super Ljava/lang/Object;
.source "DingOverdueTaskActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

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
    .line 279
    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->dismissLoadingDialog()V

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->h(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    .line 1285
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->g(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V

    .line 279
    return-void

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1290
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;Ljava/lang/CharSequence;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 1291
    if-eqz v0, :cond_2

    .line 1292
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->f(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$5;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->dismissLoadingDialog()V

    .line 307
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 302
    return-void
.end method
