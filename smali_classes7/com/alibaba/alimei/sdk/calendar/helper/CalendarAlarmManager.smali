.class public Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;
.super Ljava/lang/Object;
.source "CalendarAlarmManager.java"


# instance fields
.field protected a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected b:Ljava/lang/Object;

.field protected c:Landroid/content/Context;

.field private d:Landroid/os/PowerManager$WakeLock;

.field private e:Landroid/app/AlarmManager;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    .line 1149
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1150
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->e:Landroid/app/AlarmManager;

    .line 1152
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->b:Ljava/lang/Object;

    .line 1638
    const-string/jumbo v0, "calendar.db"

    .line 1154
    invoke-static {v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(Lcom/alibaba/alimei/orm/IDatabase;)V

    .line 145
    return-void
.end method

.method private a(IJLandroid/app/PendingIntent;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 715
    const-string/jumbo v1, "alarm"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "isAlarmEnable:"

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->f:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->f:Z

    if-nez v1, :cond_0

    .line 737
    :goto_0
    return-void

    .line 720
    :cond_0
    :try_start_0
    const-string/jumbo v1, "alarm"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "set"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 721
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 722
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->f:Z

    .line 723
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 720
    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->e:Landroid/app/AlarmManager;

    invoke-static {v1, p1, p2, p3, p4}, Lyv;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 735
    const-string/jumbo v1, "alarm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "calendar alarmManager set fail tr = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 9
    .param p1, "triggerTime"    # J

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 302
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 328
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "alibaba.alimei.action.event.reminder"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    const-class v5, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarReceiver;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_2

    .line 308
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    :goto_1
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    const/high16 v5, 0x20000000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 314
    .local v1, "pending":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    .line 316
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(Landroid/app/PendingIntent;)V

    .line 318
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 321
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 322
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 323
    const-string/jumbo v4, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "triggerTimeStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CalendarAlarmManager scheduleNextAlarmCheck at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->d(Ljava/lang/String;)I

    .line 327
    invoke-direct {p0, v6, p1, p2, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 310
    .end local v1    # "pending":Landroid/app/PendingIntent;
    .end local v2    # "time":Landroid/text/format/Time;
    .end local v3    # "triggerTimeStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private a(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 740
    const-string/jumbo v1, "alarm"

    const-string/jumbo v2, "cancel"

    invoke-static {v1, v2}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->e:Landroid/app/AlarmManager;

    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "calendar alarmManager cancel fail tr = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/alimei/orm/IDatabase;)V
    .locals 3
    .param p0, "db"    # Lcom/alibaba/alimei/orm/IDatabase;

    .prologue
    .line 700
    const-string/jumbo v0, "alarm"

    const-string/jumbo v1, "[removeScheduledAlarmsLocked]removing scheduled alarms"

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    if-nez p0, :cond_0

    .line 702
    const-string/jumbo v0, "alarm"

    const-string/jumbo v1, "[removeScheduledAlarmsLocked] db is null"

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    const-string/jumbo v0, "CalendarAlerts"

    const-string/jumbo v1, "state=0"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(J)V
    .locals 7
    .param p1, "alarmTime"    # J

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 750
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->e:Landroid/app/AlarmManager;

    .line 4779
    if-eqz v1, :cond_0

    .line 4782
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 4783
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 4784
    const-string/jumbo v3, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4785
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CalendarAlarmManager Schedule alarm at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->d(Ljava/lang/String;)I

    .line 4787
    if-nez v0, :cond_2

    .line 4788
    const-string/jumbo v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4791
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "alibaba.alimei.action.event.reminder"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4792
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_3

    .line 4793
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4797
    :goto_1
    const-string/jumbo v3, "alarmTime"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4798
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4800
    invoke-static {v0, v5, p1, p2, v1}, Lyv;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 4795
    :cond_3
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x20

    .line 215
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.alibaba.alimei.calendar.intent.alarm"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    .line 221
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    :goto_1
    const-string/jumbo v2, "removeAlarms"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x20000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 228
    .local v1, "pending":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 230
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 223
    .end local v1    # "pending":Landroid/app/PendingIntent;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "removeAlarms"    # Z

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(ZZ)V

    .line 212
    return-void
.end method

.method public final a(ZZ)V
    .locals 11
    .param p1, "removeAlarms"    # Z
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 158
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string/jumbo v6, "alarm"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[scheduleNextAlarm]call stack, removeAlarm = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 175
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", mNextAlarmCheck = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    .line 176
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 174
    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 178
    :cond_2
    const-string/jumbo v6, "alarm"

    const-string/jumbo v7, "[scheduleNextAlarm]Scheduling check of next Alarm"

    invoke-static {v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.alibaba.alimei.calendar.intent.alarm"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_4

    .line 183
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    :goto_1
    const-string/jumbo v6, "removeAlarms"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x20000000

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 190
    .local v1, "pending":Landroid/app/PendingIntent;
    if-eqz v1, :cond_3

    .line 192
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(Landroid/app/PendingIntent;)V

    .line 194
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long v2, v6, v8

    .line 199
    .local v2, "triggerAtTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long v4, v6, v8

    .line 201
    .local v4, "triggerAtTime2":J
    const/4 v6, 0x2

    invoke-direct {p0, v6, v4, v5, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(IJLandroid/app/PendingIntent;)V

    .line 203
    const-string/jumbo v6, "alarm"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[scheduleNextAlarm]triggerAtTime = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 204
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ", triggerAtTime2 = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 205
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ", removeAlarms = "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 203
    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v1    # "pending":Landroid/app/PendingIntent;
    .end local v2    # "triggerAtTime":J
    .end local v4    # "triggerAtTime2":J
    :cond_4
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final b()Landroid/os/PowerManager$WakeLock;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 251
    :goto_0
    return-object v1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->d:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->c:Landroid/content/Context;

    const-string/jumbo v2, "power"

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 243
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "ScheduleNextAlarmWakeLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->d:Landroid/os/PowerManager$WakeLock;

    .line 249
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 251
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->d:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method final b(Z)V
    .locals 33
    .param p1, "removeAlarms"    # Z

    .prologue
    .line 2638
    const-string/jumbo v5, "calendar.db"

    .line 281
    invoke-static {v5}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v4

    .line 282
    .local v4, "db":Lcom/alibaba/alimei/orm/IDatabase;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/alibaba/alimei/orm/IDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    invoke-interface {v4}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 290
    if-eqz p1, :cond_2

    .line 291
    :try_start_0
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(Lcom/alibaba/alimei/orm/IDatabase;)V

    .line 3355
    :cond_2
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 3357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 3358
    const-wide/32 v6, 0x6ddd00

    sub-long v6, v18, v6

    .line 3359
    const-wide/32 v8, 0x5265c00

    add-long/2addr v8, v6

    .line 3360
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 3361
    const-string/jumbo v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3362
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "CalendarAlarmManager runScheduleNextAlarm() start search: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3371
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    const-wide/32 v12, 0x247a6100

    sub-long v12, v18, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 3374
    const-string/jumbo v10, "CalendarAlerts"

    const-string/jumbo v11, "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

    invoke-interface {v4, v10, v11, v5}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 3376
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "AlarmManagerSchedule rowsDeleted,rowsDeleted:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lyx;->d(Ljava/lang/String;)I

    .line 3377
    const-string/jumbo v10, "AlarmManagerSchedule rowsDeleted,selectSql:_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

    invoke-static {v10}, Lyx;->d(Ljava/lang/String;)I

    .line 3379
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "AlarmManagerSchedule rowsDeleted,selectArg:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v5, v5, v11

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3618
    const-wide/16 v14, -0x1

    .line 3619
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v10, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;

    .line 3638
    const-string/jumbo v11, "calendar.db"

    .line 3619
    const-string/jumbo v12, "CalendarAlerts"

    invoke-direct {v5, v10, v11, v12}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    const-string/jumbo v10, "alarmTime"

    invoke-virtual {v5, v10}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 3622
    const-string/jumbo v10, "alarmTime>=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3623
    const-string/jumbo v10, "alarmTime ASC"

    invoke-virtual {v5, v10}, Lcom/alibaba/alimei/orm/query/Select;->orderBy(Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    .line 3624
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 3626
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3627
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;

    .line 3628
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "CalendarAlarmManager millis = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", alarmTime = -1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lyx;->d(Ljava/lang/String;)I

    .line 3629
    iget-wide v14, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->alarmTime:J

    .line 3632
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "CalendarAlarmManager alarmTime = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3384
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "CalendarAlarmManager start = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", nextAlarmTime = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", tmpAlarmTime = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3385
    const-wide/16 v10, -0x1

    cmp-long v5, v14, v10

    if-eqz v5, :cond_f

    cmp-long v5, v14, v8

    if-gez v5, :cond_f

    .line 3411
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 3412
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 3413
    move-object/from16 v0, v16

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 3414
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "CalendarAlarmManager localOffset = "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3416
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, " -("

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ") "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3417
    const-string/jumbo v10, "SELECT begin"

    .line 3418
    const-string/jumbo v11, " -(minutes*60000) AS myAlarmTime,Instances.event_id AS eventId,begin,end,title,allDay,method,minutes FROM Instances INNER JOIN view_events ON (view_events._id=Instances.event_id) INNER JOIN Reminders ON (Instances.event_id=Reminders.event_id) WHERE visible=1 AND myAlarmTime>=CAST(? AS INT) AND myAlarmTime<=CAST(? AS INT) AND end>=? AND method=1"

    .line 3439
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, " AND allDay"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, "=1"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3441
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " AND allDay"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "=0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3446
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "SELECT * FROM ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v11, " UNION ALL "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ") WHERE 0=(SELECT count(*) FROM "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "CalendarAlerts CA"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " WHERE CA.event_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "=eventId AND CA."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "begin="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "begin AND CA."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "alarmTime=myAlarmTime)"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " ORDER BY myAlarmTime,begin"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ",title"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3460
    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v21, v5

    const/4 v5, 0x1

    .line 3461
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v21, v5

    const/4 v5, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v21, v5

    const/4 v5, 0x3

    .line 3462
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v21, v5

    const/4 v5, 0x4

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v21, v5

    const/4 v5, 0x5

    .line 3463
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v21, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3465
    :try_start_1
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v5

    .line 3466
    iget-object v10, v5, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v10}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->b()Ljava/lang/String;

    move-result-object v12

    .line 3467
    iget-object v10, v5, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v10}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a()Ljava/lang/String;

    move-result-object v10

    .line 3468
    const/4 v13, 0x0

    .line 3469
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3470
    iget-object v10, v5, Lagj;->d:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;

    invoke-virtual {v10}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "home"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 3475
    :cond_4
    const-wide/32 v10, 0x5265c00

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v13}, Lagj;->a(JJZZLjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3486
    const/4 v6, 0x0

    .line 3488
    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v4, v0, v1}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3490
    const-string/jumbo v5, "begin"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3491
    const-string/jumbo v5, "end"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3492
    const-string/jumbo v5, "eventId"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3493
    const-string/jumbo v5, "myAlarmTime"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 3494
    const-string/jumbo v5, "minutes"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 3495
    const-string/jumbo v5, "title"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 3497
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 3498
    const-string/jumbo v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3499
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "CalendarAlarmManager cursor results: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3500
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nextAlarmTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3499
    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    move-wide v8, v14

    .line 3503
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3511
    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3512
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3513
    move/from16 v0, v21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 3514
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 3515
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 3516
    move/from16 v0, v22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3518
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 3519
    const-string/jumbo v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3520
    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3521
    const-string/jumbo v29, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3523
    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "CalendarAlarmManager  looking at id: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", startTime: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " alarm: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v29, ", title = "

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3528
    cmp-long v5, v10, v8

    if-gez v5, :cond_8

    move-wide v8, v10

    .line 3653
    :cond_5
    :goto_3
    new-instance v5, Lcom/alibaba/alimei/orm/query/Select;

    const-class v29, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;

    .line 4638
    const-string/jumbo v30, "calendar.db"

    .line 3653
    const-string/jumbo v31, "CalendarAlerts"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    const-string/jumbo v29, "alarmTime"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 3655
    const-string/jumbo v29, "event_id=? AND begin=? AND alarmTime=?"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3656
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v29

    .line 3657
    const/4 v5, 0x0

    .line 3658
    if-eqz v29, :cond_6

    .line 3659
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_6

    .line 3660
    const/4 v5, 0x1

    .line 3550
    :cond_6
    if-eqz v5, :cond_9

    .line 3552
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "CalendarAlarmManager  alarm exists for id: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 3573
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_7

    .line 3574
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v5
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3598
    :catch_0
    move-exception v5

    .line 3599
    :try_start_4
    const-string/jumbo v6, "CalendarAlarmManager"

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_4
    invoke-interface {v4}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 297
    invoke-interface {v4}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 3530
    :cond_8
    const-wide/32 v30, 0xea60

    add-long v30, v30, v8

    cmp-long v5, v10, v30

    if-lez v5, :cond_5

    .line 3534
    :try_start_5
    const-string/jumbo v5, "CalendarAlarmManager This event alarm (and all later ones) will be scheduled later"

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4674
    :cond_9
    new-instance v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;

    invoke-direct {v5}, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;-><init>()V

    .line 4675
    iput-wide v14, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->event_id:J

    .line 4676
    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->begin:J

    .line 4677
    move-wide/from16 v0, v26

    iput-wide v0, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->end:J

    .line 4678
    iput-wide v10, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->alarmTime:J

    .line 4679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->creationTime:J

    .line 4680
    const-wide/16 v14, 0x0

    iput-wide v14, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->receivedTime:J

    .line 4681
    const-wide/16 v14, 0x0

    iput-wide v14, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->notifyTime:J

    .line 4682
    const/4 v14, 0x0

    iput v14, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->state:I

    .line 4683
    move/from16 v0, v23

    iput v0, v5, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->minutes:I

    .line 4684
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;->save()J

    move-result-wide v14

    .line 3560
    const-wide/16 v24, 0x0

    cmp-long v5, v14, v24

    if-gtz v5, :cond_a

    .line 3561
    const-string/jumbo v5, "CalendarAlarmManager runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v5}, Lyx;->a(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3566
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 3567
    const-string/jumbo v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3568
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "AlarmManagerSchedule scheduleAlarm(alarmTime),alarmTime:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3570
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->b(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 3573
    :cond_b
    if-eqz v6, :cond_c

    .line 3574
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3579
    :cond_c
    if-lez v17, :cond_d

    .line 3580
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3581
    const-string/jumbo v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3582
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AlarmManagerSchedule scheduleAlarm(currentMillis),currentMillis:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyx;->d(Ljava/lang/String;)I

    .line 3584
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->b(J)V

    .line 3593
    :cond_d
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v5, v8, v6

    if-eqz v5, :cond_e

    .line 3594
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(J)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4

    .line 297
    :catch_1
    move-exception v5

    invoke-interface {v4}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 3596
    :cond_e
    const-wide/32 v6, 0x5265c00

    add-long v6, v6, v18

    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->a(J)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 297
    :catchall_1
    move-exception v5

    invoke-interface {v4}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    throw v5

    :cond_f
    move-wide v14, v8

    goto/16 :goto_1
.end method

.method final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 256
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 257
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CalendarAlarmManager"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 4
    .param p1, "isAlarmEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 710
    const-string/jumbo v0, "alarm"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[setIsAlarmEnable]"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->f:Z

    .line 712
    return-void
.end method

.method final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarAlarmManager;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 268
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CalendarAlarmManager"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->a(Ljava/lang/String;)I

    goto :goto_0
.end method
