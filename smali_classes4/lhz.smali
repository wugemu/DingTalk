.class public final Llhz;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Llgu;


# static fields
.field public static final g:Llgu;


# instance fields
.field public a:J

.field public b:Llgu;

.field public c:Z

.field d:J

.field e:J

.field public f:Llgu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Llhz$1;

    invoke-direct {v0}, Llhz$1;-><init>()V

    sput-object v0, Llhz;->g:Llgu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    :cond_0
    :goto_0
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v2, p0, Llhz;->d:J

    .line 148
    .local v2, "localRequested":J
    iget-object v0, p0, Llhz;->f:Llgu;

    .line 149
    .local v0, "localProducer":Llgu;
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    if-nez v0, :cond_1

    .line 152
    const/4 v10, 0x0

    iput-boolean v10, p0, Llhz;->c:Z

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Llhz;->d:J

    .line 156
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Llhz;->e:J

    .line 157
    const/4 v10, 0x0

    iput-object v10, p0, Llhz;->f:Llgu;

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-wide v4, p0, Llhz;->a:J

    .line 162
    .local v4, "r":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v4, v10

    if-eqz v10, :cond_3

    .line 163
    add-long v6, v4, v2

    .line 164
    .local v6, "u":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_2

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v6, v10

    if-nez v10, :cond_4

    .line 165
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    .line 166
    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, p0, Llhz;->a:J

    .line 176
    .end local v6    # "u":J
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 177
    sget-object v10, Llhz;->g:Llgu;

    if-ne v0, v10, :cond_6

    .line 178
    const/4 v10, 0x0

    iput-object v10, p0, Llhz;->b:Llgu;

    goto :goto_0

    .line 158
    .end local v0    # "localProducer":Llgu;
    .end local v2    # "localRequested":J
    .end local v4    # "r":J
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 168
    .restart local v0    # "localProducer":Llgu;
    .restart local v2    # "localRequested":J
    .restart local v4    # "r":J
    .restart local v6    # "u":J
    :cond_4
    const-wide/16 v10, 0x0

    sub-long v8, v6, v10

    .line 169
    .local v8, "v":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_5

    .line 170
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "more produced than requested"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    :cond_5
    move-wide v4, v8

    .line 173
    iput-wide v8, p0, Llhz;->a:J

    goto :goto_1

    .line 180
    .end local v6    # "u":J
    .end local v8    # "v":J
    :cond_6
    iput-object v0, p0, Llhz;->b:Llgu;

    .line 181
    invoke-interface {v0, v4, v5}, Llgu;->request(J)V

    goto :goto_0

    .line 184
    :cond_7
    iget-object v1, p0, Llhz;->b:Llgu;

    .line 185
    .local v1, "p":Llgu;
    if-eqz v1, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_0

    .line 186
    invoke-interface {v1, v2, v3}, Llgu;->request(J)V

    goto/16 :goto_0
.end method

.method public final request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 42
    cmp-long v1, p1, v6

    if-gez v1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "n >= 0 required"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    cmp-long v1, p1, v6

    if-nez v1, :cond_1

    .line 72
    :goto_0
    return-void

    .line 48
    :cond_1
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v1, p0, Llhz;->c:Z

    if-eqz v1, :cond_2

    .line 50
    iget-wide v6, p0, Llhz;->d:J

    add-long/2addr v6, p1

    iput-wide v6, p0, Llhz;->d:J

    .line 51
    monitor-exit p0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Llhz;->c:Z

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-wide v2, p0, Llhz;->a:J

    .line 58
    .local v2, "r":J
    add-long v4, v2, p1

    .line 59
    .local v4, "u":J
    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 60
    const-wide v4, 0x7fffffffffffffffL

    .line 62
    :cond_3
    iput-wide v4, p0, Llhz;->a:J

    .line 64
    iget-object v0, p0, Llhz;->b:Llgu;

    .line 65
    .local v0, "p":Llgu;
    if-eqz v0, :cond_4

    .line 66
    invoke-interface {v0, p1, p2}, Llgu;->request(J)V

    .line 69
    :cond_4
    invoke-virtual {p0}, Llhz;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 72
    .end local v0    # "p":Llgu;
    .end local v2    # "r":J
    .end local v4    # "u":J
    :catchall_1
    move-exception v1

    .line 73
    monitor-enter p0

    .line 74
    const/4 v6, 0x0

    :try_start_3
    iput-boolean v6, p0, Llhz;->c:Z

    .line 75
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
