.class public Lfni;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "OrgUserNameDataSourceImpl.java"

# interfaces
.implements Lfmv;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lfmv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfni;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic a(Lfni;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfni;

    .prologue
    .line 16
    invoke-virtual {p0}, Lfni;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfni;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfni;

    .prologue
    .line 16
    iget-object v0, p0, Lfni;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lfrw;)I
    .locals 9
    .param p1, "orgUserNameObject"    # Lfrw;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return v3

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 27
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lfni;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfni;->k()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    const-class v7, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    const-string/jumbo v8, "tb_org_username"

    .line 28
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 29
    invoke-static {p1}, Lfrw;->a(Lfrw;)Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 30
    .local v1, "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    if-nez v1, :cond_1

    .line 40
    invoke-static {v2}, Lfni;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 34
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 35
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {v2}, Lfni;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    const/4 v3, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-static {v2}, Lfni;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lfni;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method

.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfrw;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "orgUserNameObjectList":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 49
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lfni;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfni;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfni$1;

    invoke-direct {v3, p0, p1, v0}, Lfni$1;-><init>(Lfni;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final a(JJ)Lfrw;
    .locals 13
    .param p1, "oid"    # J
    .param p3, "uid"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lfni;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfni;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    const-string/jumbo v3, "tb_org_username"

    const-class v4, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    .line 102
    invoke-static {v4}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oid = ? and uid = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 103
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "0, 1"

    .line 101
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 104
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 106
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v11, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    invoke-direct {v11}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;-><init>()V

    .line 108
    .local v11, "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 109
    invoke-static {v11}, Lfrw;->a(Lcom/alibaba/android/user/entry/OrgUserNameEntry;)Lfrw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 114
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 117
    .end local v11    # "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v10

    .line 112
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final a(JLjava/util/List;)Ljava/util/List;
    .locals 17
    .param p1, "oid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lfrw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .line 1161
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 1162
    const-string/jumbo v1, "oid = ? and uid in ( "

    .line 1163
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1165
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    .line 1166
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1167
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_0

    .line 1168
    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    :cond_0
    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1175
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "sql":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_6

    .line 124
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v16

    .line 125
    .local v16, "size":I
    add-int/lit8 v1, v16, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 126
    .local v7, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 127
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    .line 128
    add-int/lit8 v1, v13, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 127
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 131
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lfni;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfni;->k()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    const-string/jumbo v4, "tb_org_username"

    const-class v5, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    .line 132
    invoke-static {v5}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 133
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 131
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 134
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 135
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v15, "orgUserNameObjects":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    :cond_4
    :goto_3
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    new-instance v12, Lcom/alibaba/android/user/entry/OrgUserNameEntry;

    invoke-direct {v12}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;-><init>()V

    .line 139
    .local v12, "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    invoke-virtual {v12, v10}, Lcom/alibaba/android/user/entry/OrgUserNameEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 140
    invoke-static {v12}, Lfrw;->a(Lcom/alibaba/android/user/entry/OrgUserNameEntry;)Lfrw;

    move-result-object v14

    .line 141
    .local v14, "orgUserNameObject":Lfrw;
    if-eqz v14, :cond_4

    iget-object v1, v14, Lfrw;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 142
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 146
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/OrgUserNameEntry;
    .end local v14    # "orgUserNameObject":Lfrw;
    :catch_0
    move-exception v11

    .line 147
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v7    # "args":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "i":I
    .end local v15    # "orgUserNameObjects":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    .end local v16    # "size":I
    :goto_4
    return-object v15

    .line 149
    .restart local v7    # "args":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "i":I
    .restart local v15    # "orgUserNameObjects":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    .restart local v16    # "size":I
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 154
    .end local v7    # "args":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v15    # "orgUserNameObjects":Ljava/util/List;, "Ljava/util/List<Lfrw;>;"
    .end local v16    # "size":I
    :cond_6
    const/4 v15, 0x0

    goto :goto_4
.end method
