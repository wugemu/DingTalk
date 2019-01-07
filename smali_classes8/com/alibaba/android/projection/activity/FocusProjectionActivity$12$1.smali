.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->run()V
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
        "Lehe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    check-cast p1, Lehe;

    .line 1357
    if-nez p1, :cond_1

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-object v0, p1, Lehe;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lehe;->d:Ljava/util/Map;

    .line 1363
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 1364
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 1365
    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1367
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 1368
    if-eqz v0, :cond_5

    .line 1369
    iget-wide v4, v0, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    .line 1371
    :goto_1
    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 1372
    iget-object v0, p1, Lehe;->d:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1373
    if-eqz v0, :cond_3

    .line 1374
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1375
    sget-object v3, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->UNDERWAY:Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;

    invoke-virtual {v3}, Lcom/alibaba/android/projection/idl/model/MeetingUserStatusEnum;->value()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-static {v0, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move v0, v1

    .line 1388
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v3, v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 1389
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v3, v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v4, v4, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v5, v5, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    .line 1390
    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;IZ)V

    goto/16 :goto_0

    .line 1379
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-static {v0, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    :cond_3
    move v0, v2

    .line 1383
    goto :goto_2

    .line 1384
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    sget-object v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-static {v0, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move v0, v1

    .line 1385
    goto :goto_2

    :cond_5
    move-wide v4, v6

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 404
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "query user state fail "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 405
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12$1;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$12;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 407
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 400
    return-void
.end method
