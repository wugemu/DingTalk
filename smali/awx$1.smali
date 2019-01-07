.class final Lawx$1;
.super Ljava/lang/Object;
.source "ShowEvent.java"

# interfaces
.implements Laxn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawx;->getDayEventDelegate()Laxn$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawx;


# direct methods
.method constructor <init>(Lawx;)V
    .locals 0
    .param p1, "this$0"    # Lawx;

    .prologue
    .line 315
    iput-object p1, p0, Lawx$1;->a:Lawx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 332
    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 11041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 332
    if-nez v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 12041
    invoke-virtual {v0}, Lawx;->a()Z

    move-result v0

    .line 336
    if-eqz v0, :cond_2

    .line 337
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://h5.dingtalk.com/base/download.html"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p0, Lawx$1;->a:Lawx;

    invoke-virtual {v0}, Lawx;->isShareCalendar()Z

    move-result v0

    if-nez v0, :cond_4

    .line 345
    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 13041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 345
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getNavUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 14041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 346
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getNavUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lavr;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 15041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 347
    invoke-static {v0}, Lawc;->k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 16041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 348
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v1

    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 17041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 348
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lawx$1;->a:Lawx;

    .line 18041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 348
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lavr;->a(Landroid/content/Context;JLjava/lang/String;J)V

    goto :goto_0

    .line 351
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[ShowEvent] navToDetail no privilege. folderId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lawx$1;->a:Lawx;

    .line 19041
    iget-object v2, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 351
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lawx$1;->a:Lawx;

    .line 20041
    iget-object v2, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 351
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;JJLcom/alibaba/wukong/Callback;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "startTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lawx$1;->a:Lawx;

    .line 1041
    invoke-virtual {v2}, Lawx;->a()Z

    move-result v2

    .line 318
    if-eqz v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lawx$1;->a:Lawx;

    .line 2041
    iget-object v2, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 321
    invoke-static {v2}, Lawc;->k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lawx$1;->a:Lawx;

    .line 3364
    iget-object v2, v3, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v9

    .line 3365
    iget-object v2, v3, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v11

    .line 3366
    iget-object v2, v3, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceStartTimeMillis(J)V

    .line 3367
    iget-object v2, v3, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceEndTimeMillis(J)V

    .line 3368
    invoke-static {}, Latf;->a()Latf;

    move-result-object v13

    iget-object v2, v3, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 3369
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v14

    iget-object v2, v3, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 3370
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getFolderId()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lawx$2;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v12}, Lawx$2;-><init>(Lawx;JJLcom/alibaba/wukong/Callback;JJ)V

    .line 3368
    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v2}, Latf;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lawx$1;->a:Lawx;

    .line 4041
    iget-object v2, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 323
    invoke-static {v2}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lawx$1;->a:Lawx;

    .line 5041
    iget-object v2, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 323
    invoke-static {v2}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lawx$1;->a:Lawx;

    .line 6440
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    cmp-long v3, p2, v4

    if-gez v3, :cond_3

    .line 6441
    sget v2, Laow$f;->dt_ding_invalid_date_early_than_now:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 6442
    if-eqz p6, :cond_0

    .line 6443
    const-string/jumbo v2, "-1"

    sget v3, Laow$f;->dt_ding_invalid_date_early_than_now:I

    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6447
    :cond_3
    iget-object v3, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v4

    .line 6448
    iget-object v3, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceEndTimeMillis(J)V

    .line 6449
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v3

    iget-object v6, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v6}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lawx$3;

    move-object/from16 v0, p6

    invoke-direct {v7, v2, v0, v4, v5}, Lawx$3;-><init>(Lawx;Lcom/alibaba/wukong/Callback;J)V

    move-wide/from16 v0, p2

    invoke-virtual {v3, v6, v0, v1, v7}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/lang/String;JLcma;)V

    goto/16 :goto_0

    .line 325
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lawx$1;->a:Lawx;

    .line 7041
    iget-object v2, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 325
    invoke-static {v2}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lawx$1;->a:Lawx;

    .line 8041
    iget-object v2, v2, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 325
    invoke-static {v2}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lawx$1;->a:Lawx;

    .line 9473
    iget-object v2, v4, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceStartTimeMillis()J

    move-result-wide v6

    .line 9474
    iget-object v2, v4, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v8

    .line 9475
    iget-object v2, v4, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceStartTimeMillis(J)V

    .line 9476
    iget-object v2, v4, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceEndTimeMillis(J)V

    .line 9477
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    iget-object v3, v4, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 9478
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizId()Ljava/lang/String;

    move-result-object v3

    .line 10109
    const-wide/16 v10, 0x0

    invoke-static {v3, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 9478
    iget-object v3, v4, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 9479
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v4, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 9480
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceId()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v3, Lawx$4;

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v9}, Lawx$4;-><init>(Lawx;Lcom/alibaba/wukong/Callback;JJ)V

    move-object v4, v2

    move-object/from16 v5, p1

    move-wide v6, v10

    move-object v8, v12

    move-object v9, v13

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v15, v3

    .line 9477
    invoke-virtual/range {v4 .. v15}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;JJZLcma;)V

    goto/16 :goto_0
.end method
