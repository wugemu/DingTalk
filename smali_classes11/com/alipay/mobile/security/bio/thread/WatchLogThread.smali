.class public Lcom/alipay/mobile/security/bio/thread/WatchLogThread;
.super Lcom/alipay/mobile/security/bio/thread/WatchThread;
.source "WatchLogThread.java"


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioSysBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/bio/thread/WatchThread;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->a:Ljava/util/concurrent/BlockingQueue;

    .line 23
    iput-object v3, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    .line 24
    iput-object v3, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->c:Ljava/io/File;

    .line 25
    iput-object v3, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->d:Ljava/io/File;

    .line 26
    iput-object v3, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->e:Ljava/io/File;

    .line 27
    iput-object v3, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->f:Ljava/io/File;

    .line 28
    iput-object v3, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->g:Ljava/io/File;

    .line 29
    iput-object v3, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->h:Landroid/content/Context;

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v1, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v1

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->h:Landroid/content/Context;

    .line 37
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->h:Landroid/content/Context;

    const-string/jumbo v2, "BIO_LOGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/bio/utils/DateUtil;->getDateFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "dateString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BIO_API_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->c:Ljava/io/File;

    .line 40
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BIO_METHOD_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->d:Ljava/io/File;

    .line 41
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BIO_CLICK_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->e:Ljava/io/File;

    .line 42
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BIO_NET_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->f:Ljava/io/File;

    .line 43
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BIO_EVENT_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->g:Ljava/io/File;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/bio/thread/WatchThread;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->a:Ljava/util/concurrent/BlockingQueue;

    .line 23
    iput-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->b:Ljava/io/File;

    .line 24
    iput-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->c:Ljava/io/File;

    .line 25
    iput-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->d:Ljava/io/File;

    .line 26
    iput-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->e:Ljava/io/File;

    .line 27
    iput-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->f:Ljava/io/File;

    .line 28
    iput-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->g:Ljava/io/File;

    .line 29
    iput-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->h:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public addThreadItem(Lcom/alipay/mobile/security/bio/service/BioSysBehavior;)V
    .locals 2
    .param p1, "behavior"    # Lcom/alipay/mobile/security/bio/service/BioSysBehavior;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final task()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->a:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;

    .line 1086
    .local v0, "bioSysBehavior":Lcom/alipay/mobile/security/bio/service/BioSysBehavior;
    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->getExt()Ljava/util/HashMap;

    move-result-object v3

    .line 1091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1094
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1096
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1097
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1098
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "bioSysBehavior":Lcom/alipay/mobile/security/bio/service/BioSysBehavior;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 63
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    return-void

    .line 1102
    .restart local v0    # "bioSysBehavior":Lcom/alipay/mobile/security/bio/service/BioSysBehavior;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->getType()Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1114
    sget-object v4, Lcom/alipay/mobile/security/bio/thread/WatchLogThread$1;->a:[I

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1116
    :pswitch_0
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->saveContent(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1119
    :pswitch_1
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->e:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->saveContent(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1122
    :pswitch_2
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->f:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->saveContent(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1125
    :pswitch_3
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->g:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->saveContent(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1128
    :pswitch_4
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/thread/WatchLogThread;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->saveContent(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
