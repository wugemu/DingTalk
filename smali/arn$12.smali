.class final Larn$12;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larn;->a(Ljava/lang/String;JJLjava/util/concurrent/atomic/AtomicInteger;)V
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
        "Lasa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Larn;


# direct methods
.method constructor <init>(Larn;Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .param p1, "this$0"    # Larn;

    .prologue
    .line 441
    iput-object p1, p0, Larn$12;->d:Larn;

    iput-object p2, p0, Larn$12;->a:Ljava/lang/String;

    iput-wide p3, p0, Larn$12;->b:J

    iput-object p5, p0, Larn$12;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 441
    check-cast p1, Lasa;

    .line 1444
    if-nez p1, :cond_0

    .line 1445
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v1, v0, v7

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string/jumbo v1, ", calendarListObject = null."

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1446
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    iget-wide v2, p0, Larn$12;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lark;->b(Ljava/lang/String;J)V

    .line 1480
    :goto_0
    return-void

    .line 2021
    :cond_0
    iget-object v0, p1, Lasa;->a:Ljava/util/List;

    .line 1451
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1452
    :cond_1
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v1, v0, v7

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string/jumbo v1, ", calendars is null or is empty."

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1453
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    iget-wide v2, p0, Larn$12;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lark;->b(Ljava/lang/String;J)V

    goto :goto_0

    .line 1457
    :cond_2
    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v2, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v2, v1, v7

    iget-object v2, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string/jumbo v2, ", success size="

    aput-object v2, v1, v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1459
    iget-object v1, p0, Larn$12;->d:Larn;

    .line 2042
    iget-object v1, v1, Larn;->a:Lapw;

    .line 1459
    invoke-virtual {v1, v0}, Lapw;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1460
    iget-wide v4, p0, Larn$12;->b:J

    .line 3025
    iget-boolean v1, p1, Lasa;->b:Z

    .line 1462
    if-eqz v1, :cond_3

    .line 1463
    iget-object v2, p0, Larn$12;->d:Larn;

    invoke-static {v2, v0}, Larn;->a(Larn;Ljava/util/List;)J

    move-result-wide v4

    .line 1466
    :cond_3
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v2, p0, Larn$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lark;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 1467
    cmp-long v0, v4, v2

    if-gez v0, :cond_4

    .line 1468
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v6, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v6, v0, v7

    iget-object v6, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v6, v0, v8

    const-string/jumbo v6, ", local nonRepeatDateAnchor="

    aput-object v6, v0, v9

    .line 1469
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    const-string/jumbo v2, ", update date anchor:"

    aput-object v2, v0, v11

    const/4 v2, 0x5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1468
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1470
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v2, p0, Larn$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v5}, Lark;->b(Ljava/lang/String;J)V

    .line 1473
    :cond_4
    if-eqz v1, :cond_5

    .line 1474
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v1, v0, v7

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string/jumbo v1, ", hasMore"

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Larn$12;->d:Larn;

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    iget-wide v2, p0, Larn$12;->b:J

    iget-object v6, p0, Larn$12;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3042
    invoke-virtual/range {v0 .. v6}, Larn;->a(Ljava/lang/String;JJLjava/util/concurrent/atomic/AtomicInteger;)V

    goto/16 :goto_0

    .line 1477
    :cond_5
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v1, v0, v7

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string/jumbo v1, ", no more data."

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1478
    invoke-static {}, Lavh;->a()V

    goto/16 :goto_0

    .line 1481
    :cond_6
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v1, v0, v7

    iget-object v1, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v1, v0, v8

    const-string/jumbo v1, ", save onException"

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 491
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[TooLong2Manager]makeUpNonRepeatCalendar folderId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Larn$12;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", onException code:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 487
    return-void
.end method
