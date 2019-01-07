.class public final Lcom/alibaba/motu/crashreporter/CatcherManager$a;
.super Ljava/lang/Object;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/crashreporter/CatcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/crashreporter/CatcherManager$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/lang/String;

.field c:Ljava/io/File;

.field volatile d:Z

.field volatile e:Z

.field f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic g:Lcom/alibaba/motu/crashreporter/CatcherManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/motu/crashreporter/CatcherManager;)V
    .locals 8
    .param p1, "this$0"    # Lcom/alibaba/motu/crashreporter/CatcherManager;

    .prologue
    const/4 v3, 0x0

    .line 538
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->g:Lcom/alibaba/motu/crashreporter/CatcherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->d:Z

    .line 535
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->e:Z

    .line 536
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 540
    const-string/jumbo v2, "/data/anr/traces.txt"

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->b:Ljava/lang/String;

    .line 541
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->a:Ljava/io/File;

    .line 543
    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    const-string/jumbo v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2}, Lhtr$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "propSystemTraceFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->a:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 547
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->a:Ljava/io/File;

    .line 548
    iput-object v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v1    # "propSystemTraceFilePath":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->a:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 557
    iget-object v2, p1, Lcom/alibaba/motu/crashreporter/CatcherManager;->e:Lhtq;

    const-string/jumbo v3, "ANR_MONITOR"

    invoke-virtual {v2, v3}, Lhtq;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->c:Ljava/io/File;

    .line 559
    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->c:Ljava/io/File;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-static {v2, v3}, Lhtr;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$a;->e:Z

    .line 565
    :cond_2
    return-void

    .line 549
    .restart local v1    # "propSystemTraceFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "system traces file error"

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
