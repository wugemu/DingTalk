.class public Lcom/laiwang/protocol/android/d;
.super Ljava/lang/Object;
.source "AppKeepAlive.java"


# instance fields
.field private a:Landroid/app/AlarmManager;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKeepAliveIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/laiwang/protocol/android/d;->a:Landroid/app/AlarmManager;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/d;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/laiwang/protocol/android/d;->c:Landroid/app/PendingIntent;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v1, p0, Lcom/laiwang/protocol/android/d;->c:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/d;->a:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/laiwang/protocol/android/d;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    const-string/jumbo v1, "[heartbeat] stop app keepalive"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 38
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[heartbeat] cancel alarm err"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(JI)V
    .locals 7
    .param p1, "utc_time"    # J
    .param p3, "interval"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/laiwang/protocol/android/d;->c:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 51
    iget-object v0, p0, Lcom/laiwang/protocol/android/d;->a:Landroid/app/AlarmManager;

    int-to-long v4, p3

    iget-object v6, p0, Lcom/laiwang/protocol/android/d;->c:Landroid/app/PendingIntent;

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/android/d;->a:Landroid/app/AlarmManager;

    int-to-long v4, p3

    iget-object v6, p0, Lcom/laiwang/protocol/android/d;->c:Landroid/app/PendingIntent;

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
