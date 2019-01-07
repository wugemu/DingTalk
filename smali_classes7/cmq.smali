.class public final Lcmq;
.super Ljava/lang/Object;
.source "CustomThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmq$a;
    }
.end annotation


# static fields
.field private static c:Lcmq;


# instance fields
.field public volatile a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

.field b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcmq$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcmq;->b:Ljava/util/HashSet;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcmq;->d:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 454
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    const-string/jumbo v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "0X"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 476
    :cond_1
    :goto_0
    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 464
    :catch_1
    move-exception v0

    .line 465
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    .line 470
    :catch_2
    move-exception v0

    .line 471
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcmq;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcmq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcmq;->c:Lcmq;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcmq;

    invoke-direct {v0}, Lcmq;-><init>()V

    sput-object v0, Lcmq;->c:Lcmq;

    .line 39
    :cond_0
    sget-object v0, Lcmq;->c:Lcmq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcmq;J)V
    .locals 5
    .param p0, "x0"    # Lcmq;
    .param p1, "x1"    # J

    .prologue
    .line 31
    .line 2409
    iget-object v1, p0, Lcmq;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2410
    :try_start_0
    iget-object v0, p0, Lcmq;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmq$a;

    .line 2411
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcmq$4;

    invoke-direct {v4, p0, v0, p1, p2}, Lcmq$4;-><init>(Lcmq;Lcmq$a;J)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "x0"    # Lcmq;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1422
    iget-object v8, p0, Lcmq;->d:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1423
    :try_start_0
    iget-object v0, p0, Lcmq;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcmq$a;

    .line 1424
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v9

    new-instance v1, Lcmq$5;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcmq$5;-><init>(Lcmq;Lcmq$a;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 435
    iget-object v2, p0, Lcmq;->d:Ljava/util/ArrayList;

    monitor-enter v2

    .line 436
    :try_start_0
    iget-object v1, p0, Lcmq;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmq$a;

    .line 437
    .local v0, "listener":Lcmq$a;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcmq$6;

    invoke-direct {v4, p0, v0}, Lcmq$6;-><init>(Lcmq;Lcmq$a;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 444
    .end local v0    # "listener":Lcmq$a;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private declared-synchronized f(J)Ljava/io/File;
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    const/4 v2, 0x0

    .line 112
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 128
    :goto_0
    monitor-exit p0

    return-object v1

    .line 116
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "custom_theme"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    move-object v1, v2

    .line 118
    goto :goto_0

    .line 120
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "ends"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    move-object v1, v2

    .line 126
    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_4
    move-object v0, v1

    .line 128
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 112
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized g(J)Ljava/lang/String;
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    const/4 v2, 0x0

    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcmq;->f(J)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 142
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 145
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    .line 146
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 149
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 141
    .end local v0    # "bytes":[B
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcmq;->a(J)Ljava/io/File;

    move-result-object v1

    .line 91
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadBitmap theme bitmap null case "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_1
    if-nez v0, :cond_0

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "loadBitmap theme bitmap null case "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " decodeFile fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method declared-synchronized a(J)Ljava/io/File;
    .locals 5
    .param p1, "orgId"    # J

    .prologue
    const/4 v2, 0x0

    .line 62
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 66
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "custom_theme"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v1

    .line 71
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 73
    .end local v0    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v0

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 79
    goto :goto_0

    .line 62
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    const-string/jumbo v0, "downloadTheme fail case mediaId or md5 empty"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcmq;->b(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const-string/jumbo v0, "downloadTheme fail case theme exists"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcmq;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    const-string/jumbo v0, "downloadTheme fail case theme is loading"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_3
    const-string/jumbo v0, "theme_download_fail"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    .line 199
    const-string/jumbo v0, "downloadTheme fail case fail too much"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 202
    :cond_4
    move-object v8, p3

    .line 204
    .local v8, "url":Ljava/lang/String;
    :try_start_3
    invoke-static {p3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 208
    :goto_1
    :try_start_4
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/request/Request;

    .line 209
    .local v7, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 210
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 211
    invoke-interface {v7}, Lcom/alibaba/doraemon/request/Request;->markHugeDownload()Lcom/alibaba/doraemon/request/Request;

    .line 212
    new-instance v0, Lcmq$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcmq$1;-><init>(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 312
    iget-object v0, p0, Lcmq;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v7}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0

    .line 205
    .end local v7    # "request":Lcom/alibaba/doraemon/request/Request;
    :catch_0
    move-exception v6

    .line 206
    .local v6, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcmq$a;)V
    .locals 2
    .param p1, "listener"    # Lcmq$a;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lcmq;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcmq;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcmq;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 377
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcmq;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    .line 378
    invoke-direct {p0}, Lcmq;->d()V

    .line 379
    const-string/jumbo v0, "clearThemeMem success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcmq$a;)V
    .locals 2
    .param p1, "listener"    # Lcmq$a;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v1, p0, Lcmq;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcmq;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b(J)Z
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcmq;->f(J)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(JLjava/lang/String;)Z
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcmq;->g(J)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "endMarkString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 163
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 159
    .end local v0    # "endMarkString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final c()Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcmq;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    return-object v0
.end method

.method public final declared-synchronized c(J)V
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcmq;->f(J)Ljava/io/File;

    move-result-object v0

    .line 172
    .local v0, "endsMark":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeTheme orgId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "endsMark":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized d(J)V
    .locals 11
    .param p1, "orgId"    # J

    .prologue
    .line 336
    monitor-enter p0

    const/4 v1, 0x0

    .line 337
    .local v1, "customThemeObject":Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcmq;->b(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    const-string/jumbo v6, "prepareTheme fail case have no theme"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcmq;->a(J)Ljava/io/File;

    move-result-object v4

    .line 342
    .local v4, "orgDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "theme.json"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v5, "themeJson":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 344
    const-string/jumbo v6, "prepareTheme fail case have no json fail"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    .end local v4    # "orgDir":Ljava/io/File;
    .end local v5    # "themeJson":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 347
    .restart local v4    # "orgDir":Ljava/io/File;
    .restart local v5    # "themeJson":Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    .line 348
    .local v3, "json":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 349
    const-string/jumbo v6, "prepareTheme fail case have no json string"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 353
    :cond_2
    :try_start_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    invoke-virtual {v6, v3, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    move-object v1, v0
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    :goto_1
    if-nez v1, :cond_3

    .line 358
    :try_start_4
    const-string/jumbo v6, "prepareTheme fail case have no json object"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "jse":Lcom/google/gson/JsonSyntaxException;
    const-string/jumbo v6, "prepareTheme fail case json object invalid=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 361
    .end local v2    # "jse":Lcom/google/gson/JsonSyntaxException;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcmq;->g(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, p1, p2, v6}, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->init(JLjava/lang/String;)V

    .line 362
    iput-object v1, p0, Lcmq;->a:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    .line 363
    invoke-direct {p0}, Lcmq;->d()V

    .line 364
    const-string/jumbo v6, "prepareTheme success"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public final e(J)V
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 368
    const-string/jumbo v0, "CustomThemeManager"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcmq$3;

    invoke-direct {v1, p0, p1, p2}, Lcmq$3;-><init>(Lcmq;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method
