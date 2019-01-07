.class public final Lagq;
.super Lagn;
.source "ReminderOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagn",
        "<",
        "Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lagq;-><init>(Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isSync"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lagn;-><init>(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)J
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 37
    const-string/jumbo v1, "event_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 38
    .local v0, "eventIdObj":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Reminders values must contain a numeric event_id"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    iget-boolean v1, p0, Lagq;->b:Z

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lagq;->d:Lagj;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lagj;->a(J)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lagq;->b(J)V

    .line 46
    :cond_1
    iget-object v1, p0, Lagq;->d:Lagj;

    invoke-virtual {v1, p1}, Lagj;->f(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 50
    .local v2, "id":J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1143
    const-string/jumbo v6, "hasAlarm"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    iget-object v6, p0, Lagq;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v7, "Events"

    const-string/jumbo v8, "_id=?"

    new-array v9, v11, [Ljava/lang/String;

    .line 1145
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    .line 1144
    invoke-interface {v6, v7, v1, v8, v9}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1146
    if-eq v1, v11, :cond_2

    .line 1147
    const-string/jumbo v6, "ReminderOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setHasAlarm on event "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " rows (expected 1)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2
    const-string/jumbo v1, "alarm"

    const-string/jumbo v4, "RemindOperation->save()"

    invoke-static {v1, v4}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lagq;->d:Lagj;

    invoke-virtual {v1, v12, v11}, Lagj;->a(ZZ)V

    .line 57
    return-wide v2
.end method

.method public final a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;)J
    .locals 6
    .param p1, "data"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 30
    .line 1121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->event_Id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1123
    const-string/jumbo v1, "event_id"

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->event_Id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1126
    :cond_0
    const-string/jumbo v1, "method"

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->method:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1128
    const-string/jumbo v1, "minutes"

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Reminders;->minutes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lagq;->a(Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method
