.class final Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil$1;
.super Ljava/lang/Object;
.source "H5PresetAppInfoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->getPresetAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$t1:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil$1;->val$t1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "nebulapreset.ser"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 102
    .local v2, "fileStream":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v0, "bufferedStream":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .local v3, "output":Ljava/io/ObjectOutput;
    invoke-static {}, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 105
    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    .line 106
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "bufferedStream":Ljava/io/OutputStream;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStream":Ljava/io/OutputStream;
    .end local v3    # "output":Ljava/io/ObjectOutput;
    :goto_0
    const-string/jumbo v5, "H5PresetAppInfoUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "write cost "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil$1;->val$t1:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v4

    .line 109
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5PresetAppInfoUtil"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
