.class public final Ljbp;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

# interfaces
.implements Ljcj$a;


# instance fields
.field private a:Ljbq;

.field private b:Ljcj;

.field private c:Ljej;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljbq;Ljej;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljbp;->f:Landroid/content/Context;

    iput-object p3, p0, Ljbp;->c:Ljej;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Ljbp;->a:Ljbq;

    new-instance v0, Ljcj;

    new-instance v1, Ljbt;

    iget-object v2, p0, Ljbp;->a:Ljbq;

    invoke-direct {v1, v2}, Ljbt;-><init>(Ljbq;)V

    invoke-direct {v0, v1}, Ljcj;-><init>(Ljcm;)V

    iput-object v0, p0, Ljbp;->b:Ljcj;

    iget-object v0, p0, Ljbp;->a:Ljbq;

    iget-object v0, v0, Ljbq;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Ljbu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbp;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "DexDownLoad()"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljbg;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v0, p0, Ljbp;->a:Ljbq;

    iget-object v0, v0, Ljbq;->d:Ljava/lang/String;

    const-string/jumbo v2, "used"

    invoke-static {p1, v0, v2}, Ljbu$a;->a(Ljbg;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljbz;

    .line 6000
    iget-object v0, v0, Ljbz;->e:Ljava/lang/String;

    .line 0
    iget-object v2, p0, Ljbp;->a:Ljbq;

    iget-object v2, v2, Ljbq;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Ljcb;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "dDownLoad"

    const-string/jumbo v3, "isUsed()"

    invoke-static {v0, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljbg;Ljbz;Ljbq;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 0
    iget-object v2, p3, Ljbq;->d:Ljava/lang/String;

    iget-object v3, p3, Ljbq;->e:Ljava/lang/String;

    iget-object v4, p3, Ljbq;->f:Ljava/lang/String;

    const-string/jumbo v5, "errorstatus"

    .line 2000
    iget-object v6, p2, Ljbz;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v3, p0, Ljbp;->c:Ljej;

    invoke-virtual {v3}, Ljej;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljbp;->c:Ljej;

    .line 3000
    iget-object v4, v4, Ljej;->b:Ljava/lang/String;

    .line 0
    invoke-static {v2, v3, v4}, Ljbu;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v2, p0, Ljbp;->c:Ljej;

    invoke-static {v1, p1, v2}, Ljbu;->a(Landroid/content/Context;Ljbg;Ljej;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v2, p0, Ljbp;->c:Ljej;

    invoke-static {v1, v2}, Ljbu;->a(Landroid/content/Context;Ljej;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Ljbp;->d:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Ljbp;->f:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Ljbu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3, v4}, Ljbz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v5, Ljbz;

    .line 4000
    invoke-virtual {p1, v3, v5, v1}, Ljbg;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v3, p0, Ljbp;->c:Ljej;

    .line 5000
    iget-object v3, v3, Ljej;->b:Ljava/lang/String;

    .line 0
    invoke-static {v1, v2, v3}, Ljbu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v2, p0, Ljbp;->c:Ljej;

    iget-object v3, p0, Ljbp;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v3, v4}, Ljbu;->a(Landroid/content/Context;Ljbg;Ljej;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v2, p0, Ljbp;->c:Ljej;

    invoke-static {v1, v2}, Ljbu;->a(Landroid/content/Context;Ljej;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "dDownLoad"

    const-string/jumbo v3, "processDownloadedFile()"

    invoke-static {v1, v2, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    :try_start_0
    iget-object v0, p0, Ljbp;->c:Ljej;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljbp;->c:Ljej;

    invoke-virtual {v0}, Ljej;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget-object v3, v3, Ljbq;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljbp;->c:Ljej;

    .line 7000
    iget-object v0, v0, Ljej;->b:Ljava/lang/String;

    .line 0
    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget-object v3, v3, Ljbq;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget v3, v3, Ljbq;->h:I

    if-lt v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget v3, v3, Ljbq;->g:I

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Ljbp;->f:Landroid/content/Context;

    invoke-static {v0}, Ljee;->p(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    new-instance v0, Ljbg;

    iget-object v3, p0, Ljbp;->f:Landroid/content/Context;

    invoke-static {}, Ljbw;->b()Ljbw;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljbg;-><init>(Landroid/content/Context;Ljbf;)V

    invoke-direct {p0, v0}, Ljbp;->a(Ljbg;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_3
    if-nez v0, :cond_6

    iget-object v4, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v0, p0, Ljbp;->c:Ljej;

    invoke-virtual {v0}, Ljej;->a()Ljava/lang/String;

    move-result-object v0

    .line 8000
    new-instance v5, Ljbg;

    invoke-static {}, Ljbw;->b()Ljbw;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Ljbg;-><init>(Landroid/content/Context;Ljbf;)V

    const-string/jumbo v3, "copy"

    invoke-static {v5, v0, v3}, Ljbu$a;->a(Ljbg;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljcb;->a(Ljava/util/List;)V

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v1

    :goto_4
    if-ge v3, v7, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljbz;

    .line 9000
    iget-object v0, v0, Ljbz;->a:Ljava/lang/String;

    .line 8000
    invoke-static {v4, v5, v0}, Ljbu;->b(Landroid/content/Context;Ljbg;Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_0
    move v0, v2

    .line 0
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget-object v3, v3, Ljbq;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Ljbu$a;->a(Ljbg;Ljava/lang/String;)Ljbz;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Ljbp;->a:Ljbq;

    invoke-direct {p0, v0, v3, v4}, Ljbp;->a(Ljbg;Ljbz;Ljbq;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v3, "isNeedDownload()"

    invoke-static {v0, v1, v3}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_5
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    invoke-virtual {p0}, Ljbp;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "startDownload()"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ljbp;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljbp;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Ljbp;->e:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Ljbp;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Ljbp;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljbp;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Ljcb;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Ljbp;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljbp;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Ljcb;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Ljbp;->a:Ljbq;

    .line 10000
    iget-object v2, v0, Ljbq;->b:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Ljbp;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Ljcb;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljbp;->a:Ljbq;

    iget-object v4, v0, Ljbq;->e:Ljava/lang/String;

    new-instance v6, Ljbg;

    iget-object v0, p0, Ljbp;->f:Landroid/content/Context;

    invoke-static {}, Ljbw;->b()Ljbw;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljbg;-><init>(Landroid/content/Context;Ljbf;)V

    new-instance v0, Ljbz$a;

    iget-object v1, p0, Ljbp;->a:Ljbq;

    iget-object v1, v1, Ljbq;->c:Ljava/lang/String;

    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget-object v3, v3, Ljbq;->d:Ljava/lang/String;

    iget-object v5, p0, Ljbp;->a:Ljbq;

    iget-object v5, v5, Ljbq;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ljbz$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "copy"

    .line 11000
    iput-object v1, v0, Ljbz$a;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0}, Ljbz$a;->a()Ljbz;

    move-result-object v0

    iget-object v1, p0, Ljbp;->a:Ljbq;

    iget-object v1, v1, Ljbq;->c:Ljava/lang/String;

    iget-object v2, p0, Ljbp;->a:Ljbq;

    iget-object v2, v2, Ljbq;->d:Ljava/lang/String;

    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget-object v3, v3, Ljbq;->f:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3}, Ljbz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljbg;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v1, p0, Ljbp;->a:Ljbq;

    iget-object v1, v1, Ljbq;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v1, p0, Ljbp;->c:Ljej;

    iget-object v2, p0, Ljbp;->d:Ljava/lang/String;

    iget-object v3, p0, Ljbp;->a:Ljbq;

    iget-object v3, v3, Ljbq;->f:Ljava/lang/String;

    invoke-static {v0, v6, v1, v2, v3}, Ljbu;->a(Landroid/content/Context;Ljbg;Ljej;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v1, p0, Ljbp;->c:Ljej;

    invoke-static {v0, v1}, Ljbu;->a(Landroid/content/Context;Ljej;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Ljcq;

    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v2, p0, Ljbp;->c:Ljej;

    invoke-virtual {v2}, Ljej;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljbp;->c:Ljej;

    .line 12000
    iget-object v3, v3, Ljej;->b:Ljava/lang/String;

    .line 0
    const-string/jumbo v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Ljcq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "{\"param_int_first\":1}"

    invoke-virtual {v0, v1}, Ljcq;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Ljcr;->a(Ljcq;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "clearMarker()"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onFinish1"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ljbp;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "onFinish"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    invoke-direct {p0}, Ljbp;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljcq;

    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    iget-object v2, p0, Ljbp;->c:Ljej;

    invoke-virtual {v2}, Ljej;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljbp;->c:Ljej;

    .line 1000
    iget-object v3, v3, Ljej;->b:Ljava/lang/String;

    .line 0
    const-string/jumbo v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Ljcq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "{\"param_int_first\":0}"

    invoke-virtual {v0, v1}, Ljcq;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ljbp;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Ljcr;->a(Ljcq;Landroid/content/Context;)V

    iget-object v0, p0, Ljbp;->b:Ljcj;

    invoke-virtual {v0, p0}, Ljcj;->a(Ljcj$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "dDownLoad"

    const-string/jumbo v2, "run()"

    invoke-static {v0, v1, v2}, Ljen;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
