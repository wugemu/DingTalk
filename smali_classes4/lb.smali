.class public Llb;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Llb;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 193
    sget v5, Llb;->a:I

    if-eqz v5, :cond_0

    .line 194
    sget v5, Llb;->a:I

    .line 205
    .local v0, "className":Ljava/lang/String;
    :goto_0
    return v5

    .line 197
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.taobao.accs.ChannelService"

    .line 198
    .restart local v0    # "className":Ljava/lang/String;
    const-class v5, Llb;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 199
    .local v3, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 200
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "SDK_VERSION_CODE"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 201
    .local v4, "versionField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Llb;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "versionField":Ljava/lang/reflect/Field;
    :goto_1
    sget v5, Llb;->a:I

    goto :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "awcn.Utils"

    const-string/jumbo v6, "getAccsVersion"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v8, v2, v7}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "param"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 264
    .local v2, "ret":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 267
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 271
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 272
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 274
    invoke-virtual {v1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 279
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 15
    .param p0, "pid"    # I

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ps  |  grep  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "cmd":Ljava/lang/String;
    const/4 v2, 0x0

    .line 146
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 148
    .local v5, "localDataOutputStream":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string/jumbo v10, "sh"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 149
    .local v7, "localProcess":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .local v6, "localDataOutputStream":Ljava/io/DataOutputStream;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  &\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 153
    const-string/jumbo v9, "exit\n"

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 157
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 158
    const-string/jumbo v9, "\\s+"

    const-string/jumbo v10, "  "

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    const-string/jumbo v9, "  "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "temp":[Ljava/lang/String;
    array-length v9, v8

    const/16 v10, 0x9

    if-lt v9, v10, :cond_0

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 161
    const/16 v9, 0x8

    aget-object v9, v8, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 170
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 173
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 179
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "localProcess":Ljava/lang/Process;
    .end local v8    # "temp":[Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_1
    return-object v9

    .line 175
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "localProcess":Ljava/lang/Process;
    .restart local v8    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v10, "awcn.Utils"

    const-string/jumbo v11, "getProcessNameNew "

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v14, v1, v12}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "temp":[Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 173
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 179
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "localProcess":Ljava/lang/Process;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    const-string/jumbo v9, ""

    goto :goto_1

    .line 175
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v7    # "localProcess":Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "awcn.Utils"

    const-string/jumbo v10, "getProcessNameNew "

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v9, v10, v14, v1, v11}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 178
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "localProcess":Ljava/lang/Process;
    :catch_2
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string/jumbo v9, "awcn.Utils"

    const-string/jumbo v10, "getProcessNameNew "

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v1, v12}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    if-eqz v2, :cond_3

    .line 170
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 172
    :cond_3
    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 175
    :catch_3
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "awcn.Utils"

    const-string/jumbo v10, "getProcessNameNew "

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v9, v10, v14, v1, v11}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 169
    :goto_4
    if-eqz v2, :cond_4

    .line 170
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 172
    :cond_4
    if-eqz v5, :cond_5

    .line 173
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 177
    :cond_5
    :goto_5
    throw v9

    .line 175
    :catch_4
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "awcn.Utils"

    const-string/jumbo v11, "getProcessNameNew "

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v14, v1, v12}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "localProcess":Ljava/lang/Process;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 165
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "localDataOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "localDataOutputStream":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pID"    # I

    .prologue
    const/16 v12, -0x6c

    .line 115
    const-string/jumbo v6, ""

    .line 117
    .local v6, "processName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 118
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 119
    .local v7, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 120
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 121
    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v0, v8

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v4, v0

    .line 123
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_0

    .line 124
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "i":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 137
    invoke-static {p1}, Llb;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 139
    :cond_2
    return-object v6

    .line 129
    .restart local v1    # "am":Landroid/app/ActivityManager;
    .restart local v7    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    const/16 v8, -0x6c

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "BuildVersion="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lks;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "msg":Ljava/lang/String;
    invoke-static {}, Lih;->a()Lij;

    move-result-object v8

    new-instance v9, Lanet/channel/statist/ExceptionStatistic;

    const/16 v10, -0x6c

    const-string/jumbo v11, "rt"

    invoke-direct {v9, v10, v5, v11}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lij;->a(Lanet/channel/statist/StatObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v7    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lih;->a()Lij;

    move-result-object v8

    new-instance v9, Lanet/channel/statist/ExceptionStatistic;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "rt"

    invoke-direct {v9, v12, v10, v11}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lij;->a(Lanet/channel/statist/StatObject;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string/jumbo v1, "awcn.Utils"

    const-string/jumbo v2, "getAppSign appkey null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    invoke-static {}, Ljn;->a()Ljm;

    move-result-object v0

    const-string/jumbo v2, "HMAC_SHA1"

    invoke-static {}, Lic;->e()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Ljm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    move-object v0, v6

    .line 59
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 241
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v3, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 245
    .local v4, "stackArray":[Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 247
    aget-object v1, v4, v2

    .line 248
    .local v1, "element":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v2    # "i":I
    .end local v4    # "stackArray":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e1":Ljava/lang/Exception;
    const-string/jumbo v5, "awcn.Utils"

    const-string/jumbo v6, "getStackMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v0, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 254
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "ticket":[B
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const-string/jumbo v3, "awcn.Utils"

    const-string/jumbo v4, "get sslticket host is null"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :goto_0
    return-object v2

    .line 231
    :cond_0
    :try_start_0
    invoke-static {}, Ljn;->a()Ljm;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "accs_ssl_key2_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Ljm;->a(Landroid/content/Context;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 236
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "awcn.Utils"

    const-string/jumbo v4, "SecurityGuardGetSslTicket2"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v0, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "needProcessValue"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 63
    const/4 v6, 0x0

    .line 65
    .local v6, "decrypt":[B
    :try_start_0
    invoke-static {}, Ljn;->a()Ljm;

    move-result-object v0

    const-string/jumbo v2, "ASE128"

    invoke-static {}, Lic;->e()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Ljm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v6

    .line 71
    if-eqz v6, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "staticBinarySafeDecryptNoB64"

    const/4 v1, 0x0

    const-string/jumbo v2, "decrypt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-object v6

    .line 75
    :catch_0
    move-exception v7

    .line 76
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "awcn.Utils"

    const-string/jumbo v1, "staticBinarySafeDecryptNoB64"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v9, v7, v2}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 210
    const/4 v0, -0x1

    .line 211
    .local v0, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    :goto_0
    return v3

    .line 215
    :cond_0
    :try_start_0
    invoke-static {}, Ljn;->a()Ljm;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "accs_ssl_key2_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p0, v5, p2}, Ljm;->a(Landroid/content/Context;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :goto_1
    move v3, v0

    .line 220
    goto :goto_0

    :cond_1
    move v0, v3

    .line 215
    goto :goto_1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "awcn.Utils"

    const-string/jumbo v4, "SecurityGuardPutSslTicket2"

    const/4 v5, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v1, v2}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    .line 92
    invoke-static {p0}, Llb;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "imsi":Ljava/lang/String;
    const-string/jumbo v1, "null"

    .line 94
    .local v1, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_0
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string/jumbo v0, ""

    .line 103
    .local v0, "processName":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 111
    .end local v0    # "processName":Ljava/lang/String;
    .local v1, "processName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 106
    .end local v1    # "processName":Ljava/lang/String;
    .restart local v0    # "processName":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 111
    .end local v0    # "processName":Ljava/lang/String;
    .restart local v1    # "processName":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "processName":Ljava/lang/String;
    .restart local v0    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string/jumbo v0, ""

    .line 185
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    :try_start_0
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    .end local v0    # "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
