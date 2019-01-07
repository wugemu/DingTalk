.class public final Ljiv;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"


# static fields
.field private static e:Ljiv;

.field private static final f:[I


# instance fields
.field a:I

.field b:J

.field c:Z

.field d:[I

.field private g:Landroid/content/Context;

.field private h:Landroid/app/PendingIntent;

.field private i:Landroid/app/AlarmManager;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Ljiv;->e:Ljiv;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljiv;->f:[I

    return-void

    :array_0
    .array-data 4
        0x10e
        0x168
        0x1e0
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v4, p0, Ljiv;->c:Z

    .line 36
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Ljiv;->d:[I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljiv;->j:Z

    .line 48
    :try_start_0
    iput-object p1, p0, Ljiv;->g:Landroid/content/Context;

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Ljiv;->a:I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljiv;->b:J

    .line 51
    iget-object v1, p0, Ljiv;->g:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Ljiv;->i:Landroid/app/AlarmManager;

    .line 52
    invoke-static {}, Ljjn;->a()Z

    move-result v1

    iput-boolean v1, p0, Ljiv;->j:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "HeartbeatManager"

    const-string/jumbo v2, "HeartbeatManager"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljiv;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-class v1, Ljiv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljiv;->e:Ljiv;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljiv;

    invoke-direct {v0, p0}, Ljiv;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljiv;->e:Ljiv;

    .line 64
    :cond_0
    sget-object v0, Ljiv;->e:Ljiv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Ljiv;->b:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ljiv;->b:J

    .line 71
    :cond_0
    iget-object v3, p0, Ljiv;->h:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Ljiv;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v3, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v3, "command"

    const/16 v4, 0xc9

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v3, p0, Ljiv;->g:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Ljiv;->h:Landroid/app/PendingIntent;

    .line 79
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Ljiv;->b()I

    move-result v2

    .line 80
    .local v2, "interval":I
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    const-string/jumbo v3, "HeartbeatManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 88
    iget-object v3, p0, Ljiv;->i:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v5, p0, Ljiv;->h:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 68
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "interval":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final b()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 97
    const/16 v0, 0x10e

    .line 98
    .local v0, "time":I
    iget-boolean v1, p0, Ljiv;->j:Z

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Ljiv;->f:[I

    iget v2, p0, Ljiv;->a:I

    aget v0, v1, v2

    .line 102
    :cond_0
    invoke-static {}, Ljjn;->a()Z

    move-result v1

    iput-boolean v1, p0, Ljiv;->j:Z

    .line 104
    return v0
.end method
