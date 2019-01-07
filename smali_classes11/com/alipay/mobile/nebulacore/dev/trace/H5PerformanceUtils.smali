.class public Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;
.super Ljava/lang/Object;
.source "H5PerformanceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PerformanceUtils"

.field private static sCoreNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->sCoreNum:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/InstantiationError;

    const-string/jumbo v1, "Must not instantiate this class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllThreadsTraces()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v8, "traces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 126
    .local v0, "allTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 130
    .local v2, "key":Ljava/lang/Thread;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 131
    .local v5, "stackTraces":[Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "threadName":Ljava/lang/String;
    const-string/jumbo v9, "ThreadName="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    array-length v11, v5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_0

    aget-object v4, v5, v9

    .line 136
    .local v4, "stackTrace":Ljava/lang/StackTraceElement;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v12, "\n"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 140
    .end local v4    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 143
    .end local v2    # "key":Ljava/lang/Thread;
    .end local v5    # "stackTraces":[Ljava/lang/StackTraceElement;
    .end local v7    # "threadName":Ljava/lang/String;
    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v9, "H5PerformanceUtils"

    const-string/jumbo v11, "single thread trace dump error"

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 146
    .end local v0    # "allTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    .line 147
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5PerformanceUtils"

    const-string/jumbo v10, "getAllStackTraces"

    invoke-static {v9, v10, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    const/4 v8, 0x0

    .line 151
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local v8    # "traces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v8
.end method

.method public static getNumCores()I
    .locals 5

    .prologue
    .line 104
    sget v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->sCoreNum:I

    if-nez v3, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1CpuFilter;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 111
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2

    sput v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->sCoreNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    sget v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->sCoreNum:I

    return v3

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5PerformanceUtils"

    const-string/jumbo v4, "getNumCores exception"

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    const/4 v3, 0x1

    sput v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->sCoreNum:I

    goto :goto_0
.end method

.method public static getRamSize()J
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v8, "/proc/meminfo"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x2000

    invoke-direct {v2, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "totalMemInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "totalMemInfo":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-wide v6

    .line 83
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "totalMemInfo":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v5, "H5PerformanceUtils"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    const-string/jumbo v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    .line 82
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v3

    .line 84
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "H5PerformanceUtils"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "totalMemInfo":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    const-string/jumbo v5, "H5PerformanceUtils"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    if-eqz v1, :cond_0

    .line 82
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 83
    :catch_3
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v5, "H5PerformanceUtils"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_2

    .line 82
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 85
    :cond_2
    :goto_3
    throw v5

    .line 83
    :catch_4
    move-exception v3

    .line 84
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "H5PerformanceUtils"

    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 80
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 77
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static takeScreenShot(Liop;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "page"    # Liop;

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    invoke-interface {p0}, Liop;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 38
    .local v4, "pageRootView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 42
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 43
    .local v3, "height":I
    if-lez v5, :cond_2

    if-gtz v3, :cond_3

    .line 44
    :cond_2
    const-string/jumbo v6, "H5PerformanceUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cannot takeScreenShot for url "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 51
    .local v2, "cv":Landroid/os/ConditionVariable;
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 52
    new-instance v6, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;

    invoke-direct {v6, v4, v1, v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;-><init>(Landroid/view/View;Landroid/graphics/Canvas;Landroid/os/ConditionVariable;)V

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 59
    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_0
.end method
