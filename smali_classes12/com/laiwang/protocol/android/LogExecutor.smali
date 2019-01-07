.class public Lcom/laiwang/protocol/android/LogExecutor;
.super Ljava/lang/Object;
.source "LogExecutor.java"

# interfaces
.implements Lcom/laiwang/protocol/push/CommandHandler$Command;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/LogExecutor$UploadTask;
    }
.end annotation


# static fields
.field private static final FILENAME:Ljava/lang/String; = "fileName"

.field private static final FILE_INFO_URL:Ljava/lang/String; = "/r/LwpLog/fileInfo"

.field private static final TFS_KEY:Ljava/lang/String; = "tfsKey"

.field private static final UTF_8:Ljava/lang/String; = "utf-8"

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field format:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/laiwang/protocol/android/LogExecutor;->format:Ljava/text/SimpleDateFormat;

    .line 44
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/laiwang/protocol/android/LogExecutor;->uploadFileInfo(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static upload(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-direct {v0}, Lcom/laiwang/protocol/upload/UploaderExtra;-><init>()V

    .line 96
    .local v0, "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setFilePath(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/upload/UploaderExtra;->setMediaId(Z)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploaderExtra;->setPrivate(Z)V

    .line 100
    new-instance v1, Lcom/laiwang/protocol/android/LogExecutor$1;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/LogExecutor$1;-><init>(Ljava/io/File;)V

    invoke-static {v2, v0, v1}, Lcom/laiwang/protocol/upload/Uploader;->uploadFile(ZLcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;)Lcom/laiwang/protocol/upload/Uploader;

    .line 125
    return-void
.end method

.method private static uploadFileInfo(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    const-string/jumbo v6, "/r/LwpLog/fileInfo"

    invoke-static {v6}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v5

    .line 134
    .local v5, "request":Lcom/laiwang/protocol/core/Request;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "fileName"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v6, "version"

    sget-object v7, Lcom/laiwang/protocol/Config;->a:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v6, "tfsKey"

    invoke-interface {v1, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 140
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 141
    .local v4, "payload":[B
    invoke-virtual {v5, v4}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    .line 142
    new-instance v0, Lcom/laiwang/protocol/android/LogExecutor$2;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/LogExecutor$2;-><init>()V

    .line 148
    .local v0, "cb":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    invoke-static {v5, v0}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "cb":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "payload":[B
    .end local v5    # "request":Lcom/laiwang/protocol/core/Request;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "[Log] upload error"

    invoke-static {v6, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public doExecute(Ljava/lang/String;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 7
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const-string/jumbo v5, "required body command"

    invoke-interface {p2, v5}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string/jumbo v5, "upload"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "v":[Ljava/lang/String;
    new-instance v2, Lcom/laiwang/protocol/android/bt;

    const-string/jumbo v5, "upload_log"

    invoke-direct {v2, v5}, Lcom/laiwang/protocol/android/bt;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "ioExecutor":Lcom/laiwang/protocol/android/bu;
    array-length v5, v4

    if-ne v5, v6, :cond_1

    .line 60
    new-instance v5, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, p2}, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;-><init>(Lcom/laiwang/protocol/android/LogExecutor;Ljava/util/Date;Lcom/laiwang/protocol/lang/Callback;)V

    invoke-virtual {v2, v5}, Lcom/laiwang/protocol/android/bu;->b(Lcom/laiwang/protocol/android/bu$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v2    # "ioExecutor":Lcom/laiwang/protocol/android/bu;
    .end local v4    # "v":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "log command error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 87
    const-string/jumbo v5, "[Log] command error"

    invoke-static {v5, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "ioExecutor":Lcom/laiwang/protocol/android/bu;
    .restart local v4    # "v":[Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/laiwang/protocol/android/LogExecutor;->format:Ljava/text/SimpleDateFormat;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 63
    .local v0, "date":Ljava/util/Date;
    new-instance v5, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;

    invoke-direct {v5, p0, v0, p2}, Lcom/laiwang/protocol/android/LogExecutor$UploadTask;-><init>(Lcom/laiwang/protocol/android/LogExecutor;Ljava/util/Date;Lcom/laiwang/protocol/lang/Callback;)V

    invoke-virtual {v2, v5}, Lcom/laiwang/protocol/android/bu;->b(Lcom/laiwang/protocol/android/bu$a;)V

    goto :goto_0

    .line 66
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "ioExecutor":Lcom/laiwang/protocol/android/bu;
    .end local v4    # "v":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "openUploadLog"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 68
    const/4 v5, 0x1

    sput-boolean v5, Lcom/laiwang/protocol/Config;->c:Z

    .line 84
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " execute done"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string/jumbo v5, "closeUploadLog"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 71
    const/4 v5, 0x0

    sput-boolean v5, Lcom/laiwang/protocol/Config;->c:Z

    goto :goto_1

    .line 72
    :cond_5
    const-string/jumbo v5, "openErrorStack"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    const/4 v5, 0x1

    sput-boolean v5, Lcom/laiwang/protocol/Config;->FILE_LOG_PRINT_TRACE:Z

    goto :goto_1

    .line 75
    :cond_6
    const-string/jumbo v5, "closeErrorStack"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 77
    const/4 v5, 0x0

    sput-boolean v5, Lcom/laiwang/protocol/Config;->FILE_LOG_PRINT_TRACE:Z

    goto :goto_1

    .line 78
    :cond_7
    const-string/jumbo v5, "setLevel "

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    const-string/jumbo v5, "setLevel "

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "level":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    move-result-object v5

    .line 82
    sput-object v5, Lcom/laiwang/protocol/Config;->FILE_LOG_LEVEL:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-static {v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->setLogLevel(Lcom/laiwang/protocol/android/log/TraceLogger$Level;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
