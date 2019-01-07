.class public abstract Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;
.super Ljava/lang/Object;
.source "BasePatcher.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BasePatcher"

.field protected static isLoadLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->isLoadLibrary:Z

    .line 15
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->initLibrary()V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static initLibrary()V
    .locals 4

    .prologue
    .line 20
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->isLoadLibrary:Z

    .line 22
    const-string/jumbo v1, "Patcher"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v1, "BasePatcher"

    const-string/jumbo v2, "load so success zipPath:"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 24
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 25
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "BasePatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "load so fail!!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->isLoadLibrary:Z

    goto :goto_0
.end method

.method public static patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newFileFolder"    # Ljava/lang/String;
    .param p2, "oldFileFolder"    # Ljava/lang/String;
    .param p3, "patchFilePath"    # Ljava/lang/String;
    .param p4, "oldFileMD5"    # Ljava/lang/String;
    .param p5, "patchFileMD5"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-boolean v0, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->isLoadLibrary:Z

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->initLibrary()V

    .line 39
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->patchDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
