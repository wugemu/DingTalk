.class public Ldkz;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "EncryptKeyDataSource.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Ldkz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldkz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 130
    return-void
.end method

.method static synthetic a(Ldkz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ldkz;

    .prologue
    .line 35
    invoke-virtual {p0}, Ldkz;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ldkz;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Ldkz;

    .prologue
    .line 35
    iget-object v0, p0, Ldkz;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ldlb;)I
    .locals 5
    .param p1, "encryptKeyObjectMap"    # Ldlb;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    if-eqz p1, :cond_0

    iget-object v1, p1, Ldlb;->b:Ljava/util/List;

    if-nez v1, :cond_1

    .line 63
    :cond_0
    const/4 v1, -0x1

    .line 92
    :goto_0
    return v1

    .line 65
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 66
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Ldkz;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldkz;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ldkz$1;

    invoke-direct {v3, p0, p1, v0}, Ldkz$1;-><init>(Ldkz;Ldlb;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ldla;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .line 1133
    .local p1, "corpIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1135
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1136
    const-string/jumbo v2, "corpid in ( "

    .line 1138
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1139
    invoke-virtual {v3, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1141
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1142
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1143
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_0

    .line 1144
    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1145
    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1142
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1147
    :cond_0
    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1148
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1151
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "sql":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 98
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    .line 99
    .local v17, "size":I
    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 100
    .local v8, "args":[Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 101
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v16

    .line 100
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 104
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ldkz;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Ldkz;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;

    const-string/jumbo v5, "tb_encrypt_key"

    const-class v6, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;

    .line 105
    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    .line 106
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 107
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 108
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v14, "encrpyKeyObjectObjects":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    :cond_4
    :goto_3
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    new-instance v15, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;

    invoke-direct {v15}, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;-><init>()V

    .line 112
    .local v15, "entry":Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;
    invoke-virtual {v15, v11}, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 2051
    new-instance v13, Ldla;

    invoke-direct {v13}, Ldla;-><init>()V

    .line 2052
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mCorpId:Ljava/lang/String;

    iput-object v2, v13, Ldla;->a:Ljava/lang/String;

    .line 2053
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mKey:Ljava/lang/String;

    iput-object v2, v13, Ldla;->b:Ljava/lang/String;

    .line 2054
    iget-wide v2, v15, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mVersion:J

    iput-wide v2, v13, Ldla;->d:J

    .line 2055
    iget-object v2, v15, Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;->mAlgorithm:Ljava/lang/String;

    iput-object v2, v13, Ldla;->e:Ljava/lang/String;

    .line 114
    .local v13, "encrpyKeyObject":Ldla;
    if-eqz v13, :cond_4

    .line 115
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 119
    .end local v13    # "encrpyKeyObject":Ldla;
    .end local v15    # "entry":Lcom/alibaba/android/dingtalkim/imtools/encrypt/EncryptKeyEntry;
    :catch_0
    move-exception v12

    .line 120
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v8    # "args":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "encrpyKeyObjectObjects":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    .end local v16    # "i":I
    .end local v17    # "size":I
    :goto_4
    return-object v14

    .line 122
    .restart local v8    # "args":[Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "encrpyKeyObjectObjects":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    .restart local v16    # "i":I
    .restart local v17    # "size":I
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 127
    .end local v8    # "args":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v14    # "encrpyKeyObjectObjects":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    .end local v16    # "i":I
    .end local v17    # "size":I
    :cond_6
    const/4 v14, 0x0

    goto :goto_4
.end method
