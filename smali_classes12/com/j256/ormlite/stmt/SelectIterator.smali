.class public Lcom/j256/ormlite/stmt/SelectIterator;
.super Ljava/lang/Object;
.source "SelectIterator.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/j256/ormlite/support/ConnectionSource;

.field private final e:Lcom/j256/ormlite/support/DatabaseConnection;

.field private final f:Lcom/j256/ormlite/support/CompiledStatement;

.field private final g:Lcom/j256/ormlite/support/DatabaseResults;

.field private final h:Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->a:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 3
    .param p4, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p5, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p6, "compiledStmt"    # Lcom/j256/ormlite/support/CompiledStatement;
    .param p7, "statement"    # Ljava/lang/String;
    .param p8, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/support/CompiledStatement;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "classDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    .local p3, "rowMapper":Lcom/j256/ormlite/stmt/GenericRowMapper;, "Lcom/j256/ormlite/stmt/GenericRowMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    .line 51
    iput-object p1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->b:Ljava/lang/Class;

    .line 52
    iput-object p2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->c:Lcom/j256/ormlite/dao/Dao;

    .line 53
    iput-object p3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->h:Lcom/j256/ormlite/stmt/GenericRowMapper;

    .line 54
    iput-object p4, p0, Lcom/j256/ormlite/stmt/SelectIterator;->d:Lcom/j256/ormlite/support/ConnectionSource;

    .line 55
    iput-object p5, p0, Lcom/j256/ormlite/stmt/SelectIterator;->e:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 56
    iput-object p6, p0, Lcom/j256/ormlite/stmt/SelectIterator;->f:Lcom/j256/ormlite/support/CompiledStatement;

    .line 57
    invoke-interface {p6, p8}, Lcom/j256/ormlite/support/CompiledStatement;->a(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->g:Lcom/j256/ormlite/support/DatabaseResults;

    .line 58
    iput-object p7, p0, Lcom/j256/ormlite/stmt/SelectIterator;->i:Ljava/lang/String;

    .line 59
    if-eqz p7, :cond_0

    .line 60
    sget-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "starting iterator @{} for \'{}\'"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p7}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v1, 0x0

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    .line 279
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    .line 280
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->l:Z

    .line 281
    return-void
.end method

.method public final b()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->k:Z

    if-eqz v2, :cond_0

    .line 89
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->l:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    if-eqz v2, :cond_3

    .line 80
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    .line 81
    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->g:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->b()Z

    move-result v0

    .line 85
    .local v0, "result":Z
    :goto_1
    if-nez v0, :cond_2

    .line 86
    const-string/jumbo v2, "iterator"

    invoke-static {p0, v2}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 88
    :cond_2
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->l:Z

    goto :goto_0

    .line 83
    .end local v0    # "result":Z
    :cond_3
    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->g:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->c()Z

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_1
.end method

.method public final c()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 150
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->k:Z

    if-eqz v2, :cond_0

    .line 168
    :goto_0
    return-object v1

    .line 153
    :cond_0
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->l:Z

    if-nez v2, :cond_2

    .line 155
    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    if-eqz v2, :cond_1

    .line 156
    iput-boolean v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    .line 157
    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->g:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->b()Z

    move-result v0

    .line 162
    .local v0, "hasResult":Z
    :goto_1
    if-nez v0, :cond_2

    .line 163
    iput-boolean v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    goto :goto_0

    .line 159
    .end local v0    # "hasResult":Z
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->g:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->c()Z

    move-result v0

    .restart local v0    # "hasResult":Z
    goto :goto_1

    .line 167
    .end local v0    # "hasResult":Z
    :cond_2
    iput-boolean v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->j:Z

    .line 1284
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->h:Lcom/j256/ormlite/stmt/GenericRowMapper;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->g:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/stmt/GenericRowMapper;->a(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    .line 1285
    iput-boolean v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->l:Z

    .line 1286
    iget v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->n:I

    .line 1287
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    goto :goto_0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->k:Z

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->f:Lcom/j256/ormlite/support/CompiledStatement;

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->k:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "closed iterator @{} after {} rows"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->b()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/sql/SQLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    .line 1268
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Errors getting more results of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v2, 0x0

    .line 181
    .local v2, "sqlException":Ljava/sql/SQLException;
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    .local v1, "result":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 183
    return-object v1

    .line 185
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/sql/SQLException;
    move-object v2, v0

    .line 189
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    .line 2268
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 191
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not get next result for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/j256/ormlite/stmt/SelectIterator;->b:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public remove()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    .line 3216
    .local p0, "this":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 3217
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No last "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " object to remove. Must be called after a call to next."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 3268
    .local v0, "e":Ljava/sql/SQLException;
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->a(Ljava/io/Closeable;)V

    .line 245
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3220
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_1

    .line 3222
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " object because classDao not initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3225
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->c:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->e(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3228
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    .line 247
    return-void

    .line 3228
    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->m:Ljava/lang/Object;

    throw v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
.end method
