.class public final Lfyz;
.super Ljava/lang/Object;
.source "TempEventMgr.java"

# interfaces
.implements Lajz$a;
.implements Lalk;
.implements Lfyh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfyz$3;,
        Lfyz$a;
    }
.end annotation


# static fields
.field private static d:Lfyz;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyt;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ScheduledFuture;

.field public c:Ljava/lang/Runnable;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyy;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyy;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfyy;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/util/concurrent/ScheduledFuture;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lfyz;

    invoke-direct {v0}, Lfyz;-><init>()V

    sput-object v0, Lfyz;->d:Lfyz;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfyz;->e:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfyz;->f:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfyz;->g:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfyz;->a:Ljava/util/List;

    .line 36
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lfyz;->h:J

    .line 37
    iput-object v2, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 38
    iput-object v2, p0, Lfyz;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 39
    new-instance v0, Lfyz$1;

    invoke-direct {v0, p0}, Lfyz$1;-><init>(Lfyz;)V

    iput-object v0, p0, Lfyz;->c:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lfyz$2;

    invoke-direct {v0, p0}, Lfyz$2;-><init>(Lfyz;)V

    iput-object v0, p0, Lfyz;->j:Ljava/lang/Runnable;

    .line 54
    invoke-static {p0}, Lfyh;->a(Lfyh$a;)V

    .line 55
    invoke-static {}, Lalj;->a()Lalj;

    move-result-object v0

    .line 1042
    iget-object v0, v0, Lalj;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v0

    const-string/jumbo v1, "offline_duration"

    invoke-virtual {v0, v1, p0}, Lajz;->a(Ljava/lang/String;Lajz$a;)V

    .line 57
    invoke-static {}, Lanh;->a()Lanh;

    new-instance v0, Lfyz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfyz$a;-><init>(Lfyz;B)V

    invoke-static {v0}, Lanh;->a(Ljava/lang/Runnable;)V

    .line 58
    invoke-direct {p0}, Lfyz;->f()V

    .line 59
    return-void
.end method

.method static synthetic a(Lfyz;)V
    .locals 22
    .param p0, "x0"    # Lfyz;

    .prologue
    .line 24
    .line 10195
    invoke-static {}, Lamu;->b()V

    .line 10196
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    aget-object v17, v15, v14

    .line 11164
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 11165
    invoke-static {}, Lfyz;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v4, v2, v4

    .line 11166
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 11621
    iget-object v3, v2, Lajw;->m:Lako;

    .line 12174
    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_0

    .line 12175
    const-class v2, Lfyw;

    .line 11166
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "commit_time<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "access,sub_access,module,monitor_point"

    const/16 v6, 0x1f4

    invoke-virtual {v3, v2, v4, v5, v6}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 10199
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "events.size()"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10200
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 10203
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_6

    .line 10204
    sget-object v2, Lfyz$3;->a:[I

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/event/EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 10203
    :goto_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 12176
    :cond_0
    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_1

    .line 12177
    const-class v2, Lfyx;

    goto :goto_2

    .line 12178
    :cond_1
    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_2

    .line 12179
    const-class v2, Lfza;

    goto :goto_2

    .line 12181
    :cond_2
    const-class v2, Lfyy;

    goto :goto_2

    .line 10206
    :pswitch_0
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lfyw;

    .line 13032
    const-string/jumbo v2, "1"

    iget-object v3, v11, Lfyw;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 10207
    if-eqz v2, :cond_3

    .line 10208
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    iget-object v4, v11, Lfyw;->f:Ljava/lang/String;

    iget-object v5, v11, Lfyw;->g:Ljava/lang/String;

    iget-object v6, v11, Lfyw;->c:Ljava/lang/String;

    iget-wide v8, v11, Lfyw;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v11, Lfyw;->i:Ljava/lang/String;

    iget-object v9, v11, Lfyw;->j:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 10210
    :cond_3
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    iget-object v4, v11, Lfyw;->f:Ljava/lang/String;

    iget-object v5, v11, Lfyw;->g:Ljava/lang/String;

    iget-object v6, v11, Lfyw;->c:Ljava/lang/String;

    iget-object v7, v11, Lfyw;->a:Ljava/lang/String;

    iget-object v8, v11, Lfyw;->b:Ljava/lang/String;

    iget-wide v0, v11, Lfyw;->h:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v11, Lfyw;->i:Ljava/lang/String;

    iget-object v11, v11, Lfyw;->j:Ljava/lang/String;

    invoke-virtual/range {v2 .. v11}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 10214
    :pswitch_1
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfyx;

    .line 10215
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v4

    iget-object v5, v2, Lfyx;->f:Ljava/lang/String;

    iget-object v6, v2, Lfyx;->g:Ljava/lang/String;

    iget-object v7, v2, Lfyx;->a:Ljava/lang/String;

    iget-wide v8, v2, Lfyx;->b:D

    iget-wide v10, v2, Lfyx;->h:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v2, Lfyx;->i:Ljava/lang/String;

    iget-object v12, v2, Lfyx;->j:Ljava/lang/String;

    invoke-virtual/range {v3 .. v12}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 10218
    :pswitch_2
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lfza;

    .line 10219
    invoke-static {}, Lfyq;->a()Lfyq;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    iget-object v4, v7, Lfza;->f:Ljava/lang/String;

    iget-object v5, v7, Lfza;->g:Ljava/lang/String;

    .line 14031
    iget-object v6, v7, Lfza;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 14032
    iget-object v6, v7, Lfza;->b:Ljava/lang/String;

    const-class v8, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {v6, v8}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 14038
    :goto_5
    iget-object v8, v7, Lfza;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 14039
    iget-object v7, v7, Lfza;->a:Ljava/lang/String;

    const-class v8, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-static {v7, v8}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 10219
    :goto_6
    invoke-virtual/range {v2 .. v7}, Lfyq;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    goto/16 :goto_4

    .line 14034
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 14041
    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .line 14229
    :cond_6
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 14621
    iget-object v2, v2, Lajw;->m:Lako;

    .line 14229
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lako;->b(Ljava/util/List;)I

    goto/16 :goto_1

    .line 10196
    :cond_7
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_0

    .line 24
    :cond_8
    return-void

    .line 10204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lakp;>;"
    const/4 v6, 0x0

    .line 295
    .line 6308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 6309
    const/4 v2, 0x5

    const/4 v3, -0x7

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 6310
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 6311
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 6621
    iget-object v1, v1, Lajw;->m:Lako;

    .line 6311
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "commit_time< "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v6}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 7621
    iget-object v1, v1, Lajw;->m:Lako;

    .line 296
    invoke-virtual {v1, p1}, Lako;->b(Ljava/lang/Class;)I

    move-result v0

    .line 297
    .local v0, "count":I
    const v1, 0xc350

    if-le v0, v1, :cond_0

    .line 8303
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 8621
    iget-object v1, v1, Lajw;->m:Lako;

    .line 8303
    invoke-virtual {v1, p1}, Lako;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 8304
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 9621
    iget-object v2, v2, Lajw;->m:Lako;

    .line 8304
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " _id in ( select _id from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "  ORDER BY  _id ASC LIMIT 10000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1, v6}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 300
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 5621
    iget-object v1, v1, Lajw;->m:Lako;

    .line 129
    invoke-virtual {v1, v0}, Lako;->a(Ljava/util/List;)V

    goto :goto_0

    .line 128
    .end local v0    # "temp":Ljava/util/ArrayList;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lfyt;
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 1621
    iget-object v2, v2, Lajw;->m:Lako;

    .line 99
    const-class v3, Lfyt;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "module=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" and monitor_point=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lfyt;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfyt;

    .line 104
    :cond_0
    return-object v1
.end method

.method static synthetic b(Lfyz;)V
    .locals 1
    .param p0, "x0"    # Lfyz;

    .prologue
    .line 24
    .line 15287
    const-class v0, Lfyw;

    invoke-direct {p0, v0}, Lfyz;->a(Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method static synthetic c(Lfyz;)V
    .locals 1
    .param p0, "x0"    # Lfyz;

    .prologue
    .line 24
    .line 16283
    const-class v0, Lfyx;

    invoke-direct {p0, v0}, Lfyz;->a(Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method public static d()Lfyz;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lfyz;->d:Lfyz;

    return-object v0
.end method

.method static synthetic d(Lfyz;)V
    .locals 1
    .param p0, "x0"    # Lfyz;

    .prologue
    .line 24
    .line 16291
    const-class v0, Lfza;

    invoke-direct {p0, v0}, Lfyz;->a(Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method private f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 252
    invoke-static {}, Lfyz;->g()J

    move-result-wide v0

    .line 253
    .local v0, "duration":J
    iget-wide v2, p0, Lfyz;->h:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 254
    iput-wide v0, p0, Lfyz;->h:J

    .line 255
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v2, p0, Lfyz;->i:Ljava/util/concurrent/ScheduledFuture;

    iget-object v3, p0, Lfyz;->j:Ljava/lang/Runnable;

    iget-wide v4, p0, Lfyz;->h:J

    invoke-static {v2, v3, v4, v5}, Lanh;->b(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lfyz;->i:Ljava/util/concurrent/ScheduledFuture;

    .line 257
    :cond_0
    return-void
.end method

.method private static g()J
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v1

    const-string/jumbo v2, "offline_duration"

    invoke-virtual {v1, v2}, Lajz;->b(Ljava/lang/String;)I

    move-result v0

    .line 262
    .local v0, "duration":I
    if-gtz v0, :cond_0

    .line 263
    const v0, 0x1499700

    .line 269
    :goto_0
    int-to-long v2, v0

    return-wide v2

    .line 264
    :cond_0
    const/16 v1, 0xe10

    if-gt v0, v1, :cond_1

    .line 265
    const v0, 0x36ee80

    goto :goto_0

    .line 267
    :cond_1
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 234
    invoke-static {}, Lamu;->b()V

    .line 235
    invoke-virtual {p0}, Lfyz;->e()V

    .line 236
    return-void
.end method

.method public final a(Lcom/alibaba/appmonitor/event/EventType;Lfyy;)V
    .locals 4
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "event"    # Lfyy;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v1, 0x64

    .line 69
    invoke-static {}, Lamu;->b()V

    .line 70
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_3

    .line 71
    iget-object v0, p0, Lfyz;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lfyz;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lfyz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lfyz;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 78
    :cond_1
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v0, 0x0

    iget-object v1, p0, Lfyz;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 82
    :cond_2
    :goto_1
    return-void

    .line 72
    :cond_3
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_4

    .line 73
    iget-object v0, p0, Lfyz;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_4
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_0

    .line 75
    iget-object v0, p0, Lfyz;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_5
    iget-object v0, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_6
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lfyz;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string/jumbo v0, "offline_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lfyz;->f()V

    .line 249
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 186
    invoke-static {}, Lamu;->b()V

    .line 187
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v0, 0x0

    iget-object v1, p0, Lfyz;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 188
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public final e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 112
    invoke-static {}, Lamu;->b()V

    .line 113
    iget-object v0, p0, Lfyz;->e:Ljava/util/List;

    invoke-static {v0}, Lfyz;->a(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lfyz;->f:Ljava/util/List;

    invoke-static {v0}, Lfyz;->a(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lfyz;->g:Ljava/util/List;

    invoke-static {v0}, Lfyz;->a(Ljava/util/List;)V

    .line 116
    iget-object v2, p0, Lfyz;->a:Ljava/util/List;

    .line 2134
    if-eqz v2, :cond_3

    .line 2137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2139
    monitor-enter v2

    .line 2140
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2141
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfyt;

    .line 3121
    iget-object v5, v0, Lfyt;->a:Ljava/lang/String;

    .line 3125
    iget-object v6, v0, Lfyt;->b:Ljava/lang/String;

    .line 2142
    invoke-static {v5, v6}, Lfyz;->b(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v5

    .line 2143
    if-eqz v5, :cond_0

    .line 2144
    iget-wide v6, v5, Lfyt;->e:J

    iput-wide v6, v0, Lfyt;->e:J

    .line 2145
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2140
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2147
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2151
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2150
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2151
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2153
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 3621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 2153
    invoke-virtual {v0, v3}, Lako;->c(Ljava/util/List;)V

    .line 2155
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2156
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 4621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 2156
    invoke-virtual {v0, v4}, Lako;->a(Ljava/util/List;)V

    .line 117
    :cond_3
    return-void
.end method
