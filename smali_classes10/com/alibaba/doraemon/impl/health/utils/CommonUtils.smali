.class public Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtils"

.field private static final infoSeperator:Ljava/lang/String; = ">>>>>>>"

.field private static mLogtimeFormat:Ljava/text/SimpleDateFormat; = null

.field private static mReportedTrace:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final traceSeperator:Ljava/lang/String; = "\n\n\n"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->mLogtimeFormat:Ljava/text/SimpleDateFormat;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->mReportedTrace:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .line 44
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .line 45
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAppNameByPID(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 53
    const-string/jumbo v2, "activity"

    .line 54
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 57
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 58
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 61
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getRootDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceDir()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    const-string/jumbo v0, ""

    .line 183
    .local v0, "dir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/files/doraemon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    return-object v0
.end method

.method public static isRimet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 198
    const-string/jumbo v0, "com.alibaba.android.rimet"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->getAppNameByPID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTraceReported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "logfileName"    # Ljava/lang/String;
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 268
    .local v1, "ret":Z
    :goto_0
    const-string/jumbo v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v1

    .line 252
    .end local v1    # "ret":Z
    :cond_0
    sget-object v3, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->mReportedTrace:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 253
    .local v2, "traces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 254
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "traces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 255
    .restart local v2    # "traces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->mReportedTrace:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 259
    .local v0, "hashCode":Ljava/lang/Integer;
    const-string/jumbo v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/DoraemonLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 261
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 264
    .end local v1    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public static printExceptionTraceOnDebug(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 192
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :cond_0
    return-void
.end method

.method public static printThreadStack(Ljava/lang/String;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printThreadStackWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static printThreadStack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->isTraceReported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 136
    const-string/jumbo v10, "CommonUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "same trace("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")already logged in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string/jumbo v3, ""

    .line 142
    .local v3, "dir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "state":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string/jumbo v10, "mounted"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/Android/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/files/doraemon/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v4, "dirFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_2

    .line 147
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 152
    .end local v4    # "dirFile":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v1, "crashFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 154
    .local v6, "mWriter":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 156
    .local v9, "writerChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 157
    .local v2, "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n\n\n"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 159
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v7, v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v6    # "mWriter":Ljava/io/FileOutputStream;
    .local v7, "mWriter":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 161
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 171
    if-eqz v9, :cond_0

    .line 172
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v5

    .line 175
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v6    # "mWriter":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 164
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v6, :cond_3

    .line 168
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 171
    :cond_3
    if-eqz v9, :cond_0

    .line 172
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 174
    :catch_2
    move-exception v5

    .line 175
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 166
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 167
    :goto_2
    if-eqz v6, :cond_4

    .line 168
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 171
    :cond_4
    if-eqz v9, :cond_5

    .line 172
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 176
    :cond_5
    :goto_3
    throw v10

    .line 174
    :catch_3
    move-exception v5

    .line 175
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V

    goto :goto_3

    .line 166
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v2    # "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v7    # "mWriter":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v6    # "mWriter":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 163
    .end local v6    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v7    # "mWriter":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v6    # "mWriter":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static printThreadStackWithInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v14, "trace":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 82
    .local v12, "stElements":[Ljava/lang/StackTraceElement;
    array-length v0, v12

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v9, v12, v17

    .line 83
    .local v9, "ele":Ljava/lang/StackTraceElement;
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 85
    .end local v9    # "ele":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 86
    .local v15, "traceString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->isTraceReported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 87
    const-string/jumbo v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "same trace("

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")already logged in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    const-string/jumbo v6, ""

    .line 93
    .local v6, "dir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "state":Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string/jumbo v17, "mounted"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 95
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/Android/data/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/files/doraemon/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, "dirFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_3

    .line 98
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 103
    .end local v7    # "dirFile":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v4, "crashFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 105
    .local v10, "mWriter":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 107
    .local v16, "writerChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 108
    .local v5, "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-nez p1, :cond_4

    const-string/jumbo p1, ""

    .line 109
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->mLogtimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ">>>>>>>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 111
    invoke-virtual {v5, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n\n\n"

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 113
    new-instance v11, Ljava/io/FileOutputStream;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v11, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v10    # "mWriter":Ljava/io/FileOutputStream;
    .local v11, "mWriter":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16

    .line 115
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 116
    .local v3, "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 125
    if-eqz v16, :cond_1

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 128
    :catch_0
    move-exception v8

    .line 129
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 108
    .end local v3    # "bb":Ljava/nio/ByteBuffer;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v10    # "mWriter":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_3
    const-string/jumbo v17, "\n"

    const-string/jumbo v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p1

    goto :goto_2

    .line 117
    .end local v5    # "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_1
    move-exception v8

    .line 118
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-static {v8}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    if-eqz v10, :cond_5

    .line 122
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 125
    :cond_5
    if-eqz v16, :cond_1

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 128
    :catch_2
    move-exception v8

    .line 129
    invoke-static {v8}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 120
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 121
    :goto_4
    if-eqz v10, :cond_6

    .line 122
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 125
    :cond_6
    if-eqz v16, :cond_7

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 130
    :cond_7
    :goto_5
    throw v17

    .line 128
    :catch_3
    move-exception v8

    .line 129
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils;->printExceptionTraceOnDebug(Ljava/lang/Exception;)V

    goto :goto_5

    .line 120
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v5    # "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v11    # "mWriter":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    move-object v10, v11

    .end local v11    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v10    # "mWriter":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 117
    .end local v10    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v11    # "mWriter":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    move-object v10, v11

    .end local v11    # "mWriter":Ljava/io/FileOutputStream;
    .restart local v10    # "mWriter":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static runOnNonUiThread(Lcom/alibaba/doraemon/utils/SerializeCallback;)Lcom/alibaba/doraemon/utils/SerializeCallback;
    .locals 1
    .param p0, "callback"    # Lcom/alibaba/doraemon/utils/SerializeCallback;

    .prologue
    .line 222
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$2;-><init>(Lcom/alibaba/doraemon/utils/SerializeCallback;)V

    return-object v0
.end method

.method public static runOnNonUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 207
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 208
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "CommonUtils"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 210
    new-instance v1, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/health/utils/CommonUtils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 219
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
