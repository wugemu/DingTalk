.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 344
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_0

    .line 345
    invoke-static {v7}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 350
    invoke-static {v7}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    new-instance v0, Lehe;

    invoke-direct {v0}, Lehe;-><init>()V

    .line 352
    .local v0, "statusModel":Lehe;
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lehe;->a:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lehe;->b:Ljava/lang/Long;

    .line 354
    new-instance v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;)V

    invoke-static {v0, v1}, Lehu;->a(Lehe;Lcma;)V

    goto :goto_0

    .line 410
    .end local v0    # "statusModel":Lehe;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    goto :goto_0
.end method
