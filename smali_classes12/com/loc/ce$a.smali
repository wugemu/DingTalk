.class final Lcom/loc/ce$a;
.super Landroid/os/HandlerThread;
.source "CgiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ce;


# direct methods
.method public constructor <init>(Lcom/loc/ce;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-static {v0}, Lcom/loc/ce;->a(Lcom/loc/ce;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    invoke-static {v0}, Lcom/loc/ce;->b(Lcom/loc/ce;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    new-instance v0, Lcom/loc/ce$1;

    invoke-direct {v0, v2}, Lcom/loc/ce$1;-><init>(Lcom/loc/ce;)V

    iput-object v0, v2, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    const-string/jumbo v3, "android.telephony.PhoneStateListener"

    const/4 v0, 0x0

    invoke-static {}, Ljdx;->c()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    const-string/jumbo v4, "LISTEN_SIGNAL_STRENGTH"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Ljdr;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    :try_start_3
    iget-object v0, v2, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    iget-object v2, v2, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    :try_start_4
    monitor-exit v1

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v4, "LISTEN_SIGNAL_STRENGTHS"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v3, v4}, Ljdr;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_6
    iget-object v3, v2, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    iget-object v2, v2, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    iget-object v0, v0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    iget-object v1, v1, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/loc/ce$a;->a:Lcom/loc/ce;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p0}, Lcom/loc/ce$a;->quit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
