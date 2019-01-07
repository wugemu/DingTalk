.class final Lawx$2;
.super Ljava/lang/Object;
.source "ShowEvent.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lasc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lawx;


# direct methods
.method constructor <init>(Lawx;JJLcom/alibaba/wukong/Callback;JJ)V
    .locals 0
    .param p1, "this$0"    # Lawx;

    .prologue
    .line 371
    iput-object p1, p0, Lawx$2;->f:Lawx;

    iput-wide p2, p0, Lawx$2;->a:J

    iput-wide p4, p0, Lawx$2;->b:J

    iput-object p6, p0, Lawx$2;->c:Lcom/alibaba/wukong/Callback;

    iput-wide p7, p0, Lawx$2;->d:J

    iput-wide p9, p0, Lawx$2;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 425
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarDragModify] modify schedule failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lawx$2;->f:Lawx;

    .line 1041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 426
    iget-wide v2, p0, Lawx$2;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceStartTimeMillis(J)V

    .line 427
    iget-object v0, p0, Lawx$2;->f:Lawx;

    .line 2041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 427
    iget-wide v2, p0, Lawx$2;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceEndTimeMillis(J)V

    .line 428
    iget-object v0, p0, Lawx$2;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lawx$2;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 371
    check-cast p1, Lasc;

    .line 2374
    invoke-virtual {p1}, Lasc;->a()Lary;

    move-result-object v2

    .line 2376
    new-instance v3, Last;

    invoke-direct {v3}, Last;-><init>()V

    .line 3052
    iget-object v0, v2, Lary;->c:Ljava/lang/String;

    .line 3063
    iput-object v0, v3, Last;->c:Ljava/lang/String;

    .line 2378
    invoke-virtual {v2}, Lary;->d()Z

    move-result v0

    .line 3071
    iput-boolean v0, v3, Last;->d:Z

    .line 2379
    iget-wide v0, p0, Lawx$2;->a:J

    .line 4039
    iput-wide v0, v3, Last;->a:J

    .line 2380
    iget-wide v0, p0, Lawx$2;->b:J

    .line 4047
    iput-wide v0, v3, Last;->b:J

    .line 4081
    iget-object v0, v2, Lary;->g:Ljava/util/List;

    .line 5079
    iput-object v0, v3, Last;->f:Ljava/util/List;

    .line 2382
    const/4 v0, 0x0

    .line 2383
    invoke-virtual {v2}, Lary;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2384
    new-instance v0, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;-><init>()V

    .line 2386
    :try_start_0
    invoke-virtual {v2}, Lary;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6075
    :cond_0
    :goto_0
    iput-object v0, v3, Last;->e:Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .line 6089
    iget-object v0, v2, Lary;->h:Ljava/lang/String;

    .line 7087
    iput-object v0, v3, Last;->g:Ljava/lang/String;

    .line 2394
    new-instance v0, Lasi;

    invoke-direct {v0}, Lasi;-><init>()V

    .line 2395
    invoke-virtual {v2}, Lary;->c()J

    move-result-wide v4

    .line 8022
    iput-wide v4, v0, Lasi;->a:J

    .line 2396
    invoke-virtual {v2}, Lary;->b()J

    move-result-wide v4

    .line 8030
    iput-wide v4, v0, Lasi;->b:J

    .line 8034
    iput-object v3, v0, Lasi;->c:Last;

    .line 2399
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v2, Lawx$2$1;

    invoke-direct {v2, p0}, Lawx$2$1;-><init>(Lawx$2;)V

    invoke-virtual {v1, v0, v2}, Latf;->a(Lasi;Lcom/alibaba/wukong/Callback;)V

    .line 371
    return-void

    .line 2387
    :catch_0
    move-exception v1

    .line 2388
    const-string/jumbo v4, "parse recurrence failed"

    invoke-static {v4, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
