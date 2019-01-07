.class public final Lcml;
.super Ljava/lang/Object;
.source "SafeModeManager.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcml;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcml;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcml;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-static {p0}, Lcml;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    if-eqz p0, :cond_3

    .line 1081
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1082
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "delete_doing"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 35
    :goto_1
    if-eqz v1, :cond_4

    .line 38
    invoke-static {p0}, Lcml;->b(Landroid/content/Context;)V

    .line 46
    :cond_2
    :goto_2
    invoke-static {}, Lcml;->c()J

    move-result-wide v2

    sput-wide v2, Lcml;->a:J

    .line 2052
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 2053
    new-instance v2, Lcml$1;

    invoke-direct {v2, p0, v1}, Lcml$1;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 2069
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcml$2;

    invoke-direct {v2, p0}, Lcml$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v1, v2

    .line 1085
    goto :goto_1

    .line 40
    :cond_4
    const-string/jumbo v1, "launch_crash_count"

    invoke-static {p0, v1}, Lcml;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "crashCount":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 42
    const-string/jumbo v1, "launch_crash_count"

    invoke-static {p0, v1, v2}, Lcml;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 43
    invoke-static {p0}, Lcml;->b(Landroid/content/Context;)V

    goto :goto_2
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcml;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/List;)Z
    .locals 11
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "ignoreFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move v6, v7

    .line 186
    :cond_1
    :goto_0
    return v6

    .line 135
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 136
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "fileName1":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .local v4, "fileName2":Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " delete ignore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    .end local v3    # "fileName1":Ljava/lang/String;
    .end local v4    # "fileName2":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_5

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " delete fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    move v6, v7

    .line 155
    goto :goto_0

    .line 157
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "childFile":[Ljava/io/File;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 164
    :goto_1
    const/4 v5, 0x0

    .line 165
    .local v5, "hasDeleteIgnoreOrFail":Z
    if-eqz v0, :cond_9

    array-length v8, v0

    if-lez v8, :cond_9

    .line 166
    array-length v9, v0

    move v8, v6

    :goto_2
    if-ge v8, v9, :cond_9

    aget-object v2, v0, v8

    .line 168
    .local v2, "f":Ljava/io/File;
    invoke-static {v2, p1}, Lcml;->a(Ljava/io/File;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    move v5, v7

    .line 166
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 161
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "hasDeleteIgnoreOrFail":Z
    :catch_1
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "hasDeleteIgnoreOrFail":Z
    :cond_8
    move v5, v6

    .line 168
    goto :goto_3

    .line 171
    .end local v2    # "f":Ljava/io/File;
    :cond_9
    if-nez v5, :cond_1

    .line 173
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_a

    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " delete fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 178
    :catch_2
    move-exception v1

    .line 179
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_a
    move v6, v7

    .line 177
    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    invoke-static {p0}, Lcml;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcml;->a:J

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    if-nez p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "delete_doing"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v0, "deleteDoing":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v0    # "deleteDoing":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "ignoreFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "delete_doing"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lcml;->a(Ljava/io/File;Ljava/util/List;)Z

    .line 110
    .end local v2    # "ignoreFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcml;->a(Ljava/io/File;Ljava/util/List;)Z

    .line 114
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "delete_doing"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .restart local v0    # "deleteDoing":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-static {p0}, Lcml;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static c()J
    .locals 2

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 198
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 204
    .local v11, "pid":I
    const/4 v12, 0x0

    .line 206
    .local v12, "processName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v13, "activity"

    invoke-virtual {p0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 207
    .local v10, "mActivityManager":Landroid/app/ActivityManager;
    if-eqz v10, :cond_1

    .line 208
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 209
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v0, :cond_0

    iget v14, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v14, v11, :cond_0

    .line 210
    iget-object v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v10    # "mActivityManager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 218
    const/4 v6, 0x0

    .line 219
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 220
    .local v8, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 222
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "/proc/"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/cmdline"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v7, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v9, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 226
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 227
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 228
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v12

    .line 235
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 238
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    .line 241
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 248
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_3
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 249
    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x1

    .line 251
    :goto_2
    return v13

    .line 243
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v4

    .line 244
    .local v4, "e2":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 230
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e2":Ljava/lang/Throwable;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    .line 231
    .restart local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    if-eqz v1, :cond_4

    .line 235
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 237
    :cond_4
    if-eqz v8, :cond_5

    .line 238
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 240
    :cond_5
    if-eqz v6, :cond_3

    .line 241
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 243
    :catch_3
    move-exception v4

    .line 244
    .restart local v4    # "e2":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 233
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "e2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    .line 234
    :goto_4
    if-eqz v1, :cond_6

    .line 235
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 237
    :cond_6
    if-eqz v8, :cond_7

    .line 238
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 240
    :cond_7
    if-eqz v6, :cond_8

    .line 241
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 245
    :cond_8
    :goto_5
    throw v13

    .line 243
    :catch_4
    move-exception v4

    .line 244
    .restart local v4    # "e2":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 249
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e2":Ljava/lang/Throwable;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_9
    const/4 v13, 0x0

    goto :goto_2

    .line 251
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 233
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v13

    move-object v8, v9

    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v13

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 230
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v3

    move-object v8, v9

    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "safe_mode_sp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method
