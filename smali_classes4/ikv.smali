.class public final Likv;
.super Liku;
.source "MdapFileAppender.java"


# static fields
.field protected static final e:Ljava/lang/String;


# instance fields
.field protected f:Ljava/io/File;

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mdap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Likv;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lijz;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Liku;-><init>(Lijz;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Likv;->i:Z

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Likv;->j:Ljava/lang/StringBuffer;

    .line 31
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget v0, p0, Likv;->h:I

    if-lez v0, :cond_0

    .line 95
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "Appender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Likv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " appender flush: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Likv;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Likv;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_1
    iget-object v0, p0, Likv;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Likv;->a(Ljava/lang/String;)Z

    .line 102
    iget-object v0, p0, Likv;->j:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 103
    iget v0, p0, Likv;->g:I

    iget v1, p0, Likv;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Likv;->g:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Likv;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1025
    monitor-enter p0

    :try_start_0
    invoke-static {}, Liui;->a()V

    .line 38
    iget-boolean v0, p0, Likv;->i:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Likv;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Likv;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lilu;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string/jumbo v1, "\\$\\$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Likv;->g:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lima;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Likv;->a:Lijz;

    invoke-interface {v0}, Lijz;->v()Lijx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 53
    iget-object v2, p0, Likv;->a:Lijz;

    invoke-interface {v2}, Lijz;->v()Lijx;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 56
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 57
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "Appender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n\n\nexternal appender listener spend too much time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    iget-object v0, p0, Likv;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 63
    iget v0, p0, Likv;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Likv;->h:I

    .line 73
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2009
    sget-boolean v0, Liui;->a:Z

    .line 74
    if-nez v0, :cond_2

    iget v0, p0, Likv;->h:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 76
    invoke-static {}, Lima;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v0

    iget-object v1, p0, Likv;->b:Ljava/lang/String;

    iget v2, p0, Likv;->h:I

    iget-object v3, p0, Likv;->a:Lijz;

    invoke-virtual {v0, v1, v2, v3}, Lilq;->a(Ljava/lang/String;ILijz;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_2
    iget-object v0, p0, Likv;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Likv;->a(Ljava/lang/String;)Z

    .line 80
    iget v0, p0, Likv;->g:I

    iget v1, p0, Likv;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Likv;->g:I

    .line 81
    iget-object v0, p0, Likv;->j:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Likv;->h:I

    .line 85
    :cond_3
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v0

    iget-object v1, p0, Likv;->b:Ljava/lang/String;

    iget v2, p0, Likv;->g:I

    iget-object v3, p0, Likv;->a:Lijz;

    invoke-virtual {v0, v1, v2, v3}, Lilq;->a(Ljava/lang/String;ILijz;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    const-string/jumbo v0, "Appender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Likv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Likv;->d()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Likv;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :cond_4
    monitor-exit p0

    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_3
    const-string/jumbo v1, "Appender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Likv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " first append: [just check, not a real error] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Z)V
    .locals 0

    .prologue
    .line 110
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected final c()Ljava/io/File;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    iget-object v0, p0, Likv;->f:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {}, Lima;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v1, 0x0

    .line 119
    :try_start_0
    iget-object v0, p0, Likv;->c:Landroid/content/Context;

    const-string/jumbo v2, "mdap"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    if-eqz v0, :cond_1

    .line 125
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Likv;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Likv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Likv;->f:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :cond_1
    :goto_1
    iget-object v0, p0, Likv;->f:Ljava/io/File;

    if-nez v0, :cond_3

    .line 136
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Likv;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "mdap"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    :cond_2
    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Likv;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Likv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Likv;->f:Ljava/io/File;

    .line 147
    :cond_3
    iget-object v0, p0, Likv;->f:Ljava/io/File;

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string/jumbo v2, "Appender"

    const-string/jumbo v3, "getFile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    const-string/jumbo v1, "Appender"

    const-string/jumbo v2, "getFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 141
    :catch_2
    move-exception v0

    .line 142
    const-string/jumbo v2, "Appender"

    const-string/jumbo v3, "getFile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    iget v0, p0, Likv;->g:I

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_0
    invoke-static {}, Lima;->d()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    :try_start_1
    invoke-virtual {p0}, Likv;->c()Ljava/io/File;

    move-result-object v0

    .line 2164
    iget-object v1, p0, Likv;->c:Landroid/content/Context;

    const-string/jumbo v2, "mdap"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2165
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "upload"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2167
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2170
    :cond_1
    invoke-virtual {p0}, Likv;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2171
    invoke-static {v1}, Lima;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2172
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-static {v0, v3}, Lilu;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Likv;->c()Ljava/io/File;

    move-result-object v0

    .line 3151
    iget-object v1, p0, Likv;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 3152
    new-instance v2, Ljava/io/File;

    sget-object v3, Likv;->e:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3153
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3154
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 3157
    :cond_3
    invoke-virtual {p0}, Likv;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3158
    invoke-static {v1}, Lima;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3159
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    invoke-static {v0, v3}, Lilu;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    :goto_2
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Likv;->g:I

    .line 201
    iget-object v0, p0, Likv;->a:Lijz;

    iget-object v1, p0, Likv;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lijz;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "Appender"

    iget-object v3, p0, Likv;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method
