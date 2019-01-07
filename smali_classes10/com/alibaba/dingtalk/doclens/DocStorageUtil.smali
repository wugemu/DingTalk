.class public final Lcom/alibaba/dingtalk/doclens/DocStorageUtil;
.super Ljava/lang/Object;
.source "DocStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;
    }
.end annotation


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized a(Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;)Ljava/io/File;
    .locals 8
    .param p0, "fileType"    # Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    .prologue
    .line 35
    const-class v4, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 36
    invoke-static {}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b()V

    .line 38
    :cond_0
    sget-object v3, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "time":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 40
    .local v0, "name":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 51
    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "/"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const/4 v5, 0x3

    aput-object v0, v3, v5

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 42
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "_i.png"

    .line 43
    goto :goto_0

    .line 45
    :pswitch_1
    const-string/jumbo v0, "_d.png"

    .line 46
    goto :goto_0

    .line 48
    :pswitch_2
    const-string/jumbo v0, "_p.pdf"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "time":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized a()V
    .locals 12

    .prologue
    .line 59
    const-class v6, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 60
    invoke-static {}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b()V

    .line 62
    :cond_0
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "docDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 76
    :cond_1
    :goto_0
    monitor-exit v6

    return-void

    .line 68
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, "curTime":J
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 70
    .local v3, "files":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 71
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/32 v10, 0x5265c00

    cmp-long v5, v8, v10

    if-lez v5, :cond_3

    .line 72
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 70
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 75
    :cond_4
    const/4 v5, 0x0

    sput-object v5, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    .end local v0    # "curTime":J
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static declared-synchronized b()V
    .locals 7

    .prologue
    .line 79
    const-class v4, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "/"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "doclens_temp"

    aput-object v6, v3, v5

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b:Ljava/lang/String;

    .line 83
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "docDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const-string/jumbo v3, "DocStorageUtil"

    const-string/jumbo v5, "create doc scan fold fail"

    .line 1018
    const-string/jumbo v6, "im"

    invoke-static {v3, v5, v6}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v2    # "docDir":Ljava/io/File;
    :cond_0
    monitor-exit v4

    return-void

    .line 79
    .end local v0    # "cacheDir":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
