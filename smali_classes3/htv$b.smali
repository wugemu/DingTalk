.class public final Lhtv$b;
.super Lhtv$a;
.source "FinalizeFake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final a:Lhtv$b;


# instance fields
.field private final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/lang/Object;

.field private volatile d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lhtv$b;

    invoke-direct {v0}, Lhtv$b;-><init>()V

    sput-object v0, Lhtv$b;->a:Lhtv$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 220
    const-string/jumbo v0, "FakeFinalizerDaemon"

    invoke-direct {p0, v0}, Lhtv$a;-><init>(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lhtv;->f:Ljava/lang/ref/ReferenceQueue;

    iput-object v0, p0, Lhtv$b;->b:Ljava/lang/ref/ReferenceQueue;

    .line 222
    return-void
.end method

.method static synthetic a(Lhtv$b;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lhtv$b;

    .prologue
    .line 212
    iget-object v0, p0, Lhtv$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lhtv$b;)J
    .locals 2
    .param p0, "x0"    # Lhtv$b;

    .prologue
    .line 212
    iget-wide v0, p0, Lhtv$b;->d:J

    return-wide v0
.end method

.method public static synthetic e()Lhtv$b;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lhtv$b;->a:Lhtv$b;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 226
    :goto_0
    invoke-virtual {p0}, Lhtv$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    iget-object v0, p0, Lhtv$b;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1238
    :try_start_1
    sget-object v1, Lhtv;->e:Ljava/lang/reflect/Method;

    sget-object v2, Lhtv;->d:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1240
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1242
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lhtv$b;->d:J

    .line 1243
    iput-object v1, p0, Lhtv$b;->c:Ljava/lang/Object;

    .line 1244
    invoke-static {}, Lhtv$c;->e()Lhtv$c;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1245
    :try_start_3
    invoke-static {}, Lhtv$c;->e()Lhtv$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1246
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1247
    :try_start_4
    sget-object v0, Lhtv;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1255
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lhtv$b;->c:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1257
    :catch_0
    move-exception v0

    .line 1258
    :try_start_6
    const-string/jumbo v1, "GCMagic"

    const-string/jumbo v2, "FinalizerReference remove exception by finalizer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1246
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1249
    :catch_2
    move-exception v0

    .line 1252
    :try_start_9
    const-string/jumbo v2, "GCMagic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Uncaught exception thrown by ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") finalizer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1255
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lhtv$b;->c:Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lhtv$b;->c:Ljava/lang/Object;

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 233
    :cond_0
    return-void
.end method
