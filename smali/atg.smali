.class public final Latg;
.super Late;
.source "DingCalendarEventProvider.java"


# instance fields
.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "userId"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Late;-><init>()V

    .line 32
    iput-wide p1, p0, Latg;->b:J

    .line 33
    return-void
.end method

.method static synthetic a(Latg;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Latg;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 26
    .line 3091
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Latg$3;

    invoke-direct {v1, p0, p1}, Latg$3;-><init>(Latg;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCalendarEventProvider]loadEvent userId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Latg;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", startTime="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 38
    invoke-static {p1, p2}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", endTime="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 39
    invoke-static {p3, p4}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 37
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 41
    iget-wide v0, p0, Latg;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 42
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    iget-wide v2, p0, Latg;->b:J

    new-instance v8, Latg$1;

    invoke-direct {v8, p0}, Latg$1;-><init>(Latg;)V

    .line 1173
    iget-object v9, v1, Latf;->a:Latf$b;

    new-instance v0, Latf$32;

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v8}, Latf$32;-><init>(Latf;JJJLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v9, v0}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 83
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    new-instance v6, Latg$2;

    invoke-direct {v6, p0}, Latg$2;-><init>(Latg;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Latf;->a(JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final c()Lfp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfp",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lawv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Latg;->a:Lfp;

    return-object v0
.end method

.method d()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-static {}, Lavi;->g()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v6, "[DingCalendarEventProvider] traceDayEventsMap close."

    aput-object v6, v3, v8

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v3, p0, Latg;->a:Lfp;

    invoke-virtual {v3}, Lfp;->a()I

    move-result v3

    if-gtz v3, :cond_2

    .line 171
    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v6, "[DingCalendarEventProvider] traceDayEventsMap mDayEventsMap.isEmpty"

    aput-object v6, v3, v8

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v6, "[DingCalendarEventProvider] traceDayEventsMap size="

    aput-object v6, v3, v8

    iget-object v6, p0, Latg;->a:Lfp;

    invoke-virtual {v6}, Lfp;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Latg;->a:Lfp;

    invoke-virtual {v3}, Lfp;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 177
    iget-object v3, p0, Latg;->a:Lfp;

    invoke-virtual {v3, v2}, Lfp;->a(I)J

    move-result-wide v4

    .line 178
    .local v4, "startTimeMillis":J
    iget-object v3, p0, Latg;->a:Lfp;

    .line 2096
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    check-cast v1, Ljava/util/Collection;

    .line 179
    .local v1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    if-eqz v1, :cond_4

    .line 183
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "[DingCalendarEventProvider] traceDayEventsMap date="

    aput-object v6, v3, v8

    invoke-static {v4, v5}, Lcog;->j(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    const-string/jumbo v6, ", event.size="

    aput-object v6, v3, v10

    const/4 v6, 0x3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 184
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawv;

    .line 185
    .local v0, "event":Lawv;
    instance-of v6, v0, Lawx;

    if-eqz v6, :cond_3

    .line 186
    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "[DingCalendarEventProvider] traceDayEventsMap event="

    aput-object v7, v6, v8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 176
    .end local v0    # "event":Lawv;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
