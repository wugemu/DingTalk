.class public Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;
.super Ljava/lang/Object;
.source "CustomExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 20
    const-string/jumbo v0, "log"

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->b:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "crash.log"

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->c:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->d:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 16
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/PrintStream;

    invoke-direct {v10, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    .local v10, "printStream":Ljava/io/PrintStream;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 35
    .local v4, "data":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 36
    .local v3, "crashInfo":Ljava/lang/String;
    const/4 v11, 0x0

    .line 39
    .local v11, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->d:Landroid/content/Context;

    const-string/jumbo v15, "log"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "crash.log"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 43
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_1

    .line 64
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {v10}, Ljava/io/PrintStream;->close()V

    .line 66
    const/4 v13, 0x0

    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 71
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    :goto_1
    return-void

    .line 67
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 68
    .local v6, "exception":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 49
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eqz v13, :cond_2

    .line 64
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {v10}, Ljava/io/PrintStream;->close()V

    .line 66
    const/4 v13, 0x0

    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 70
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 67
    :catch_1
    move-exception v6

    .line 68
    .restart local v6    # "exception":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 52
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    .end local v11    # "writer":Ljava/io/FileWriter;
    .local v12, "writer":Ljava/io/FileWriter;
    :try_start_5
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .local v9, "format":Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "time="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 55
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "model="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 56
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "release="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 57
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "sdk="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 58
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "crash\n"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n\n\n\n\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 59
    invoke-virtual {v12}, Ljava/io/FileWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 64
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {v10}, Ljava/io/PrintStream;->close()V

    .line 66
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 70
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    move-object v11, v12

    .line 71
    .end local v12    # "writer":Ljava/io/FileWriter;
    .restart local v11    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_1

    .line 67
    .end local v11    # "writer":Ljava/io/FileWriter;
    .restart local v12    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v6

    .line 68
    .restart local v6    # "exception":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 60
    .end local v6    # "exception":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "format":Ljava/text/SimpleDateFormat;
    .end local v12    # "writer":Ljava/io/FileWriter;
    .restart local v11    # "writer":Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    .line 61
    .local v5, "ex":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 64
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {v10}, Ljava/io/PrintStream;->close()V

    .line 66
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 70
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 67
    :catch_4
    move-exception v6

    .line 68
    .restart local v6    # "exception":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 63
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 64
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {v10}, Ljava/io/PrintStream;->close()V

    .line 66
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 70
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/ailabs/ar/androidar/utils/CustomExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v13

    .line 67
    :catch_5
    move-exception v6

    .line 68
    .restart local v6    # "exception":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 63
    .end local v6    # "exception":Ljava/lang/Exception;
    .end local v11    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v12    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/FileWriter;
    .restart local v11    # "writer":Ljava/io/FileWriter;
    goto :goto_6

    .line 60
    .end local v11    # "writer":Ljava/io/FileWriter;
    .restart local v12    # "writer":Ljava/io/FileWriter;
    :catch_6
    move-exception v5

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/FileWriter;
    .restart local v11    # "writer":Ljava/io/FileWriter;
    goto :goto_4
.end method
