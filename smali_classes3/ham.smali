.class public Lham;
.super Ljava/lang/Object;
.source "Converter.java"


# static fields
.field public static a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lhal;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhal;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile j:Lham;


# instance fields
.field public volatile c:Z

.field public volatile d:Z

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "converter"

    iput-object v0, p0, Lham;->g:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "converter"

    iput-object v0, p0, Lham;->h:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "converter"

    iput-object v0, p0, Lham;->i:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lham;->e:Ljava/lang/Object;

    .line 45
    new-instance v0, Lham$1;

    invoke-direct {v0, p0}, Lham$1;-><init>(Lham;)V

    iput-object v0, p0, Lham;->f:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lham;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lham;->b:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public static a()Lham;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lham;->j:Lham;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lham;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lham;->j:Lham;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lham;

    invoke-direct {v0}, Lham;-><init>()V

    sput-object v0, Lham;->j:Lham;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lham;->j:Lham;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lhal;)Ljava/io/File;
    .locals 13
    .param p1, "convertedObject"    # Lhal;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 132
    if-eqz p1, :cond_0

    .line 1059
    iget-object v5, p1, Lhal;->b:Ljava/lang/String;

    .line 132
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 151
    :goto_0
    return-object v5

    .line 2027
    :cond_1
    :try_start_0
    iget-object v5, p1, Lhal;->a:Ljava/lang/String;

    .line 137
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2155
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2157
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 2158
    invoke-virtual {v7, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v8, "converter"

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2159
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3059
    .local v3, "path":Ljava/lang/String;
    iget-object v7, p1, Lhal;->b:Ljava/lang/String;

    .line 4051
    iget-object v8, p1, Lhal;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 4163
    const-string/jumbo v5, ""

    .line 4165
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v8, v9, :cond_4

    .line 4166
    const-string/jumbo v5, "jpeg"

    .line 4173
    :cond_2
    :goto_1
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    const-string/jumbo v9, "."

    aput-object v9, v8, v7

    const/4 v7, 0x2

    aput-object v5, v8, v7

    invoke-static {v8}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "name":Ljava/lang/String;
    const/16 v5, 0x64

    invoke-static {v3, v2, v0, v5}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Z

    move-result v4

    .line 144
    .local v4, "success":Z
    if-eqz v4, :cond_3

    .line 145
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 147
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "success":Z
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    const-string/jumbo v5, "converter"

    const-string/jumbo v7, "converter"

    new-array v8, v12, [Ljava/lang/String;

    const-string/jumbo v9, "convertImage error and msg is: "

    aput-object v9, v8, v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v8}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    move-object v5, v6

    .line 151
    goto :goto_0

    .line 4167
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v8, v9, :cond_5

    .line 4168
    const-string/jumbo v5, "png"

    goto :goto_1

    .line 4169
    :cond_5
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v8, v9, :cond_2

    .line 4170
    const-string/jumbo v5, "webp"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 147
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "path":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "expectFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 177
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 178
    :cond_0
    const-string/jumbo v0, ""

    .line 181
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lhal;Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V
    .locals 3
    .param p0, "source"    # Lhal;
    .param p1, "type"    # Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    .prologue
    .line 196
    const-string/jumbo v0, "converter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "converter Post event type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5027
    iget-object v2, p0, Lhal;->a:Ljava/lang/String;

    .line 196
    invoke-static {v2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5043
    iget-object v2, p0, Lhal;->d:Ljava/lang/String;

    .line 196
    invoke-static {v2}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lhai;

    invoke-direct {v0, p0, p1}, Lhai;-><init>(Lhal;Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    .line 198
    return-void
.end method

.method static synthetic a(Lham;)V
    .locals 3
    .param p0, "x0"    # Lham;

    .prologue
    .line 30
    .line 5106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lham;->c:Z

    .line 5110
    :goto_0
    iget-boolean v0, p0, Lham;->d:Z

    sget-object v0, Lham;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5111
    iget-object v1, p0, Lham;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 5112
    :try_start_0
    sget-object v0, Lham;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhal;

    .line 5113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5115
    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->START:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-static {v0, v1}, Lham;->a(Lhal;Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    .line 5117
    invoke-direct {p0, v0}, Lham;->a(Lhal;)Ljava/io/File;

    move-result-object v1

    .line 5119
    if-eqz v1, :cond_0

    .line 5120
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 6047
    iput-object v1, v0, Lhal;->d:Ljava/lang/String;

    .line 5121
    sget-object v1, Lham;->b:Ljava/util/Map;

    .line 6075
    iget-object v2, v0, Lhal;->f:Ljava/lang/String;

    .line 5121
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5122
    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-static {v0, v1}, Lham;->a(Lhal;Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    goto :goto_0

    .line 5113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5124
    :cond_0
    sget-object v1, Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;->FAIL:Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;

    invoke-static {v0, v1}, Lham;->a(Lhal;Lcom/alibaba/laiwang/photokit/convert/ConvertEventType;)V

    goto :goto_0

    .line 5128
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lham;->c:Z

    .line 30
    return-void
.end method
