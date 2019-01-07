.class public abstract Livc;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Live;


# static fields
.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:I

.field protected c:Landroid/net/Uri;

.field protected d:Landroid/database/Cursor;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field private final g:Livi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Livi",
            "<",
            "Ljava/lang/Integer;",
            "Livb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Livc;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sort"    # I
    .param p4, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Livi;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Livi;-><init>(I)V

    iput-object v0, p0, Livc;->g:Livi;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Livc;->f:Z

    .line 50
    iput p3, p0, Livc;->b:I

    .line 51
    iput-object p2, p0, Livc;->c:Landroid/net/Uri;

    .line 52
    iput-object p4, p0, Livc;->e:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Livc;->a:Landroid/content/ContentResolver;

    .line 54
    invoke-virtual {p0}, Livc;->c()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Livc;->d:Landroid/database/Cursor;

    .line 62
    iget-object v0, p0, Livc;->g:Livi;

    invoke-virtual {v0}, Livi;->a()V

    .line 63
    return-void
.end method

.method private e()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Livc;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 111
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-boolean v0, p0, Livc;->f:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Livc;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Livc;->f:Z

    .line 111
    :cond_1
    iget-object v0, p0, Livc;->d:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Livc;->c:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 85
    iget-object v0, p0, Livc;->c:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Livc;->c:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/database/Cursor;)Livb;
.end method

.method public final a(I)Livd;
    .locals 5
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Livc;->g:Livi;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Livi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Livb;

    .line 117
    .local v1, "result":Livb;
    if-nez v1, :cond_1

    .line 118
    invoke-direct {p0}, Livc;->e()Landroid/database/Cursor;

    move-result-object v0

    .line 119
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 127
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 120
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    monitor-enter p0

    .line 121
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-virtual {p0, v0}, Livc;->a(Landroid/database/Cursor;)Livb;

    move-result-object v1

    .line 124
    :goto_1
    iget-object v2, p0, Livc;->g:Livi;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Livi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    monitor-exit p0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    move-object v2, v1

    .line 127
    goto :goto_0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object v1, v2

    .line 122
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final a(Landroid/net/Uri;)Livd;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 184
    .line 1176
    iget-object v3, p0, Livc;->c:Landroid/net/Uri;

    .line 1177
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Liva;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1178
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Liva;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1179
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Liva;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1180
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 2166
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2167
    sget-object v8, Livc;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 2168
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1180
    :cond_0
    invoke-static {v7, v3}, Liva;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    .line 184
    :goto_0
    if-nez v3, :cond_3

    .line 207
    :cond_1
    :goto_1
    return-object v2

    .line 1180
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 188
    :cond_3
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 193
    .local v4, "matchId":J
    invoke-direct {p0}, Livc;->e()Landroid/database/Cursor;

    move-result-object v0

    .line 194
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 195
    monitor-enter p0

    .line 196
    const/4 v3, -0x1

    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 198
    invoke-virtual {p0, v0}, Livc;->b(Landroid/database/Cursor;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_5

    .line 199
    iget-object v3, p0, Livc;->g:Livi;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Livi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Livb;

    .line 200
    .local v2, "image":Livb;
    if-nez v2, :cond_4

    .line 201
    invoke-virtual {p0, v0}, Livc;->a(Landroid/database/Cursor;)Livb;

    move-result-object v2

    .line 202
    iget-object v3, p0, Livc;->g:Livi;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Livi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_4
    monitor-exit p0

    goto :goto_1

    .line 208
    .end local v1    # "i":I
    .end local v2    # "image":Livb;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 197
    .restart local v1    # "i":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 207
    :cond_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 190
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "i":I
    .end local v4    # "matchId":J
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 67
    .line 1154
    :try_start_0
    iget-object v0, p0, Livc;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Livc;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Livc;->f:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    iput-object v1, p0, Livc;->a:Landroid/content/ContentResolver;

    .line 72
    iget-object v0, p0, Livc;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Livc;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    iput-object v1, p0, Livc;->d:Landroid/database/Cursor;

    .line 76
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    invoke-direct {p0}, Livc;->e()Landroid/database/Cursor;

    move-result-object v0

    .line 94
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 96
    :goto_0
    return v1

    .line 95
    :cond_0
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract b(Landroid/database/Cursor;)J
.end method

.method protected abstract c()Landroid/database/Cursor;
.end method

.method protected final d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    iget v2, p0, Livc;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v0, " ASC"

    .line 228
    .local v0, "ascending":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 236
    .local v1, "dateExpr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 221
    .end local v0    # "ascending":Ljava/lang/String;
    .end local v1    # "dateExpr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, " DESC"

    goto :goto_0
.end method
