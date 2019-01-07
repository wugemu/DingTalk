.class final Latg$3;
.super Ljava/lang/Object;
.source "DingCalendarEventProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Latg;


# direct methods
.method constructor <init>(Latg;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Latg;

    .prologue
    .line 91
    iput-object p1, p0, Latg$3;->b:Latg;

    iput-object p2, p0, Latg$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 94
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[DingCalendarEventProvider] handleInstanceEvent size="

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Latg$3;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Latg$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Latg$3;->b:Latg;

    iget-object v1, p0, Latg$3;->a:Ljava/util/List;

    .line 1105
    iget-object v0, v6, Latg;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 1106
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCalendarEventProvider]handleLocalInstanceEvent update size="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Latg$3;->b:Latg;

    iget-object v2, v2, Latg;->a:Lfp;

    .line 97
    invoke-virtual {v2}, Lfp;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Latg$3;->b:Latg;

    invoke-virtual {v0}, Latg;->b()V

    .line 99
    return-void

    .line 94
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 2131
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1112
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1115
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 1116
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->isShare()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1117
    invoke-static {v0}, Lawc;->e(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lawc;->f(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1120
    :cond_5
    if-eqz v0, :cond_4

    .line 1121
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->isAllDayEvent()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1122
    new-instance v1, Landroid/text/format/Time;

    const-string/jumbo v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1124
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 1126
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1127
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1128
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1129
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1130
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1131
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1132
    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1133
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1135
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1136
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 1137
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1138
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1139
    const/4 v2, 0x1

    iget v1, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1140
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1151
    :cond_6
    :goto_3
    iget-object v1, v6, Latg;->a:Lfp;

    .line 3096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1151
    if-nez v1, :cond_7

    .line 1152
    iget-object v1, v6, Latg;->a:Lfp;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5, v9}, Lfp;->b(JLjava/lang/Object;)V

    .line 1154
    :cond_7
    iget-object v1, v6, Latg;->a:Lfp;

    .line 4096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1154
    check-cast v1, Ljava/util/Collection;

    new-instance v9, Lawx;

    invoke-direct {v9, v4, v5, v0}, Lawx;-><init>(JLcom/alibaba/android/calendar/data/object/InstanceShowObject;)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1155
    const-wide/32 v10, 0x5265c00

    add-long/2addr v4, v10

    .line 1156
    cmp-long v1, v4, v2

    if-ltz v1, :cond_6

    goto/16 :goto_2

    .line 2135
    :cond_8
    invoke-static {}, Lavi;->e()Z

    move-result v2

    .line 2136
    invoke-static {}, Lavi;->f()Z

    move-result v3

    .line 2137
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->j()Z

    move-result v4

    .line 2138
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "[InstanceShowObjectUtils]filterBySource: showAttendanceEvent="

    aput-object v7, v0, v5

    const/4 v5, 0x1

    .line 2139
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ",showJournalEvent="

    aput-object v7, v0, v5

    const/4 v5, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    const/4 v5, 0x4

    const-string/jumbo v7, ", isDingNewTab:"

    aput-object v7, v0, v5

    const/4 v5, 0x5

    .line 2140
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 2138
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 2142
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2143
    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2144
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 2145
    if-nez v0, :cond_a

    .line 2146
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 2151
    :cond_a
    invoke-static {v0}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v0}, Lawc;->i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2152
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 2155
    :cond_b
    if-nez v2, :cond_c

    invoke-static {v0}, Lawc;->n(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2156
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 2159
    :cond_c
    if-nez v3, :cond_d

    invoke-static {v0}, Lawc;->m(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2160
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2162
    :cond_d
    if-nez v4, :cond_9

    invoke-static {v0}, Lawc;->o(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2163
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 1142
    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRealInstanceStartTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1143
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1144
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1145
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1146
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1147
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1148
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getInstanceEndTimeMillis()J

    move-result-wide v2

    goto/16 :goto_3

    .line 1160
    :cond_f
    invoke-virtual {v6}, Latg;->d()V

    goto/16 :goto_1
.end method
