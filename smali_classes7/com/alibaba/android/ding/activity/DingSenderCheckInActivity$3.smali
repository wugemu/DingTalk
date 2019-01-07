.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
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
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

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
    .line 360
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1363
    if-nez p1, :cond_0

    .line 1364
    const-string/jumbo v0, "[DingSenderCheckInActivity]retrieve ding failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->finish()V

    .line 1366
    :goto_0
    return-void

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1369
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->m(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    .line 1370
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->n(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 379
    const-string/jumbo v0, "[DingSenderCheckInActivity]retrieve ding failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$3;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->finish()V

    .line 382
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 375
    return-void
.end method
