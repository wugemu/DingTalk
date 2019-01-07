.class public abstract Llgy;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Llgt;
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llgt",
        "<TT;>;",
        "Llgz;"
    }
.end annotation


# instance fields
.field private final a:Llio;

.field private final b:Llgy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgy",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Llgu;

.field private d:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llgy;-><init>(Llgy;Z)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Llgy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    .local p1, "subscriber":Llgy;, "Llgy<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Llgy;-><init>(Llgy;Z)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Llgy;Z)V
    .locals 2
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llgy",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    .local p1, "subscriber":Llgy;, "Llgy<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Llgy;->d:J

    .line 80
    iput-object p1, p0, Llgy;->b:Llgy;

    .line 81
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Llgy;->a:Llio;

    :goto_0
    iput-object v0, p0, Llgy;->a:Llio;

    .line 82
    return-void

    .line 81
    :cond_0
    new-instance v0, Llio;

    invoke-direct {v0}, Llio;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 118
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    return-void
.end method

.method protected final a(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    const-wide/16 v6, 0x0

    .line 141
    cmp-long v1, p1, v6

    if-gez v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "number requested cannot be negative: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v1, p0, Llgy;->c:Llgu;

    if-eqz v1, :cond_1

    .line 150
    iget-object v0, p0, Llgy;->c:Llgu;

    .line 155
    .local v0, "producerToRequestFrom":Llgu;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-interface {v0, p1, p2}, Llgu;->request(J)V

    .line 158
    .end local v0    # "producerToRequestFrom":Llgu;
    :goto_0
    return-void

    .line 1161
    :cond_1
    :try_start_1
    iget-wide v2, p0, Llgy;->d:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1162
    iput-wide p1, p0, Llgy;->d:J

    .line 153
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1164
    :cond_2
    :try_start_2
    iget-wide v2, p0, Llgy;->d:J

    add-long/2addr v2, p1

    .line 1166
    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    .line 1167
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Llgy;->d:J

    goto :goto_1

    .line 1169
    :cond_3
    iput-wide v2, p0, Llgy;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(Llgu;)V
    .locals 6
    .param p1, "p"    # Llgu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "passToSubscriber":Z
    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide v2, p0, Llgy;->d:J

    .line 194
    .local v2, "toRequest":J
    iput-object p1, p0, Llgy;->c:Llgu;

    .line 195
    iget-object v1, p0, Llgy;->b:Llgy;

    if-eqz v1, :cond_0

    .line 197
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    iget-object v1, p0, Llgy;->b:Llgy;

    iget-object v4, p0, Llgy;->c:Llgu;

    invoke-virtual {v1, v4}, Llgy;->a(Llgu;)V

    .line 214
    :goto_0
    return-void

    .line 202
    .end local v2    # "toRequest":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 208
    .restart local v2    # "toRequest":J
    :cond_1
    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Llgy;->c:Llgu;

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v1, v4, v5}, Llgu;->request(J)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Llgy;->c:Llgu;

    invoke-interface {v1, v2, v3}, Llgu;->request(J)V

    goto :goto_0
.end method

.method public final a(Llgz;)V
    .locals 1
    .param p1, "s"    # Llgz;

    .prologue
    .line 93
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    iget-object v0, p0, Llgy;->a:Llio;

    invoke-virtual {v0, p1}, Llio;->a(Llgz;)V

    .line 94
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    iget-object v0, p0, Llgy;->a:Llio;

    invoke-virtual {v0}, Llio;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Llgy;, "Llgy<TT;>;"
    iget-object v0, p0, Llgy;->a:Llio;

    invoke-virtual {v0}, Llio;->unsubscribe()V

    .line 99
    return-void
.end method
