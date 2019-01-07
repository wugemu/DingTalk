.class public Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;
.super Ljava/lang/Object;
.source "FileDirPatcher.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "FileDirPatcher"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static patchDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newFileFolder"    # Ljava/lang/String;
    .param p2, "oldFileFolder"    # Ljava/lang/String;
    .param p3, "patchFilePath"    # Ljava/lang/String;
    .param p4, "oldFileMD5"    # Ljava/lang/String;
    .param p5, "patchFileMD5"    # Ljava/lang/String;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 29
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 30
    :cond_0
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "param is empty"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v14, 0x0

    .line 100
    :goto_0
    return v14

    .line 34
    :cond_1
    :try_start_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v12, "patchFile":Ljava/io/File;
    move-object/from16 v0, p5

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 37
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "verifyPatchMD5 fail"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v14, 0x0

    goto :goto_0

    .line 40
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v13

    .line 41
    .local v13, "timeHash":I
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "oldTar-"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".tar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "oldTar":Ljava/lang/String;
    new-instance v10, Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;

    const-string/jumbo v14, "tar"

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14, v9}, Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v10, "oldTarFile":Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;
    invoke-virtual {v10}, Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, "oldTarPath":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 46
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "storage error"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v14, 0x0

    goto :goto_0

    .line 51
    :cond_3
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "begin dir patch"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->packFolderToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 53
    .local v4, "isTar":Z
    if-nez v4, :cond_4

    .line 54
    invoke-static {v11}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 55
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "tar oldFileFolder fail!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 58
    :cond_4
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "tar oldFileFolder success!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object/from16 v0, p4

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 62
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "verifyOldTarFileMD5 fail"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 67
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "newTar-"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".tar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "newTar":Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;

    const-string/jumbo v14, "tar"

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14, v6}, Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v7, "newTarFile":Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "newTarPath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 71
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "storage error"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 76
    :cond_6
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "begin patch "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    move-object/from16 v0, p3

    invoke-static {v8, v11, v0}, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 78
    .local v3, "isPatch":Z
    if-nez v3, :cond_7

    .line 79
    invoke-static {v11}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 80
    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 81
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "patch tar fail!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 84
    :cond_7
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "patch tar success! "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebulaappproxy/patch/Flater;->unpackFileToFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 88
    .local v5, "isUnTar":Z
    if-nez v5, :cond_8

    .line 89
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "untar tar fail!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 93
    :cond_8
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "untar tar success!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v11}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 95
    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->deleteFileByPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 97
    .end local v3    # "isPatch":Z
    .end local v4    # "isTar":Z
    .end local v5    # "isUnTar":Z
    .end local v6    # "newTar":Ljava/lang/String;
    .end local v7    # "newTarFile":Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;
    .end local v8    # "newTarPath":Ljava/lang/String;
    .end local v9    # "oldTar":Ljava/lang/String;
    .end local v10    # "oldTarFile":Lcom/alipay/mobile/nebulaappproxy/patch/ZExternalFile;
    .end local v11    # "oldTarPath":Ljava/lang/String;
    .end local v12    # "patchFile":Ljava/io/File;
    .end local v13    # "timeHash":I
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v14, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "newFilePath"    # Ljava/lang/String;
    .param p1, "oldFilePath"    # Ljava/lang/String;
    .param p2, "patchFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    :cond_0
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "param is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    :goto_0
    return v4

    .line 111
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "patchFile":Ljava/io/File;
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 114
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "verifyPatchMD5 fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v2    # "patchFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "patchFile":Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v5

    if-nez v5, :cond_4

    .line 120
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "IsCanUseSdCard false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 125
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mOldFilePath is not exists"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "oldFile":Ljava/io/File;
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->isEnoughSpaceDoPatch(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 131
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "space is not enough to patch"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_6
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->creatFileDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 137
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/patch/FileDirPatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mNewFilePath can not creat"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_7
    invoke-static {p1, p0, p2}, Lcom/dodola/patcher/utils/AppUtils;->patcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 145
    .local v3, "result":I
    if-nez v3, :cond_1

    .line 147
    const/4 v4, 0x1

    goto :goto_0
.end method
