.class public Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;
.super Ljava/lang/Object;
.source "H5WalletWrapper.java"


# static fields
.field public static final HPM_FILE_NAME:Ljava/lang/String; = "hpmfile.json"

.field public static final TAG:Ljava/lang/String; = "H5WalletWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 165
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 166
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;

    .line 169
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v2, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;->submitOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 177
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5ThreadPoolProvider;
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 176
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 102
    invoke-static {p0}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "ignoreError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    const-string/jumbo v3, "H5WalletWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getClass "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 87
    invoke-static {}, Lcom/alipay/mobile/framework/a;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 88
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "t":Ljava/lang/Throwable;
    if-nez p2, :cond_0

    .line 93
    const-string/jumbo v3, "H5WalletWrapper"

    const-string/jumbo v4, "failed to load class bundle."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 45
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "configName"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 53
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static getH5ProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 181
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 184
    :cond_0
    const-string/jumbo v1, "H5WalletWrapper"

    const-string/jumbo v2, "h5Service == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHpmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 108
    :cond_0
    const/4 v7, 0x0

    .line 152
    :goto_0
    return-object v7

    .line 110
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v11

    .line 111
    .local v11, "h5AppCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v11, :cond_4

    .line 112
    invoke-virtual {v11}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v12

    .line 113
    .local v12, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;-><init>()V

    .line 114
    .local v1, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object/from16 v0, p0

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    .line 116
    invoke-interface {v12}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->getInstalledPath()Ljava/lang/String;

    move-result-object v14

    .line 117
    .local v14, "path":Ljava/lang/String;
    const/16 v16, 0x0

    .line 118
    .local v16, "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    const/4 v4, 0x0

    .line 120
    .local v4, "buffer":[B
    :try_start_0
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v13, "localStoreFile":Ljava/io/File;
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 122
    const-string/jumbo v18, "H5WalletWrapper"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "getHPMFileConfig path"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " not exist, return"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 148
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    const/4 v7, 0x0

    goto :goto_0

    .line 125
    :cond_2
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    .local v10, "fis":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v17, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v16    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .local v17, "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    const/16 v18, 0x800

    :try_start_2
    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v4

    .line 130
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    move-result-object v15

    .local v15, "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    if-eqz v15, :cond_6

    .line 131
    invoke-virtual {v15}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "entryName":Ljava/lang/String;
    const-string/jumbo v18, "hpmfile.json"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 134
    new-instance v3, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v3}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 135
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([B)I

    move-result v5

    .local v5, "count":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 136
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 144
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v15    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    :catch_0
    move-exception v8

    move-object/from16 v16, v17

    .line 145
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fis":Ljava/io/InputStream;
    .end local v13    # "localStoreFile":Ljava/io/File;
    .end local v17    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v16    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v18, "H5WalletWrapper"

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 148
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    .end local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v4    # "buffer":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .end local v14    # "path":Ljava/lang/String;
    .end local v16    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :cond_4
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 138
    .restart local v1    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "count":I
    .restart local v9    # "entryName":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/InputStream;
    .restart local v12    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    .restart local v13    # "localStoreFile":Ljava/io/File;
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v17    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 139
    .local v6, "data":[B
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 147
    .local v7, "dataText":Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 148
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 147
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "count":I
    .end local v6    # "data":[B
    .end local v7    # "dataText":Ljava/lang/String;
    .end local v9    # "entryName":Ljava/lang/String;
    :cond_6
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 148
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 147
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fis":Ljava/io/InputStream;
    .end local v13    # "localStoreFile":Ljava/io/File;
    .end local v15    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .end local v17    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .restart local v16    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :catchall_0
    move-exception v18

    :goto_4
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 148
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v18

    .line 147
    .end local v16    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "fis":Ljava/io/InputStream;
    .restart local v13    # "localStoreFile":Ljava/io/File;
    .restart local v17    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .restart local v16    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    goto :goto_4

    .line 144
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fis":Ljava/io/InputStream;
    .end local v13    # "localStoreFile":Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static getNebulaBizResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/a;->a()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public static getNebulaCoreResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/framework/a;->a()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method public static getNebulaResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->b()Lcom/alipay/mobile/framework/a;

    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/a;->a()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public static getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method
