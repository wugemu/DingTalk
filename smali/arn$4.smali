.class final Larn$4;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larn;->a(Lasp;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V
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
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lasp;

.field final synthetic d:Larn;


# direct methods
.method constructor <init>(Larn;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/wukong/Callback;Lasp;)V
    .locals 0
    .param p1, "this$0"    # Larn;

    .prologue
    .line 616
    iput-object p1, p0, Larn$4;->d:Larn;

    iput-object p2, p0, Larn$4;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Larn$4;->c:Lasp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 616
    check-cast p1, Lasa;

    .line 1619
    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v0, "[TooLong2Manager]loadNonRepeatCalendarByFolderId onDataReceived calendarListObject="

    aput-object v0, v1, v8

    if-eqz p1, :cond_1

    .line 1620
    invoke-virtual {p1}, Lasa;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v9

    const-string/jumbo v0, ",counter="

    aput-object v0, v1, v10

    iget-object v0, p0, Larn$4;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    .line 1619
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1621
    if-nez p1, :cond_2

    .line 1622
    iget-object v0, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1659
    :cond_0
    :goto_1
    return-void

    .line 1620
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 2021
    :cond_2
    iget-object v0, p1, Lasa;->a:Ljava/util/List;

    .line 2025
    iget-boolean v1, p1, Lasa;->b:Z

    .line 1638
    invoke-static {}, Lark;->a()Lark;

    move-result-object v2

    iget-object v3, p0, Larn$4;->c:Lasp;

    .line 2033
    iget-object v3, v3, Lasp;->a:Ljava/lang/String;

    .line 1638
    invoke-virtual {v2, v3}, Lark;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 1639
    iget-object v4, p0, Larn$4;->c:Lasp;

    .line 2041
    iget-wide v4, v4, Lasp;->c:J

    .line 1639
    cmp-long v4, v4, v2

    if-ltz v4, :cond_4

    .line 1640
    if-nez v1, :cond_5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1641
    :cond_3
    invoke-static {}, Lark;->a()Lark;

    move-result-object v4

    iget-object v5, p0, Larn$4;->c:Lasp;

    .line 3033
    iget-object v5, v5, Lasp;->a:Ljava/lang/String;

    .line 1641
    iget-object v6, p0, Larn$4;->c:Lasp;

    .line 3037
    iget-wide v6, v6, Lasp;->b:J

    .line 1641
    invoke-virtual {v4, v5, v6, v7}, Lark;->b(Ljava/lang/String;J)V

    .line 1642
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[TooLong2Manager]loadCalendarInSectionIfNecessary setNonRepeatStartAnchor folderId: "

    aput-object v5, v4, v8

    iget-object v5, p0, Larn$4;->c:Lasp;

    .line 4033
    iget-object v5, v5, Lasp;->a:Ljava/lang/String;

    .line 1643
    aput-object v5, v4, v9

    const-string/jumbo v5, ", newNonRepeatCalendarDataAnchor:"

    aput-object v5, v4, v10

    iget-object v5, p0, Larn$4;->c:Lasp;

    .line 4037
    iget-wide v6, v5, Lasp;->b:J

    .line 1643
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const-string/jumbo v5, ", nonRepeatCalendarDataAnchor="

    aput-object v5, v4, v12

    const/4 v5, 0x5

    .line 1644
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 1642
    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 1654
    :cond_4
    :goto_2
    iget-object v2, p0, Larn$4;->d:Larn;

    .line 6042
    iget-object v2, v2, Larn;->a:Lapw;

    .line 1654
    invoke-virtual {v2, v0}, Lapw;->a(Ljava/util/List;)Z

    .line 1655
    if-nez v1, :cond_6

    .line 1656
    iget-object v0, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 1646
    :cond_5
    iget-object v4, p0, Larn$4;->d:Larn;

    invoke-static {v4, v0}, Larn;->a(Larn;Ljava/util/List;)J

    move-result-wide v4

    .line 1647
    invoke-static {}, Lark;->a()Lark;

    move-result-object v6

    iget-object v7, p0, Larn$4;->c:Lasp;

    .line 5033
    iget-object v7, v7, Lasp;->a:Ljava/lang/String;

    .line 1647
    invoke-virtual {v6, v7, v4, v5}, Lark;->b(Ljava/lang/String;J)V

    .line 1648
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[TooLong2Manager]loadCalendarInSectionIfNecessary setNonRepeatStartAnchor folderId: "

    aput-object v7, v6, v8

    iget-object v7, p0, Larn$4;->c:Lasp;

    .line 6033
    iget-object v7, v7, Lasp;->a:Ljava/lang/String;

    .line 1649
    aput-object v7, v6, v9

    const-string/jumbo v7, ", newNonRepeatCalendarDataAnchor:"

    aput-object v7, v6, v10

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v11

    const-string/jumbo v4, ", nonRepeatCalendarDataAnchor="

    aput-object v4, v6, v12

    const/4 v4, 0x5

    .line 1650
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    .line 1648
    invoke-static {v6}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 1661
    :cond_6
    iget-object v0, p0, Larn$4;->d:Larn;

    iget-object v1, p0, Larn$4;->c:Lasp;

    iget-object v2, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Larn$4;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7042
    invoke-virtual {v0, v1, v2, v3}, Larn;->a(Lasp;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 670
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[TooLong2Manager]loadNonRepeatCalendarByFolderId onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", reqNonRepeatObject="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Larn$4;->c:Lasp;

    .line 671
    invoke-virtual {v2}, Lasp;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 670
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Larn$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 666
    return-void
.end method
