.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;
.super Ljava/lang/Object;
.source "EmotionPackageDetailActivity.java"

# interfaces
.implements Ldpt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "packageId"    # J

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;I)I

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 3
    .param p1, "packageId"    # J
    .param p3, "progress"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;I)I

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 5
    .param p1, "packageId"    # J
    .param p3, "error"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 388
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 389
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 0
    .param p1, "packageId"    # J

    .prologue
    .line 375
    return-void
.end method

.method public final c(J)V
    .locals 3
    .param p1, "packageId"    # J

    .prologue
    .line 379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 3
    .param p1, "packageId"    # J

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    :cond_0
    return-void
.end method
