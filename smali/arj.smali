.class public Larj;
.super Ljava/lang/Object;
.source "DingCalendarEventManager.java"

# interfaces
.implements Larm;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation
.end field

.field d:Larc;

.field e:Lard;

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lckr;",
            ">;"
        }
    .end annotation
.end field

.field g:Lati;


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "mUid"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Larj;->f:Ljava/util/Map;

    .line 51
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Larj;->a:J

    .line 52
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Larj;->b:J

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larj;->c:Ljava/util/List;

    .line 59
    new-instance v0, Latg;

    invoke-direct {v0, p1, p2}, Latg;-><init>(J)V

    iput-object v0, p0, Larj;->g:Lati;

    .line 60
    iget-object v0, p0, Larj;->g:Lati;

    new-instance v1, Larj$1;

    invoke-direct {v1, p0}, Larj$1;-><init>(Larj;)V

    invoke-interface {v0, v1}, Lati;->a(Lati$a;)V

    .line 68
    return-void
.end method

.method static synthetic a(Larj;)V
    .locals 2
    .param p0, "x0"    # Larj;

    .prologue
    .line 40
    .line 4241
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Larj$4;

    invoke-direct {v1, p0}, Larj$4;-><init>(Larj;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method static e(Lckq;)J
    .locals 6
    .param p0, "bean"    # Lckq;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3050
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lckq;->a:I

    .line 253
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 3054
    iget v1, p0, Lckq;->b:I

    .line 254
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 255
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 257
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 258
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 259
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 261
    const/4 v1, -0x7

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 262
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method static f(Lckq;)J
    .locals 6
    .param p0, "bean"    # Lckq;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4050
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lckq;->a:I

    .line 267
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 4054
    iget v1, p0, Lckq;->b:I

    .line 268
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 270
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 273
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 274
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 275
    const/16 v1, 0x2a

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 276
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method a(J)Ljava/util/Collection;
    .locals 3
    .param p1, "dayStartMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Larj;->g:Lati;

    invoke-interface {v1}, Lati;->c()Lfp;

    move-result-object v1

    if-nez v1, :cond_0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Larj;->g:Lati;

    invoke-interface {v1}, Lati;->c()Lfp;

    move-result-object v1

    .line 2096
    invoke-virtual {v1, p1, p2, v0}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    check-cast v0, Ljava/util/Collection;

    goto :goto_0
.end method

.method public final a(ZZJ)Ljava/util/List;
    .locals 5
    .param p1, "includeAllDay"    # Z
    .param p2, "includeNotAllDay"    # Z
    .param p3, "dayStartTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/List",
            "<",
            "Laxn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p3, p4}, Larj;->a(J)Ljava/util/Collection;

    move-result-object v2

    .line 150
    .local v2, "localEvents":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "dayEvents":Ljava/util/List;, "Ljava/util/List<Laxn;>;"
    if-eqz v2, :cond_3

    .line 152
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lawv;

    .line 153
    .local v1, "iCalendarDayEvent":Lawv;
    instance-of v3, v1, Laxn;

    if-eqz v3, :cond_0

    .line 156
    if-eqz p1, :cond_1

    move-object v3, v1

    check-cast v3, Laxn;

    invoke-interface {v3}, Laxn;->isAllDay()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    check-cast v3, Laxn;

    invoke-interface {v3}, Laxn;->isCrossDay()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz p2, :cond_0

    move-object v3, v1

    check-cast v3, Laxn;

    .line 157
    invoke-interface {v3}, Laxn;->isAllDay()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Laxn;

    invoke-interface {v3}, Laxn;->isCrossDay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    :cond_2
    check-cast v1, Laxn;

    .end local v1    # "iCalendarDayEvent":Lawv;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_3
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Larj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    iget-object v0, p0, Larj;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    iget-object v0, p0, Larj;->g:Lati;

    invoke-interface {v0}, Lati;->a()V

    .line 219
    return-void
.end method

.method public final a(Larc;)V
    .locals 0
    .param p1, "onCalendarDataChangedListener"    # Larc;

    .prologue
    .line 72
    iput-object p1, p0, Larj;->d:Larc;

    .line 73
    return-void
.end method

.method public final a(Lard;)V
    .locals 0
    .param p1, "onHolidayArrangementChangedListener"    # Lard;

    .prologue
    .line 77
    iput-object p1, p0, Larj;->e:Lard;

    .line 78
    return-void
.end method

.method public a(Lckq;)V
    .locals 0
    .param p1, "bean"    # Lckq;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Larj;->d(Lckq;)V

    .line 83
    invoke-virtual {p0}, Larj;->e()V

    .line 84
    return-void
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .param p1, "curDate"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Larj;->a(J)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Larj;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    invoke-static {}, Lath;->a()Lath;

    move-result-object v0

    new-instance v1, Larj$2;

    invoke-direct {v1, p0}, Larj$2;-><init>(Larj;)V

    .line 1042
    invoke-static {}, Lath;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lath$1;

    invoke-direct {v3, v0, v1}, Lath$1;-><init>(Lath;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public b(Lckq;)V
    .locals 0
    .param p1, "bean"    # Lckq;

    .prologue
    .line 88
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lawv;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 168
    iget-wide v8, p0, Larj;->a:J

    .line 169
    .local v8, "startTimeMillis":J
    iget-wide v0, p0, Larj;->b:J

    .line 170
    .local v0, "endTimeMillis":J
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "[DingCalendarEventManager] genEventsForListView startTime="

    aput-object v11, v10, v13

    invoke-static {v8, v9}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v14

    const/4 v11, 0x2

    const-string/jumbo v12, ", endTime="

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 171
    invoke-static {v0, v1}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 170
    invoke-static {v10}, Lavy;->a([Ljava/lang/String;)V

    .line 173
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 175
    .local v4, "eventMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/List<Lawv;>;>;"
    :cond_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    .line 178
    new-array v10, v14, [Ljava/lang/String;

    const-string/jumbo v11, ""

    aput-object v11, v10, v13

    invoke-static {v10}, Lavy;->a([Ljava/lang/String;)V

    .line 179
    cmp-long v10, v8, v0

    if-ltz v10, :cond_0

    .line 181
    iget-object v10, p0, Larj;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 182
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 183
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lawv;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 2044
    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 184
    .local v6, "startTime":J
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 185
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    if-nez v3, :cond_1

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    :cond_1
    invoke-virtual {p0, v6, v7}, Larj;->a(J)Ljava/util/Collection;

    move-result-object v5

    .line 190
    .local v5, "startTimeEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    if-eqz v5, :cond_2

    .line 191
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    :cond_2
    sget-object v10, Lawo;->a:Ljava/util/Comparator;

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 195
    iget-object v10, p0, Larj;->c:Ljava/util/List;

    new-instance v12, Lawu;

    invoke-static {v6, v7}, Lavz;->a(J)Z

    move-result v13

    invoke-direct {v12, v6, v7, v13}, Lawu;-><init>(JZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 197
    iget-object v10, p0, Larj;->c:Ljava/util/List;

    new-instance v12, Laws;

    invoke-direct {v12, v6, v7}, Laws;-><init>(J)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_3
    iget-object v10, p0, Larj;->c:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 202
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lawv;>;>;"
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lawv;>;"
    .end local v5    # "startTimeEventList":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    .end local v6    # "startTime":J
    :cond_4
    iget-object v10, p0, Larj;->c:Ljava/util/List;

    return-object v10
.end method

.method public c(Lckq;)V
    .locals 0
    .param p1, "bean"    # Lckq;

    .prologue
    .line 92
    return-void
.end method

.method public final c(J)Z
    .locals 3
    .param p1, "timeMills"    # J

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Larj;->a(J)Ljava/util/Collection;

    move-result-object v0

    .line 144
    .local v0, "daySystemCalendarEvents":Ljava/util/Collection;, "Ljava/util/Collection<Lawv;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lckr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Larj;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final d(Lckq;)V
    .locals 6
    .param p1, "bean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 96
    invoke-static {p1}, Larj;->e(Lckq;)J

    move-result-wide v2

    .line 97
    .local v2, "startTime":J
    invoke-static {p1}, Larj;->f(Lckq;)J

    move-result-wide v0

    .line 99
    .local v0, "endTime":J
    iget-wide v4, p0, Larj;->a:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 100
    iput-wide v2, p0, Larj;->a:J

    .line 103
    :cond_0
    iget-wide v4, p0, Larj;->b:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 104
    iput-wide v0, p0, Larj;->b:J

    .line 107
    :cond_1
    iget-object v4, p0, Larj;->g:Lati;

    invoke-interface {v4, v2, v3, v0, v1}, Lati;->a(JJ)V

    .line 108
    return-void
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 230
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Larj$3;

    invoke-direct {v1, p0}, Larj$3;-><init>(Larj;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method
