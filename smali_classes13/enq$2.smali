.class final Lenq$2;
.super Ljava/lang/Object;
.source "SearchAssureSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenq;->a(Ljava/util/List;Lcov;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcov;

.field final synthetic c:Lenq;


# direct methods
.method constructor <init>(Lenq;Ljava/util/List;Lcov;)V
    .locals 0
    .param p1, "this$0"    # Lenq;

    .prologue
    .line 158
    .local p0, "this":Lenq$2;, "Lenq$2;"
    iput-object p1, p0, Lenq$2;->c:Lenq;

    iput-object p2, p0, Lenq$2;->a:Ljava/util/List;

    iput-object p3, p0, Lenq$2;->b:Lcov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lenq$2;, "Lenq$2;"
    const/4 v13, 0x1

    .line 1018
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v6, "searchAssureEntries":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 165
    .local v7, "sqlBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v10, "SELECT * FROM "

    invoke-virtual {v7, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "tb_search_assure"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " WHERE "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v4, "keywords":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v3, "ids":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v9, "types":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lenq$2;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leot;

    .line 172
    .local v5, "result":Leot;
    if-eqz v5, :cond_0

    .line 176
    iget-object v11, v5, Leot;->f:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v11, v5, Leot;->e:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v11, v5, Leot;->d:Ljava/lang/String;

    invoke-static {v11}, Lcom/alibaba/android/search/assure/model/AssureModel;->getAssureTypeFromSvr(Ljava/lang/String;)Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/android/search/assure/model/AssureModel$AssureType;->getCode()I

    move-result v8

    .line 181
    .local v8, "type":I
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    .end local v5    # "result":Leot;
    .end local v8    # "type":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-le v10, v13, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-le v10, v13, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 186
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-le v10, v13, :cond_4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 192
    :cond_4
    const-string/jumbo v10, "keyword"

    invoke-virtual {v7, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "IN ( "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ) "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AND "

    .line 194
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "searchId"

    .line 196
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "IN ( "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ) "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AND "

    .line 198
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "type"

    .line 200
    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "IN ( "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ) "

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v10

    iget-object v11, p0, Lenq$2;->c:Lenq;

    invoke-static {v11}, Lenq;->a(Lenq;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lenq;->d()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/alibaba/bee/DBManager;->queryRaw(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 205
    if-nez v0, :cond_6

    .line 218
    if-eqz v0, :cond_5

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_5
    :goto_1
    return-void

    .line 209
    :cond_6
    :goto_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 210
    new-instance v2, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;

    invoke-direct {v2}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;-><init>()V

    .line 211
    .local v2, "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    invoke-virtual {v2, v0}, Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 212
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 215
    .end local v2    # "entry":Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v10, 0x2

    :try_start_2
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "querySearchEngines error: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    if-eqz v0, :cond_7

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 223
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_3
    iget-object v10, p0, Lenq$2;->b:Lcov;

    invoke-interface {v10, v6}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 218
    :cond_8
    if-eqz v0, :cond_7

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 218
    :catchall_0
    move-exception v10

    if-eqz v0, :cond_9

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v10
.end method
