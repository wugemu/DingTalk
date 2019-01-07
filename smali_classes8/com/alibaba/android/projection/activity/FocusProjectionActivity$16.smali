.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
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
        "Lced;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1404
    check-cast p1, Ljava/util/List;

    .line 2407
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2408
    :cond_0
    :goto_0
    return-void

    .line 2411
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehw;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2412
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    new-instance v1, Lehw;

    invoke-direct {v1}, Lehw;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lehw;)Lehw;

    .line 2416
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 2418
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lced;

    .line 2419
    if-eqz v0, :cond_3

    iget-object v1, v0, Lced;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2422
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Org "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lced;->a:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lced;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    iget-object v0, v0, Lced;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdi;

    .line 2424
    if-eqz v0, :cond_4

    .line 2427
    new-instance v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {v1, v0}, Lcom/alibaba/android/projection/data/FocusDeviceObject;-><init>(Lcdi;)V

    .line 2428
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->G(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_7

    iget-wide v6, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->G(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    move-object v0, v1

    .line 2431
    :goto_3
    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lehw;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    move-object v2, v0

    .line 2432
    goto :goto_2

    .line 2414
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehw;

    move-result-object v0

    .line 3294
    iget-object v1, v0, Lehw;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 3295
    iget-object v0, v0, Lehw;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1

    .line 2434
    :cond_6
    if-eqz v2, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$16;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;Z)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1446
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "List devices fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1442
    return-void
.end method
