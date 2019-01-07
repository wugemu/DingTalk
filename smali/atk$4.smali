.class final Latk$4;
.super Ljava/lang/Object;
.source "SystemCalendarEventProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Latk;


# direct methods
.method constructor <init>(Latk;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Latk;

    .prologue
    .line 142
    iput-object p1, p0, Latk$4;->b:Latk;

    iput-object p2, p0, Latk$4;->a:Ljava/util/List;

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
    .line 145
    iget-object v6, p0, Latk$4;->b:Latk;

    iget-object v0, p0, Latk$4;->a:Ljava/util/List;

    .line 1155
    iget-object v1, v6, Latk;->a:Lfp;

    invoke-virtual {v1}, Lfp;->b()V

    .line 1156
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[SystemCalendarEventProvider]handleSystemEvents update size="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Latk$4;->b:Latk;

    iget-object v2, v2, Latk;->a:Lfp;

    .line 147
    invoke-virtual {v2}, Lfp;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 146
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Latk$4;->b:Latk;

    invoke-virtual {v0}, Latk;->b()V

    .line 149
    return-void

    .line 1160
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1163
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 1164
    if-eqz v0, :cond_2

    .line 1165
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1166
    new-instance v1, Landroid/text/format/Time;

    const-string/jumbo v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1168
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 1170
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1171
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1172
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1173
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1174
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1175
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1176
    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1177
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1179
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1180
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    .line 1181
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1182
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1183
    const/4 v2, 0x1

    iget v1, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1184
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1195
    :cond_3
    :goto_1
    iget-object v1, v6, Latk;->a:Lfp;

    .line 2096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1195
    if-nez v1, :cond_4

    .line 1196
    iget-object v1, v6, Latk;->a:Lfp;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5, v9}, Lfp;->b(JLjava/lang/Object;)V

    .line 1198
    :cond_4
    iget-object v1, v6, Latk;->a:Lfp;

    .line 3096
    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1198
    check-cast v1, Ljava/util/Collection;

    new-instance v9, Lasv;

    invoke-direct {v9, v4, v5, v0}, Lasv;-><init>(JLcom/alibaba/android/calendar/data/object/SystemEvent;)V

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1199
    const-wide/32 v10, 0x5265c00

    add-long/2addr v4, v10

    .line 1200
    cmp-long v1, v4, v2

    if-ltz v1, :cond_3

    goto/16 :goto_0

    .line 1186
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1187
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1188
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1189
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1190
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1191
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1192
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEnd()J

    move-result-wide v2

    goto :goto_1
.end method
