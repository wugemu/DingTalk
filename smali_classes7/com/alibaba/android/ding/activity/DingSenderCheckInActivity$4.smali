.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a()V
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
        "Ljava/util/List",
        "<",
        "Lbdk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 397
    check-cast p1, Ljava/util/List;

    .line 1401
    new-array v2, v4, [Ljava/lang/String;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "[DingSenderCheckInActivity] getDeviceInfoByMeetingId success, size="

    aput-object v0, v3, v1

    if-nez p1, :cond_1

    move v0, v1

    .line 1402
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1401
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Z)Z

    .line 1408
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1409
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdk;

    invoke-static {v2, v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Lbdk;)Lbdk;

    .line 1413
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->o(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V

    .line 397
    :cond_0
    return-void

    .line 1402
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1411
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$4;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->a(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Lbdk;)Lbdk;

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 421
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingSenderCheckInActivity] getDeviceInfoByMeetingId fail, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "; msg="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 417
    return-void
.end method
