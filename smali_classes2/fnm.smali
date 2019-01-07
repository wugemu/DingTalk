.class public Lfnm;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "UserProfileDataSourceImpl.java"

# interfaces
.implements Lfna;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfnm$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lfna;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 357
    return-void
.end method

.method static synthetic a(Lfnm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfnm;

    .prologue
    .line 28
    invoke-virtual {p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfnm;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfnm;

    .prologue
    .line 28
    iget-object v0, p0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 9
    .param p1, "uid"    # J

    .prologue
    const/4 v6, 0x0

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 136
    :goto_0
    return v6

    .line 135
    :cond_0
    iget-object v0, p0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v3, "tbuser"

    sget-object v4, Lfnm$a;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 136
    .local v6, "result":I
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)I
    .locals 9
    .param p1, "profile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return v3

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 87
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-class v7, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v8, "tbuser"

    .line 88
    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 89
    new-instance v4, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct {v4}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    invoke-virtual {v4, p1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/user/entry/UserProfileEntry;

    move-result-object v1

    .line 90
    .local v1, "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/entry/UserProfileEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 91
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 92
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {v2}, Lfnm;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 99
    const/4 v3, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {v2}, Lfnm;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lfnm;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method

.method public final a(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v1, 0x0

    .line 104
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 106
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfnm$1;

    invoke-direct {v3, p0, p1, v0}, Lfnm$1;-><init>(Lfnm;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 13
    .param p1, "uid"    # J

    .prologue
    .line 140
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v12, 0x0

    .line 163
    :goto_0
    return-object v12

    .line 141
    :cond_0
    iget-object v0, p0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v3, "tbuser"

    const-class v4, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-static {v4}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lfnm$a;->a:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 142
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "0, 1"

    .line 141
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 143
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 145
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    new-instance v11, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct {v11}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    .line 147
    .local v11, "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 148
    invoke-static {v11}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/UserProfileEntry;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v12

    .line 149
    .local v12, "result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v12, :cond_2

    .line 150
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->g()V

    .line 153
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/user/internal/IMContextEngine;->a(J)Z

    move-result v0

    iput-boolean v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z
    :try_end_0
    .catch Lcom/alibaba/sqlcrypto/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    .end local v12    # "result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_4
    :goto_1
    const/4 v12, 0x0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v10

    .line 158
    .local v10, "cwae":Lcom/alibaba/sqlcrypto/CursorWindowAllocationException;
    :try_start_1
    invoke-virtual {v10}, Lcom/alibaba/sqlcrypto/CursorWindowAllocationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v10    # "cwae":Lcom/alibaba/sqlcrypto/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v16, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 171
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    add-int/lit8 v2, v13, -0x1

    mul-int/lit8 v2, v2, 0x64

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 172
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v3, v13, 0x64

    if-ge v2, v3, :cond_0

    .line 173
    add-int/lit8 v2, v13, -0x1

    mul-int/lit8 v2, v2, 0x64

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    .line 177
    .local v17, "subUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Ljava/lang/String;

    .line 179
    .local v8, "queryParameter":[Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v15

    .line 181
    .local v15, "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "uid"

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in ("

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 182
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 183
    const-string/jumbo v2, "?"

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 184
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v14

    .line 185
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v14, v2, :cond_1

    .line 186
    const-string/jumbo v2, ","

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 182
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 175
    .end local v8    # "queryParameter":[Ljava/lang/String;
    .end local v14    # "j":I
    .end local v15    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v17    # "subUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v2, v13, -0x1

    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v13, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    .restart local v17    # "subUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_1

    .line 188
    .restart local v8    # "queryParameter":[Ljava/lang/String;
    .restart local v14    # "j":I
    .restart local v15    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    const-string/jumbo v2, ") "

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 191
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "nickpinyin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "orderByString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v5, "tbuser"

    const-class v6, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-virtual {v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 192
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 194
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 196
    :try_start_0
    new-instance v12, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    .line 197
    .local v12, "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->reset()V

    .line 199
    invoke-virtual {v12, v11}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 200
    invoke-static {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/UserProfileEntry;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v18

    .line 201
    .local v18, "u":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->g()V

    .line 204
    :cond_3
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/user/internal/IMContextEngine;->a(J)Z

    move-result v2

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 205
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 208
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    .end local v18    # "u":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 171
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 213
    .end local v8    # "queryParameter":[Ljava/lang/String;
    .end local v9    # "orderByString":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v15    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v17    # "subUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_6
    return-object v16
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v15, "profileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    return-object v15

    .line 222
    :cond_1
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    add-int/lit8 v2, v13, -0x1

    mul-int/lit8 v2, v2, 0x64

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 223
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v3, v13, 0x64

    if-ge v2, v3, :cond_2

    .line 224
    add-int/lit8 v2, v13, -0x1

    mul-int/lit8 v2, v2, 0x64

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    .line 228
    .local v17, "subEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Ljava/lang/String;

    .line 230
    .local v8, "queryParameter":[Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v16

    .line 232
    .local v16, "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in ("

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 233
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_4

    .line 234
    const-string/jumbo v2, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 235
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v8, v14

    .line 236
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v14, v2, :cond_3

    .line 237
    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 233
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 226
    .end local v8    # "queryParameter":[Ljava/lang/String;
    .end local v14    # "j":I
    .end local v16    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v17    # "subEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v13, -0x1

    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v13, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    .restart local v17    # "subEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 239
    .restart local v8    # "queryParameter":[Ljava/lang/String;
    .restart local v14    # "j":I
    .restart local v16    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    const-string/jumbo v2, ") "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 242
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "nickpinyin"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "orderByString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v5, "tbuser"

    const-class v6, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 243
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 245
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 247
    :try_start_0
    new-instance v12, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    .line 248
    .local v12, "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 249
    invoke-virtual {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->reset()V

    .line 250
    invoke-virtual {v12, v11}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 251
    invoke-static {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/UserProfileEntry;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v18

    .line 252
    .local v18, "u":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v2

    if-nez v2, :cond_5

    .line 253
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->g()V

    .line 255
    :cond_5
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/user/internal/IMContextEngine;->a(J)Z

    move-result v2

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 256
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 259
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    .end local v18    # "u":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 222
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 271
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    .line 272
    .local v14, "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "uid"

    invoke-virtual {v14, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in ("

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 273
    const/4 v13, 0x0

    .line 274
    .local v13, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 275
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 276
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v13, v2, :cond_0

    .line 277
    const-string/jumbo v2, ","

    invoke-virtual {v14, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 281
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 279
    :cond_0
    const-string/jumbo v2, ") "

    invoke-virtual {v14, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 284
    :cond_1
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "nickAlpha"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "nickpinyin"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    .line 285
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 284
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "orderByString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v5, "tbuser"

    const-class v6, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-virtual {v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 286
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 288
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 290
    :try_start_0
    new-instance v12, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    .line 291
    .local v12, "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->reset()V

    .line 293
    invoke-virtual {v12, v11}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 294
    invoke-static {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/UserProfileEntry;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v16

    .line 295
    .local v16, "u":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/user/internal/IMContextEngine;->g()V

    .line 298
    :cond_2
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v2

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/user/internal/IMContextEngine;->a(J)Z

    move-result v2

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 299
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 302
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    .end local v16    # "u":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 306
    .end local v9    # "orderByString":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    .end local v13    # "i":I
    .end local v14    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_4
    return-object v15
.end method

.method public final e(Ljava/util/List;)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v16, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lfrz;>;"
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 314
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v15

    .line 315
    .local v15, "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "uid"

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in ("

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 316
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 3044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 318
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 319
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v13, v2, :cond_0

    .line 320
    const-string/jumbo v2, ","

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 316
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 322
    :cond_0
    const-string/jumbo v2, ") "

    invoke-virtual {v15, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 325
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "nickpinyin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "orderByString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnm;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfnm;->k()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/UserProfileEntry;

    const-string/jumbo v5, "tbuser"

    const-class v6, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    .line 327
    invoke-virtual {v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 326
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 328
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 330
    :try_start_0
    new-instance v12, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    .line 331
    .local v12, "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->reset()V

    .line 333
    invoke-virtual {v12, v11}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 334
    invoke-static {v12}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/UserProfileEntry;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v14

    .line 335
    .local v14, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    new-instance v17, Lfrz;

    invoke-direct/range {v17 .. v17}, Lfrz;-><init>()V

    .line 336
    .local v17, "userProfileObject":Lfrz;
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lfrz;->c:Ljava/lang/String;

    .line 337
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lfrz;->b:Ljava/lang/String;

    .line 338
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lfrz;->d:Ljava/lang/String;

    .line 339
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lfrz;->e:Ljava/lang/String;

    .line 340
    iget-wide v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->tag:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lfrz;->f:J

    .line 341
    iget-wide v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lfrz;->a:J

    .line 342
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lfrz;->h:Z

    .line 343
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lfrz;->g:Z

    .line 344
    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDingSimCard()Z

    move-result v2

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lfrz;->i:Z

    .line 345
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-object/from16 v0, v17

    iput-object v2, v0, Lfrz;->j:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 346
    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    move-object/from16 v0, v17

    iput-object v2, v0, Lfrz;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    .line 347
    move-object/from16 v0, v17

    iget-wide v2, v0, Lfrz;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 350
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    .end local v14    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v17    # "userProfileObject":Lfrz;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 354
    .end local v9    # "orderByString":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    .end local v13    # "i":I
    .end local v15    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_3
    return-object v16
.end method
