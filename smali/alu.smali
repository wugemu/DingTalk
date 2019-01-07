.class public final Lalu;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Lfyh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalu$b;,
        Lalu$a;
    }
.end annotation


# static fields
.field public static c:Lalo;

.field private static d:Lalu;


# instance fields
.field public a:Lals;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lalr;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ScheduledFuture;

.field private g:Ljava/util/concurrent/ScheduledFuture;

.field private h:Ljava/util/concurrent/ScheduledFuture;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lalu;

    invoke-direct {v0}, Lalu;-><init>()V

    sput-object v0, Lalu;->d:Lalu;

    .line 32
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    sput-object v0, Lalu;->c:Lalo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lalu;->b:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lalu;->e:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lalu;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    iput-object v1, p0, Lalu;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 34
    iput-object v1, p0, Lalu;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    new-instance v0, Lalu$1;

    invoke-direct {v0, p0}, Lalu$1;-><init>(Lalu;)V

    iput-object v0, p0, Lalu;->i:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lalt;

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 1305
    iget-object v1, v1, Lajw;->c:Landroid/content/Context;

    .line 45
    invoke-direct {v0}, Lalt;-><init>()V

    iput-object v0, p0, Lalu;->a:Lals;

    .line 46
    invoke-static {}, Lanh;->a()Lanh;

    new-instance v0, Lalu$a;

    invoke-direct {v0, p0}, Lalu$a;-><init>(Lalu;)V

    invoke-static {v0}, Lanh;->a(Ljava/lang/Runnable;)V

    .line 47
    invoke-static {p0}, Lfyh;->a(Lfyh$a;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lalu;)I
    .locals 4
    .param p0, "x0"    # Lalu;

    .prologue
    .line 22
    .line 4171
    invoke-static {}, Lamu;->b()V

    .line 4172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4173
    const/4 v1, 0x5

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 4174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 4175
    iget-object v2, p0, Lalu;->a:Lals;

    const-string/jumbo v3, "time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lals;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 22
    return v0
.end method

.method public static a()Lalu;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lalu;->d:Lalu;

    return-object v0
.end method

.method private a(II)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 154
    invoke-static {}, Lamu;->b()V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lalu;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lalu;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lalr;

    .line 157
    .local v1, "listener":Lalr;
    if-eqz v1, :cond_0

    .line 163
    int-to-long v2, p2

    .line 2142
    iget-object v4, p0, Lalu;->a:Lals;

    invoke-interface {v4}, Lals;->a()I

    move-result v4

    int-to-long v4, v4

    .line 163
    invoke-interface {v1, v2, v3, v4, v5}, Lalr;->a(JJ)V

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "listener":Lalr;
    :cond_1
    return-void
.end method

.method static synthetic b(Lalu;)Lals;
    .locals 1
    .param p0, "x0"    # Lalu;

    .prologue
    .line 22
    iget-object v0, p0, Lalu;->a:Lals;

    return-object v0
.end method

.method static synthetic c(Lalu;)I
    .locals 2
    .param p0, "x0"    # Lalu;

    .prologue
    .line 22
    .line 4179
    invoke-static {}, Lamu;->b()V

    .line 4181
    iget-object v0, p0, Lalu;->a:Lals;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lals;->b(I)I

    move-result v0

    .line 22
    return v0
.end method


# virtual methods
.method public final a(Lald;)V
    .locals 4
    .param p1, "log"    # Lald;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 59
    invoke-static {}, Lamu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "LogStoreMgr"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Log"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lald;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lalu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lalu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    invoke-virtual {v0}, Lajw;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    :cond_1
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v0, 0x0

    iget-object v1, p0, Lalu;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lalu;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 68
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lalu;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lalu;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_4
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lalu;->f:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lalu;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lalu;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public final a(Lalr;)V
    .locals 1
    .param p1, "listener"    # Lalr;

    .prologue
    .line 146
    iget-object v0, p0, Lalu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 187
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v0, 0x0

    iget-object v1, p0, Lalu;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lalu;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 189
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lalu;->g:Ljava/util/concurrent/ScheduledFuture;

    new-instance v1, Lalu$b;

    invoke-direct {v1, p0}, Lalu$b;-><init>(Lalu;)V

    const/4 v2, 0x1

    .line 2223
    iput v2, v1, Lalu$b;->a:I

    .line 189
    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lalu;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 191
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lalu;->h:Ljava/util/concurrent/ScheduledFuture;

    new-instance v1, Lalu$b;

    invoke-direct {v1, p0}, Lalu$b;-><init>(Lalu;)V

    const/16 v2, 0x1e

    .line 3223
    iput v2, v1, Lalu$b;->a:I

    .line 191
    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lalu;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 193
    return-void
.end method

.method public final b(Lalr;)V
    .locals 1
    .param p1, "listener"    # Lalr;

    .prologue
    .line 150
    iget-object v0, p0, Lalu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lamu;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    :try_start_1
    iget-object v4, p0, Lalu;->b:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    iget-object v3, p0, Lalu;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lalu;->b:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    :try_start_3
    iget-object v3, p0, Lalu;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v2

    .line 115
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    .restart local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    :cond_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 117
    iget-object v3, p0, Lalu;->a:Lals;

    invoke-interface {v3, v1}, Lals;->a(Ljava/util/List;)Z

    .line 118
    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lalu;->a(II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_8
    const-string/jumbo v3, "LogStoreMgr"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 115
    .restart local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    .restart local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    goto :goto_1
.end method
