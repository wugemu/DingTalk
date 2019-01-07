.class final Larn$2;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larn;->a(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicInteger;)V
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

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Larn;


# direct methods
.method constructor <init>(Larn;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Larn;

    .prologue
    .line 517
    iput-object p1, p0, Larn$2;->c:Larn;

    iput-object p2, p0, Larn$2;->a:Ljava/lang/String;

    iput-object p3, p0, Larn$2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 517
    check-cast p1, Lasa;

    .line 1520
    if-nez p1, :cond_0

    .line 1521
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v1, v0, v2

    iget-object v1, p0, Larn$2;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, ", calendarListObject = null."

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1522
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lark;->b(Ljava/lang/String;Z)V

    .line 1538
    :goto_0
    return-void

    .line 2021
    :cond_0
    iget-object v0, p1, Lasa;->a:Ljava/util/List;

    .line 1525
    if-eqz v0, :cond_1

    .line 3021
    iget-object v0, p1, Lasa;->a:Ljava/util/List;

    .line 1525
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1526
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v1, v0, v2

    iget-object v1, p0, Larn$2;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, ", repeat data is empty"

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1527
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lark;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1530
    :cond_2
    iget-object v0, p0, Larn$2;->c:Larn;

    .line 3042
    iget-object v0, v0, Larn;->a:Lapw;

    .line 4021
    iget-object v1, p1, Lasa;->a:Ljava/util/List;

    .line 1530
    invoke-virtual {v0, v1}, Lapw;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1531
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v1, v0, v2

    iget-object v1, p0, Larn$2;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, ", save calendarObjects exception."

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 4025
    :cond_3
    iget-boolean v0, p1, Lasa;->b:Z

    .line 1534
    if-nez v0, :cond_4

    .line 1535
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v1, v0, v2

    iget-object v1, p0, Larn$2;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, ", hasMore: false"

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1536
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lark;->b(Ljava/lang/String;Z)V

    .line 1537
    invoke-static {}, Lavh;->a()V

    goto :goto_0

    .line 1540
    :cond_4
    iget-object v0, p0, Larn$2;->c:Larn;

    .line 5021
    iget-object v1, p1, Lasa;->a:Ljava/util/List;

    .line 1540
    invoke-static {v0, v1}, Larn;->b(Larn;Ljava/util/List;)J

    move-result-wide v0

    .line 1541
    invoke-static {}, Lark;->a()Lark;

    move-result-object v2

    iget-object v3, p0, Larn$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lark;->a(Ljava/lang/String;J)V

    .line 1542
    iget-object v2, p0, Larn$2;->c:Larn;

    iget-object v3, p0, Larn$2;->a:Ljava/lang/String;

    iget-object v4, p0, Larn$2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5042
    invoke-virtual {v2, v3, v0, v1, v4}, Larn;->a(Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicInteger;)V

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
    .line 551
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[TooLong2Manager]makeUpRepeatCalendar folderId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Larn$2;->a:Ljava/lang/String;

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

    .line 552
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 547
    return-void
.end method
