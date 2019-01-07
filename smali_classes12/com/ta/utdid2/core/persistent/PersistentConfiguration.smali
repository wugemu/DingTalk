.class public Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# static fields
.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "t"

.field private static final KEY_TIMESTAMP2:Ljava/lang/String; = "t2"


# instance fields
.field private mCanRead:Z

.field private mCanWrite:Z

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFolderName:Ljava/lang/String;

.field private mIsLessMode:Z

.field private mIsSafety:Z

.field private mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "isSafety"    # Z
    .param p5, "isLessMode"    # Z

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 22
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 23
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 24
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 25
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    .line 26
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 27
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 28
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 29
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 30
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    .line 31
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 32
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 40
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 41
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 42
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    .line 45
    const-wide/16 v8, 0x0

    .line 46
    .local v8, "spT":J
    const-wide/16 v6, 0x0

    .line 47
    .local v6, "mySPT":J
    if-eqz p1, :cond_0

    .line 48
    const/4 v12, 0x0

    .line 49
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 50
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 52
    :cond_0
    const/4 v4, 0x0

    .line 54
    .local v4, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 58
    :goto_0
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 61
    const-string/jumbo v12, "mounted"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 62
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 71
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v12, :cond_2

    .line 72
    :cond_1
    if-eqz p1, :cond_2

    .line 73
    invoke-static/range {p2 .. p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v12, :cond_2

    .line 77
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v13, "t"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 81
    if-nez p5, :cond_b

    .line 82
    cmp-long v12, v8, v6

    if-lez v12, :cond_9

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :cond_2
    :goto_2
    cmp-long v12, v8, v6

    if-nez v12, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    .line 137
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 138
    .local v10, "timestamp":J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_6

    .line 140
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v12, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 142
    .local v3, "editorTmp":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "t2"

    invoke-interface {v3, v12, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    .end local v3    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v12, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v12}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v5

    .line 148
    .local v5, "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    const-string/jumbo v12, "t2"

    invoke-interface {v5, v12, v10, v11}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 149
    invoke-interface {v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    .end local v5    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    .end local v10    # "timestamp":J
    :cond_6
    :goto_3
    return-void

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, ""

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v2, v13}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 63
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v12, "mounted_ro"

    .line 64
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 65
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 66
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    goto/16 :goto_1

    .line 68
    :cond_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto/16 :goto_1

    .line 88
    :cond_9
    cmp-long v12, v8, v6

    if-gez v12, :cond_a

    .line 90
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 91
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    :catch_1
    move-exception v12

    goto/16 :goto_2

    .line 93
    :cond_a
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    .line 100
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v13, "t2"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 102
    cmp-long v12, v8, v6

    if-gez v12, :cond_c

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_c

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    .line 108
    :cond_c
    cmp-long v12, v8, v6

    if-lez v12, :cond_d

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_d

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 111
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 113
    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_e

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_e

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 115
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 117
    :cond_e
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_f

    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_f

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_2

    .line 122
    :cond_f
    cmp-long v12, v8, v6

    if-nez v12, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .restart local v10    # "timestamp":J
    :catch_2
    move-exception v12

    goto/16 :goto_3
.end method

.method private checkSDCardXMLFile()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->checkFile()Z

    move-result v0

    .line 243
    .local v0, "isExist":Z
    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 248
    .end local v0    # "isExist":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "sp1"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    .param p2, "sp2"    # Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 214
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 215
    .local v1, "editorTmp":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_6

    .line 216
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 218
    .local v2, "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 222
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 223
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 224
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 225
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 226
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 227
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 228
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 229
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 230
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 231
    check-cast v4, Ljava/lang/Boolean;

    .line 232
    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 231
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    .end local v1    # "editorTmp":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    return-void
.end method

.method private copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
    .locals 8
    .param p1, "sp1"    # Landroid/content/SharedPreferences;
    .param p2, "sp2"    # Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 182
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v3

    .line 183
    .local v3, "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    if-eqz v3, :cond_6

    .line 184
    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 185
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    .local v1, "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 190
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 191
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-interface {v3, v2, v4}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 192
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 193
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 194
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 195
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v2, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 196
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 197
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 198
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 199
    check-cast v4, Ljava/lang/Boolean;

    .line 200
    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 199
    invoke-interface {v3, v2, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    :try_start_0
    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    :cond_6
    :goto_1
    return-void

    .restart local v1    # "itorator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v3    # "myEditorTmp":Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "folderName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 169
    .local v1, "sdCardFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 170
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 170
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "rootFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 177
    .end local v0    # "rootFolder":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getRootFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 160
    .local v0, "rootFolder":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 162
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 164
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initEditor()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 259
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 366
    .local v0, "t":J
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 368
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 372
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 374
    :cond_1
    return-void
.end method

.method public commit()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 377
    const/4 v2, 0x1

    .line 378
    .local v2, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 379
    .local v4, "t":J
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v6, :cond_1

    .line 380
    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v6, :cond_0

    .line 381
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_0

    .line 382
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v7, "t"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 385
    :cond_0
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    if-nez v6, :cond_1

    .line 386
    const/4 v2, 0x0

    .line 389
    :cond_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_2

    .line 390
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 391
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 395
    :cond_2
    const/4 v1, 0x0

    .line 397
    .local v1, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 401
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 402
    const-string/jumbo v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 403
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-nez v6, :cond_7

    .line 404
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 405
    invoke-direct {p0, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v3

    .line 406
    .local v3, "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    if-eqz v3, :cond_3

    .line 407
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 409
    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v6, :cond_6

    .line 410
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v6, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 414
    :goto_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v6}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 428
    .end local v3    # "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    :cond_3
    :goto_2
    const-string/jumbo v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "mounted_ro"

    .line 430
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v6, :cond_5

    .line 433
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v6, :cond_5

    .line 434
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 442
    :cond_5
    :goto_3
    return v2

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    :cond_6
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v6, v7}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    goto :goto_1

    .line 418
    .end local v3    # "txf":Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v6, :cond_3

    .line 419
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v6}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-nez v6, :cond_3

    .line 420
    const/4 v2, 0x0

    goto :goto_2

    .line 424
    :catch_1
    move-exception v6

    const/4 v2, 0x0

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_3
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 501
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 491
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 481
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 460
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 461
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 470
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 471
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 476
    :cond_0
    :goto_0
    return-wide v0

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 447
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 286
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 288
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 295
    :cond_1
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 298
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 300
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 307
    :cond_1
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 262
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 264
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 271
    :cond_1
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 274
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 276
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 283
    :cond_1
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 312
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 319
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 340
    :cond_0
    const/4 v1, 0x0

    .line 342
    .local v1, "mountedProperty":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 346
    :goto_0
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "mounted_ro"

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_2

    .line 352
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    :cond_2
    :goto_1
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 324
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 331
    :cond_1
    return-void
.end method
