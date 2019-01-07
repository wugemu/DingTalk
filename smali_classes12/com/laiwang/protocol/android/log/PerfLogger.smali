.class public Lcom/laiwang/protocol/android/log/PerfLogger;
.super Ljava/lang/Object;
.source "PerfLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/log/PerfLogger$b;,
        Lcom/laiwang/protocol/android/log/PerfLogger$a;
    }
.end annotation


# static fields
.field static final A:Ljava/lang/String;

.field static final B:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final C:Ljava/lang/String;

.field static final D:Ljava/lang/String;

.field static final E:Ljava/lang/String;

.field static final F:Ljava/lang/String;

.field static final G:Ljava/lang/String;

.field static final H:Ljava/lang/String;

.field static final I:Ljava/lang/String;

.field private static final J:Ljava/lang/String;

.field static a:Lcom/alibaba/doraemon/log/FileLogger;

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I

.field static g:I

.field static h:I

.field static i:I

.field static j:I

.field static k:I

.field static l:I

.field static m:I

.field static final n:Ljava/lang/Object;

.field static o:I

.field static p:I

.field static q:I

.field static r:I

.field static s:Ljava/lang/String;

.field static t:Ljava/lang/String;

.field static u:Lcom/laiwang/protocol/android/log/PerfLogger$b;

.field static final v:Ljava/lang/String;

.field static final w:Ljava/lang/String;

.field static final x:Ljava/lang/String;

.field static final y:Ljava/lang/String;

.field static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    .line 44
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->c:I

    .line 45
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->d:I

    .line 46
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->e:I

    .line 50
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    .line 51
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->g:I

    .line 52
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->h:I

    .line 53
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->i:I

    .line 57
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    .line 58
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->k:I

    .line 59
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->l:I

    .line 60
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->m:I

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->n:Ljava/lang/Object;

    .line 64
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->o:I

    .line 66
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    .line 68
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    .line 69
    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->r:I

    .line 77
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0\u0001%s\u0001%s\u0001%s\u0001a\u0001%s\u0001%s\u0001%d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->v:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "1\u0001%s\u0001%s\u0001%s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->w:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "2\u0001%d\u0001%d\u0001%d\u0001%d\u0001%d\u0001%d\u0001%s\u0001%d\u0001%s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->x:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "3\u0001%s\u0001%d\u0001%d\u0001%d\u0001%d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->y:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "4\u0001%s\u0001%d\u0001%d\u0001%d\u0001%s\u0001%d\u0001%s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->z:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "5\u0001%d\u0001%d\u0001%d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->A:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "6\u0001%d\u0001%d\u0001%d\u0001%d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->B:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "6\u0001%d\u0001%d\u0001%d\u0001%d\u0001\u0001%d\u0001%s\u0001%d\u0001%s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->C:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "7\u0001%s\u0001%s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->D:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "8\u0001%s\u0001%s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->E:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "9\u0001%.3f\u0001%d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->F:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "10\u0001%s\u0001d%d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->G:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "11\u0001%s\u0001%d\u0001%d\u0001%d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->H:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "12\u0001%s\u0001%d\u0001%d\u0001%d\u0001%s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    return-void
.end method

.method private static a()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    if-lez v4, :cond_0

    .line 279
    const-string/jumbo v5, "(0-1400]"

    monitor-enter v5

    .line 280
    :try_start_0
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->c:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    div-int v3, v4, v6

    .line 281
    .local v3, "rtLog":I
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->e:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    div-int v2, v4, v6

    .line 282
    .local v2, "rpcWait":I
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->d:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    div-int v1, v4, v6

    .line 283
    .local v1, "rpcTrans":I
    sget v0, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    .line 284
    .local v0, "rpcCount":I
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->c:I

    .line 285
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    .line 286
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->e:I

    .line 287
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->d:I

    .line 288
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    sget-object v4, Lcom/laiwang/protocol/android/log/PerfLogger;->y:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "(0-1400]"

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_0
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    if-lez v4, :cond_1

    .line 292
    const-string/jumbo v5, "(1400-2800]"

    monitor-enter v5

    .line 293
    :try_start_1
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->g:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    div-int v3, v4, v6

    .line 294
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->i:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    div-int v2, v4, v6

    .line 295
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->h:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    div-int v1, v4, v6

    .line 296
    sget v0, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    .line 297
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->g:I

    .line 298
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    .line 299
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->i:I

    .line 300
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->h:I

    .line 301
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    sget-object v4, Lcom/laiwang/protocol/android/log/PerfLogger;->y:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "(1400-2800]"

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :cond_1
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    if-lez v4, :cond_2

    .line 305
    const-string/jumbo v5, "(2800-)"

    monitor-enter v5

    .line 306
    :try_start_2
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->k:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    div-int v3, v4, v6

    .line 307
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->m:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    div-int v2, v4, v6

    .line 308
    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->l:I

    sget v6, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    div-int v1, v4, v6

    .line 309
    sget v0, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    .line 310
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->k:I

    .line 311
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    .line 312
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->m:I

    .line 313
    const/4 v4, 0x0

    sput v4, Lcom/laiwang/protocol/android/log/PerfLogger;->l:I

    .line 314
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 315
    sget-object v4, Lcom/laiwang/protocol/android/log/PerfLogger;->y:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "(2800-)"

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_2
    invoke-static {}, Lcom/laiwang/protocol/android/log/PerfLogger;->b()V

    .line 318
    return-void

    .line 288
    .end local v0    # "rpcCount":I
    .end local v1    # "rpcTrans":I
    .end local v2    # "rpcWait":I
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 301
    .restart local v0    # "rpcCount":I
    .restart local v1    # "rpcTrans":I
    .restart local v2    # "rpcWait":I
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 314
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 261
    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    if-eqz v1, :cond_0

    .line 263
    :try_start_0
    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/log/FileLogger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/doraemon/log/FileLogger$FLClosedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/log/FileLogger$FLClosedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Z)V
    .locals 6
    .param p0, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x0

    .line 440
    const/high16 v1, -0x40800000    # -1.0f

    .line 441
    .local v1, "logRpcSucc":F
    const/4 v0, 0x0

    .line 442
    .local v0, "count":I
    sget-object v3, Lcom/laiwang/protocol/android/log/PerfLogger;->n:Ljava/lang/Object;

    monitor-enter v3

    .line 443
    if-eqz p0, :cond_0

    .line 444
    :try_start_0
    sget v2, Lcom/laiwang/protocol/android/log/PerfLogger;->o:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/laiwang/protocol/android/log/PerfLogger;->o:I

    .line 445
    :cond_0
    sget v2, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    add-int/lit8 v2, v2, 0x1

    .line 446
    sput v2, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    const/16 v4, 0x32

    if-ne v2, v4, :cond_1

    .line 447
    sget v2, Lcom/laiwang/protocol/android/log/PerfLogger;->o:I

    int-to-float v2, v2

    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 448
    sget v0, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    .line 449
    const/4 v2, 0x0

    sput v2, Lcom/laiwang/protocol/android/log/PerfLogger;->o:I

    .line 450
    const/4 v2, 0x0

    sput v2, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    .line 452
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 454
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->F:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_2
    return-void

    .line 452
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 458
    const/high16 v1, -0x40800000    # -1.0f

    .line 459
    .local v1, "logRpcSucc":F
    const/4 v0, 0x0

    .line 460
    .local v0, "count":I
    sget-object v3, Lcom/laiwang/protocol/android/log/PerfLogger;->n:Ljava/lang/Object;

    monitor-enter v3

    .line 461
    :try_start_0
    sget v2, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    if-eqz v2, :cond_0

    .line 462
    sget v0, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    .line 463
    sget v2, Lcom/laiwang/protocol/android/log/PerfLogger;->o:I

    int-to-float v2, v2

    sget v4, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    int-to-float v4, v4

    div-float v1, v2, v4

    .line 464
    const/4 v2, 0x0

    sput v2, Lcom/laiwang/protocol/android/log/PerfLogger;->o:I

    .line 465
    const/4 v2, 0x0

    sput v2, Lcom/laiwang/protocol/android/log/PerfLogger;->p:I

    .line 468
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 470
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->F:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :cond_1
    return-void

    .line 468
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static init(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/laiwang/protocol/android/log/PerfLogger$b;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "uploader"    # Lcom/laiwang/protocol/android/log/PerfLogger$b;

    .prologue
    const/4 v2, 0x1

    .line 101
    new-instance v0, Lcom/alibaba/doraemon/log/FileLogger;

    const-string/jumbo v1, "lwp_perf"

    invoke-direct {v0, p1, v1, p0}, Lcom/alibaba/doraemon/log/FileLogger;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/Context;)V

    .line 102
    sput-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    new-instance v1, Lcom/laiwang/protocol/android/log/PerfLogger$a;

    invoke-direct {v1}, Lcom/laiwang/protocol/android/log/PerfLogger$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/log/FileLogger;->setLogFileNamer(Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;)V

    .line 103
    sget-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/log/FileLogger;->setCachedNumInAppDir(I)V

    .line 104
    sget-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/log/FileLogger;->setCachedNumInSDDir(I)V

    .line 105
    sput-object p2, Lcom/laiwang/protocol/android/log/PerfLogger;->u:Lcom/laiwang/protocol/android/log/PerfLogger$b;

    .line 106
    return-void
.end method

.method public static logAccess(Ljava/lang/String;JIZ)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "rt"    # J
    .param p3, "totalSize"    # I
    .param p4, "success"    # Z

    .prologue
    .line 420
    const-string/jumbo v6, "0"

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/laiwang/protocol/android/log/PerfLogger;->logAccess(Ljava/lang/String;JIZLjava/lang/String;)V

    .line 421
    return-void
.end method

.method public static logAccess(Ljava/lang/String;JIZLjava/lang/String;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "rt"    # J
    .param p3, "totalSize"    # I
    .param p4, "success"    # Z
    .param p5, "code"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 432
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->I:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    if-eqz p4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    aput-object p5, v3, v0

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    return-void

    :cond_0
    move v0, v1

    .line 432
    goto :goto_0
.end method

.method public static logAladdin(JJZ)V
    .locals 6
    .param p0, "connect"    # J
    .param p2, "total"    # J
    .param p4, "success"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 531
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->A:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    if-eqz p4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    return-void

    :cond_0
    move v0, v1

    .line 531
    goto :goto_0
.end method

.method public static logBestHeartBeat(II)V
    .locals 4
    .param p0, "netType"    # I
    .param p1, "interval"    # I

    .prologue
    .line 582
    sget-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->E:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public static logConnect(JJJZJZLjava/lang/String;Z)V
    .locals 6
    .param p0, "totalUsed"    # J
    .param p2, "startSocket"    # J
    .param p4, "socketUsed"    # J
    .param p6, "sessionReuse"    # Z
    .param p7, "lwsUsed"    # J
    .param p9, "success"    # Z
    .param p10, "code"    # Ljava/lang/String;
    .param p11, "isMaster"    # Z

    .prologue
    .line 253
    sget v1, Lcom/laiwang/protocol/android/log/PerfLogger;->r:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 254
    .local v0, "connect_Reason":I
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->r:I

    .line 256
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->x:Ljava/lang/String;

    const/16 v1, 0x9

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-eqz p6, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x4

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x5

    if-eqz p9, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x6

    aput-object p10, v3, v1

    const/4 v4, 0x7

    if-eqz p11, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/16 v1, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const/4 v1, 0x0

    sput v1, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    .line 258
    return-void

    .line 253
    .end local v0    # "connect_Reason":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    .restart local v0    # "connect_Reason":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static logDownloader(IJJZ)V
    .locals 7
    .param p0, "mediaType"    # I
    .param p1, "fileLen"    # J
    .param p3, "rt"    # J
    .param p5, "success"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 503
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->B:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    if-eqz p5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    return-void

    :cond_0
    move v0, v1

    .line 503
    goto :goto_0
.end method

.method public static logDownloader(IJJZI)V
    .locals 9
    .param p0, "mediaType"    # I
    .param p1, "fileLen"    # J
    .param p3, "rt"    # J
    .param p5, "success"    # Z
    .param p6, "downType"    # I

    .prologue
    .line 511
    const-string/jumbo v8, "0"

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lcom/laiwang/protocol/android/log/PerfLogger;->logDownloader(IJJZILjava/lang/String;)V

    .line 512
    return-void
.end method

.method public static logDownloader(IJJZILjava/lang/String;)V
    .locals 7
    .param p0, "mediaType"    # I
    .param p1, "fileLen"    # J
    .param p3, "rt"    # J
    .param p5, "success"    # Z
    .param p6, "downType"    # I
    .param p7, "code"    # Ljava/lang/String;

    .prologue
    .line 518
    if-eqz p5, :cond_1

    .line 519
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->C:Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo p7, "0"

    .end local p7    # "code":Ljava/lang/String;
    :cond_0
    aput-object p7, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    :goto_0
    return-void

    .line 521
    .restart local p7    # "code":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 522
    .local v0, "netType":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/laiwang/protocol/android/LWP;->getNetworkState(Landroid/content/Context;)Lcom/laiwang/protocol/android/NetworkListener$NetworkState;

    move-result-object v1

    .line 523
    .local v1, "state":Lcom/laiwang/protocol/android/NetworkListener$NetworkState;
    iget-object v2, v1, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->networkState:Lcom/laiwang/protocol/network/Network$State;

    iget-object v2, v2, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    if-eqz v2, :cond_2

    .line 524
    iget-object v2, v1, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->networkState:Lcom/laiwang/protocol/network/Network$State;

    iget-object v2, v2, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    iget-object v0, v2, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    .line 526
    :cond_2
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->C:Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo p7, "0"

    .end local p7    # "code":Ljava/lang/String;
    :cond_3
    aput-object p7, v3, v4

    const/4 v4, 0x6

    iget v5, v1, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->lwpConnectState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logFlowControl(Ljava/lang/String;J)V
    .locals 0
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "rt"    # J

    .prologue
    .line 565
    return-void
.end method

.method public static logFlowControl([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "uris"    # [Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 540
    new-instance v1, Lcom/laiwang/protocol/android/log/PerfLogger$1;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/log/PerfLogger$1;-><init>([Ljava/lang/String;)V

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lcom/laiwang/protocol/util/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "flowCtlUris":Ljava/lang/String;
    sget-object v1, Lcom/laiwang/protocol/android/log/PerfLogger;->D:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public static logHead(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "start"    # J
    .param p2, "netType"    # Ljava/lang/String;
    .param p3, "netName"    # Ljava/lang/String;
    .param p4, "vhost"    # Ljava/lang/String;
    .param p5, "sdkVersion"    # Ljava/lang/String;
    .param p6, "lwsVer"    # I

    .prologue
    .line 207
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->s:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->t:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 208
    :cond_1
    sput-object p2, Lcom/laiwang/protocol/android/log/PerfLogger;->s:Ljava/lang/String;

    .line 209
    sput-object p3, Lcom/laiwang/protocol/android/log/PerfLogger;->t:Ljava/lang/String;

    .line 210
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->v:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p3, v3, v4

    const/4 v4, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "head":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/android/log/PerfLogger;->a()V

    .line 213
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    if-eqz v2, :cond_2

    .line 214
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/log/FileLogger;->logContext(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "head":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 216
    .restart local v1    # "head":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static logPerfLog2Large(Ljava/lang/String;J)V
    .locals 5
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "perfLogSize"    # J

    .prologue
    .line 573
    sget-object v0, Lcom/laiwang/protocol/android/log/PerfLogger;->G:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public static logRemoteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "realIp"    # Ljava/lang/String;
    .param p2, "serverIp"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->w:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "remote":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/android/log/PerfLogger;->a()V

    .line 232
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    if-eqz v2, :cond_0

    .line 233
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->a:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/log/FileLogger;->appendContext(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static logRpc(JJII)V
    .locals 10
    .param p0, "wait2Socket"    # J
    .param p2, "rt"    # J
    .param p4, "totalSize"    # I
    .param p5, "code"    # I

    .prologue
    .line 327
    if-lez p4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gez v5, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    iget v5, v5, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    if-ne p5, v5, :cond_2

    .line 333
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Z)V

    goto :goto_0

    .line 336
    :cond_2
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Z)V

    .line 338
    const/4 v3, 0x0

    .line 339
    .local v3, "rtLog":I
    const/4 v1, 0x0

    .line 340
    .local v1, "rpcTrans":I
    const/4 v2, 0x0

    .line 341
    .local v2, "rpcWait":I
    const/4 v4, 0x0

    .line 343
    .local v4, "rturi":Ljava/lang/String;
    const/4 v0, 0x0

    .line 345
    .local v0, "firstRpcUrl":Ljava/lang/String;
    const/16 v5, 0x578

    if-gt p4, v5, :cond_6

    .line 346
    const-string/jumbo v6, "(0-1400]"

    monitor-enter v6

    .line 347
    :try_start_0
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    .line 348
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    .line 349
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->c:I

    int-to-long v8, v5

    add-long/2addr v8, p2

    long-to-int v5, v8

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->c:I

    .line 350
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->d:I

    add-int/2addr v5, p4

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->d:I

    .line 351
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->e:I

    int-to-long v8, v5

    add-long/2addr v8, p0

    long-to-int v5, v8

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->e:I

    .line 352
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    const/16 v7, 0xa

    if-lt v5, v7, :cond_3

    .line 353
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->c:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    div-int v3, v5, v7

    .line 354
    const-string/jumbo v4, "(0-1400]"

    .line 355
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->e:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    div-int v2, v5, v7

    .line 356
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->d:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    div-int v1, v5, v7

    .line 357
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->c:I

    .line 358
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->b:I

    .line 359
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->e:I

    .line 360
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->d:I

    .line 362
    :cond_3
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    const/4 v7, 0x1

    if-gt v5, v7, :cond_4

    .line 363
    const-string/jumbo v0, "(0-1400]"

    .line 365
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :goto_1
    if-eqz v0, :cond_5

    .line 413
    sget-object v5, Lcom/laiwang/protocol/android/log/PerfLogger;->H:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    long-to-int v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    long-to-int v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_5
    if-eqz v4, :cond_0

    .line 416
    sget-object v5, Lcom/laiwang/protocol/android/log/PerfLogger;->y:Ljava/lang/String;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 365
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 366
    :cond_6
    const/16 v5, 0x578

    if-le p4, v5, :cond_9

    const/16 v5, 0xaf0

    if-gt p4, v5, :cond_9

    .line 367
    const-string/jumbo v6, "(1400-2800]"

    monitor-enter v6

    .line 368
    :try_start_2
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    .line 369
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    .line 370
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->g:I

    int-to-long v8, v5

    add-long/2addr v8, p2

    long-to-int v5, v8

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->g:I

    .line 371
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->h:I

    add-int/2addr v5, p4

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->h:I

    .line 372
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->i:I

    int-to-long v8, v5

    add-long/2addr v8, p0

    long-to-int v5, v8

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->i:I

    .line 373
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    const/16 v7, 0xa

    if-lt v5, v7, :cond_7

    .line 374
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->g:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    div-int v3, v5, v7

    .line 375
    const-string/jumbo v4, "(1400-2800]"

    .line 376
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->i:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    div-int v2, v5, v7

    .line 377
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->h:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    div-int v1, v5, v7

    .line 378
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->g:I

    .line 379
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->f:I

    .line 380
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->i:I

    .line 381
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->h:I

    .line 383
    :cond_7
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    const/4 v7, 0x1

    if-gt v5, v7, :cond_8

    .line 384
    const-string/jumbo v0, "(1400-2800]"

    .line 386
    :cond_8
    monitor-exit v6

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 388
    :cond_9
    const-string/jumbo v6, "(2800-)"

    monitor-enter v6

    .line 389
    :try_start_3
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    .line 390
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    .line 391
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->k:I

    int-to-long v8, v5

    add-long/2addr v8, p2

    long-to-int v5, v8

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->k:I

    .line 392
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->l:I

    add-int/2addr v5, p4

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->l:I

    .line 393
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->m:I

    int-to-long v8, v5

    add-long/2addr v8, p0

    long-to-int v5, v8

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->m:I

    .line 394
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    const/16 v7, 0xa

    if-lt v5, v7, :cond_a

    .line 395
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->k:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    div-int v3, v5, v7

    .line 396
    const-string/jumbo v4, "(2800-)"

    .line 397
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->m:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    div-int v2, v5, v7

    .line 398
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->l:I

    sget v7, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    div-int v1, v5, v7

    .line 399
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->k:I

    .line 400
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->j:I

    .line 401
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->m:I

    .line 402
    const/4 v5, 0x0

    sput v5, Lcom/laiwang/protocol/android/log/PerfLogger;->l:I

    .line 406
    :cond_a
    sget v5, Lcom/laiwang/protocol/android/log/PerfLogger;->q:I

    const/4 v7, 0x1

    if-gt v5, v7, :cond_b

    .line 407
    const-string/jumbo v0, "(2800-)"

    .line 409
    :cond_b
    monitor-exit v6

    goto/16 :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5
.end method

.method public static logUploader(Ljava/lang/String;JJZLjava/lang/String;)V
    .locals 7
    .param p0, "fileExt"    # Ljava/lang/String;
    .param p1, "fileLen"    # J
    .param p3, "rt"    # J
    .param p5, "success"    # Z
    .param p6, "code"    # Ljava/lang/String;

    .prologue
    .line 482
    if-eqz p5, :cond_1

    .line 483
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->z:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    if-nez p6, :cond_0

    const-string/jumbo p6, "0"

    .end local p6    # "code":Ljava/lang/String;
    :cond_0
    aput-object p6, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :goto_0
    return-void

    .line 485
    .restart local p6    # "code":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 486
    .local v0, "netType":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/laiwang/protocol/android/LWP;->getNetworkState(Landroid/content/Context;)Lcom/laiwang/protocol/android/NetworkListener$NetworkState;

    move-result-object v1

    .line 487
    .local v1, "state":Lcom/laiwang/protocol/android/NetworkListener$NetworkState;
    iget-object v2, v1, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->networkState:Lcom/laiwang/protocol/network/Network$State;

    iget-object v2, v2, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    if-eqz v2, :cond_2

    .line 488
    iget-object v2, v1, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->networkState:Lcom/laiwang/protocol/network/Network$State;

    iget-object v2, v2, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    iget-object v0, v2, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    .line 490
    :cond_2
    sget-object v2, Lcom/laiwang/protocol/android/log/PerfLogger;->z:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    if-nez p6, :cond_3

    const-string/jumbo p6, "0"

    .end local p6    # "code":Ljava/lang/String;
    :cond_3
    aput-object p6, v3, v4

    const/4 v4, 0x5

    iget v5, v1, Lcom/laiwang/protocol/android/NetworkListener$NetworkState;->lwpConnectState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/PerfLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
