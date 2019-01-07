.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final d:Landroid/support/v4/content/Loader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.a;"
        }
    .end annotation
.end field

.field e:Landroid/database/Cursor;

.field f:Lew;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Landroid/support/v4/content/Loader$a;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$a;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->d:Landroid/support/v4/content/Loader$a;

    .line 121
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    .line 3244
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->m:Z

    .line 94
    if-eqz v1, :cond_1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    .line 102
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    .line 4226
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->k:Z

    .line 104
    if-eqz v1, :cond_2

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->b(Ljava/lang/Object;)V

    .line 108
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private o()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 52
    monitor-enter p0

    .line 1327
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->b:Landroid/support/v4/content/AsyncTaskLoader$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    :goto_0
    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    new-instance v0, Lew;

    invoke-direct {v0}, Lew;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->f:Lew;

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2146
    :try_start_2
    iget-object v0, p0, Landroid/support/v4/content/Loader;->j:Landroid/content/Context;

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/v4/content/CursorLoader;->f:Lew;

    invoke-static/range {v0 .. v6}, Ldo;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lew;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 62
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 65
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 66
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->d:Landroid/support/v4/content/Loader$a;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :cond_2
    monitor-enter p0

    .line 75
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->f:Lew;

    .line 76
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v7

    .line 67
    :catch_0
    move-exception v8

    .line 68
    .local v8, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 69
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 75
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/support/v4/content/CursorLoader;->f:Lew;

    .line 76
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    .line 5168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5169
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 238
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Landroid/support/v4/content/CursorLoader;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/content/CursorLoader;->o()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->e()V

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->f:Lew;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->f:Lew;

    .line 3067
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3068
    :try_start_1
    iget-boolean v0, v1, Lew;->a:Z

    if-eqz v0, :cond_1

    .line 3069
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 88
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 3071
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lew;->a:Z

    .line 3072
    const/4 v0, 0x1

    iput-boolean v0, v1, Lew;->c:Z

    .line 3074
    iget-object v0, v1, Lew;->b:Ljava/lang/Object;

    .line 3075
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3081
    if-eqz v0, :cond_2

    :try_start_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 3082
    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3085
    :cond_2
    :try_start_5
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3086
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, v1, Lew;->c:Z

    .line 3087
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3088
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 88
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 3075
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 3085
    :catchall_3
    move-exception v0

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3086
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, v1, Lew;->c:Z

    .line 3087
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3088
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Landroid/support/v4/content/CursorLoader;->a(Landroid/database/Cursor;)V

    .line 4443
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->n:Z

    .line 4444
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->n:Z

    .line 4445
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->o:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->o:Z

    .line 152
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->k()V

    .line 155
    :cond_2
    return-void
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->j()Z

    .line 164
    return-void
.end method

.method protected final h()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->h()V

    .line 5163
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->j()Z

    .line 180
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Landroid/database/Cursor;

    .line 184
    return-void
.end method
