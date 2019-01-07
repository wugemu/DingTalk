.class final Lcom/alibaba/android/rimet/RimetDDContext$51;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initHotpatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 4081
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 4084
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4085
    .local v3, "patchFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4086
    const/4 v5, 0x0

    .line 4087
    .local v5, "patchZip":Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 4090
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4091
    .end local v5    # "patchZip":Ljava/util/zip/ZipFile;
    .local v6, "patchZip":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string/jumbo v9, "META-INF/APK_VALID.txt"

    invoke-virtual {v6, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 4092
    .local v0, "apkValidFile":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_5

    .line 4093
    invoke-virtual {v6, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 4094
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4095
    .local v7, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 4096
    .local v4, "patchValidCode":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 4097
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 4106
    :cond_0
    if-eqz v2, :cond_1

    .line 4108
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4115
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 4121
    :goto_1
    const/4 v2, 0x0

    .line 4122
    iget-object v9, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v9}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1500(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    .line 4124
    :try_start_4
    iget-object v9, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v9}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string/jumbo v10, "APK_VALID.txt"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 4125
    new-instance v7, Ljava/io/BufferedReader;

    .end local v7    # "reader":Ljava/io/BufferedReader;
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4126
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    iget-object v9, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1502(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)Ljava/lang/String;

    .line 4127
    iget-object v9, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v9}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1500(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 4128
    iget-object v9, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    iget-object v10, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v10}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1500(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1502(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4134
    :cond_2
    if-eqz v2, :cond_3

    .line 4136
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 4145
    :cond_3
    :goto_2
    invoke-static {}, Lejn;->b()V

    .line 4146
    iget-object v9, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v9}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1500(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    if-eqz v4, :cond_4

    iget-object v9, p0, Lcom/alibaba/android/rimet/RimetDDContext$51;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v9}, Lcom/alibaba/android/rimet/RimetDDContext;->access$1500(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x1

    .line 4148
    .end local v0    # "apkValidFile":Ljava/util/zip/ZipEntry;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "patchValidCode":Ljava/lang/String;
    .end local v6    # "patchZip":Ljava/util/zip/ZipFile;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    return v8

    .line 4115
    .restart local v0    # "apkValidFile":Ljava/util/zip/ZipEntry;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v6    # "patchZip":Ljava/util/zip/ZipFile;
    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 4116
    :catch_0
    move-exception v1

    .line 4117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4109
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "patchValidCode":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 4110
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4116
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4117
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4102
    .end local v0    # "apkValidFile":Ljava/util/zip/ZipEntry;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "patchValidCode":Ljava/lang/String;
    .end local v6    # "patchZip":Ljava/util/zip/ZipFile;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "patchZip":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v1

    .line 4103
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4106
    if-eqz v2, :cond_6

    .line 4108
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 4113
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_5
    if-eqz v5, :cond_4

    .line 4115
    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 4116
    :catch_4
    move-exception v1

    .line 4117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4109
    .local v1, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 4110
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 4106
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v2, :cond_7

    .line 4108
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 4113
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 4115
    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 4118
    :cond_8
    :goto_8
    throw v8

    .line 4109
    :catch_6
    move-exception v1

    .line 4110
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 4116
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 4117
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 4137
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "patchZip":Ljava/util/zip/ZipFile;
    .restart local v0    # "apkValidFile":Ljava/util/zip/ZipEntry;
    .restart local v4    # "patchValidCode":Ljava/lang/String;
    .restart local v6    # "patchZip":Ljava/util/zip/ZipFile;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    .line 4138
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    .line 4131
    .local v1, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 4134
    if-eqz v2, :cond_4

    .line 4136
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_3

    .line 4137
    :catch_a
    move-exception v1

    .line 4138
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4134
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    if-eqz v2, :cond_9

    .line 4136
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 4139
    :cond_9
    :goto_9
    throw v8

    .line 4137
    :catch_b
    move-exception v1

    .line 4138
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 4106
    .end local v0    # "apkValidFile":Ljava/util/zip/ZipEntry;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "patchValidCode":Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "patchZip":Ljava/util/zip/ZipFile;
    .restart local v5    # "patchZip":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 4102
    .end local v5    # "patchZip":Ljava/util/zip/ZipFile;
    .restart local v6    # "patchZip":Ljava/util/zip/ZipFile;
    :catch_c
    move-exception v1

    move-object v5, v6

    .end local v6    # "patchZip":Ljava/util/zip/ZipFile;
    .restart local v5    # "patchZip":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method
