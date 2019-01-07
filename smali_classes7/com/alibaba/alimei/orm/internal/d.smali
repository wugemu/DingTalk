.class public abstract Lcom/alibaba/alimei/orm/internal/d;
.super Ljava/lang/Object;
.source "DatabaseModelInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/orm/internal/d$b;,
        Lcom/alibaba/alimei/orm/internal/d$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Lcom/alibaba/alimei/orm/internal/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/orm/internal/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Lcom/alibaba/alimei/orm/internal/ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/orm/internal/d;->g:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/orm/internal/d;->h:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/orm/internal/d;->i:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/orm/internal/d;->j:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/orm/internal/d;->k:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/orm/internal/d;->l:Ljava/util/Map;

    .line 146
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Lcom/alibaba/alimei/orm/internal/d$a;
    .locals 3
    .param p0, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 155
    const-class v2, Lcom/alibaba/alimei/orm/internal/d;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->h:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/internal/d$a;

    .line 156
    .local v0, "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/alibaba/alimei/orm/internal/d$a;

    .end local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    invoke-direct {v0}, Lcom/alibaba/alimei/orm/internal/d$a;-><init>()V

    .line 158
    .restart local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    iput-object p0, v0, Lcom/alibaba/alimei/orm/internal/d$a;->m:Ljava/lang/String;

    .line 159
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->h:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit v2

    return-object v0

    .line 155
    .end local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized a(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/d$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)",
            "Lcom/alibaba/alimei/orm/internal/d$b;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    const-class v2, Lcom/alibaba/alimei/orm/internal/d;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->g:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/internal/d$b;

    .line 166
    .local v0, "pair":Lcom/alibaba/alimei/orm/internal/d$b;
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/alibaba/alimei/orm/internal/d$b;

    .end local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$b;
    invoke-direct {v0, p0}, Lcom/alibaba/alimei/orm/internal/d$b;-><init>(Ljava/lang/Class;)V

    .line 168
    .restart local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$b;
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->g:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit v2

    return-object v0

    .line 165
    .end local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$b;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->h:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/internal/d$a;

    .line 215
    .local v0, "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    if-nez v0, :cond_0

    .line 216
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->h:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    check-cast v0, Lcom/alibaba/alimei/orm/internal/d$a;

    .line 218
    .restart local v0    # "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    if-nez v0, :cond_1

    .line 219
    new-instance v1, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6570\u636e\u5e93\u672a\u8fdb\u884c\u914d\u7f6e\uff0c\u5f00\u53d1\u914d\u7f6e\u9519\u8bef\uff0c\u8bf7\u5f00\u53d1\u68c0\u67e5\u8c03\u7528\u7684\u914d\u7f6e\u4fe1\u606f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/orm/internal/d$a;->f(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/orm/internal/d$a;->e(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    const-class v1, Lcom/alibaba/alimei/orm/internal/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/alimei/orm/internal/d;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit v1

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "tableModel":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    const-class v4, Lcom/alibaba/alimei/orm/internal/d;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 202
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 196
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/d$b;

    move-result-object v2

    .line 197
    .local v2, "modelPair":Lcom/alibaba/alimei/orm/internal/d$b;
    invoke-virtual {v2, p0, p1, p2}, Lcom/alibaba/alimei/orm/internal/d$b;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "finalTableName":Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/String;)Lcom/alibaba/alimei/orm/internal/d$a;

    move-result-object v0

    .line 201
    .local v0, "databasePair":Lcom/alibaba/alimei/orm/internal/d$a;
    invoke-static {v0, v1, p0}, Lcom/alibaba/alimei/orm/internal/d$a;->a(Lcom/alibaba/alimei/orm/internal/d$a;Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    .end local v0    # "databasePair":Lcom/alibaba/alimei/orm/internal/d$a;
    .end local v1    # "finalTableName":Ljava/lang/String;
    .end local v2    # "modelPair":Lcom/alibaba/alimei/orm/internal/d$b;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    sget-object v0, Lcom/alibaba/alimei/orm/internal/d;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/alibaba/alimei/orm/internal/d;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u672a\u5728\u4efb\u4f55db\u4e2d\u914d\u7f6e\uff0c\u8bf7\u68c0\u67e5\u914d\u7f6e\u4fe1\u606f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p0, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 280
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->h:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/internal/d$a;

    .line 281
    .local v0, "pair":Lcom/alibaba/alimei/orm/internal/d$a;
    if-nez v0, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 285
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/alibaba/alimei/orm/internal/d$a;->n:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p1, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    if-nez p0, :cond_0

    .line 358
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "model can not be empty for addViewEntry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "database can not be empty for addViewEntry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->k:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 366
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->k:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_2
    return-void

    .line 368
    :cond_3
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->k:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    .local v0, "dbName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    new-instance v1, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u5df2\u7ecf\u5728database["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\u4e2d\u914d\u7f6e\uff0c\u4e0d\u80fd\u518ddatabase["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\u4e2d\u914d\u7f6e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    if-nez p0, :cond_0

    .line 330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "model can not be empty for addTableEntry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "database can not be empty for addTableEntry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->j:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 338
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->j:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->l:Ljava/util/Map;

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_3
    return-void

    .line 340
    :cond_4
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->j:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    .local v0, "dbName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    new-instance v1, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u5df2\u7ecf\u5728database["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\u4e2d\u914d\u7f6e\uff0c\u4e0d\u80fd\u518ddatabase["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\u4e2d\u914d\u7f6e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p0, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    const-class v2, Lcom/alibaba/alimei/orm/internal/d;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->i:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    invoke-static {p1, p0}, Lcom/alibaba/alimei/orm/internal/ViewInfo;->newViewInfo(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/alimei/orm/internal/ViewInfo;

    move-result-object v0

    .line 296
    .local v0, "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    if-eqz v0, :cond_0

    .line 297
    sget-object v1, Lcom/alibaba/alimei/orm/internal/d;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v0    # "viewInfo":Lcom/alibaba/alimei/orm/internal/ViewInfo;
    :cond_0
    monitor-exit v2

    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static c(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/TableInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)",
            "Lcom/alibaba/alimei/orm/internal/TableInfo;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "model":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    sget-object v2, Lcom/alibaba/alimei/orm/internal/d;->g:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    sget-object v2, Lcom/alibaba/alimei/orm/internal/d;->g:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/orm/internal/d$b;

    .line 259
    .local v1, "pair":Lcom/alibaba/alimei/orm/internal/d$b;
    if-eqz v1, :cond_0

    .line 260
    iget-object v2, v1, Lcom/alibaba/alimei/orm/internal/d$b;->p:Lcom/alibaba/alimei/orm/internal/TableInfo;

    .line 271
    :goto_0
    return-object v2

    .line 264
    .end local v1    # "pair":Lcom/alibaba/alimei/orm/internal/d$b;
    :cond_0
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "databaseName":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/alimei/orm/internal/d;->l:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/d$b;

    move-result-object v1

    .line 268
    .restart local v1    # "pair":Lcom/alibaba/alimei/orm/internal/d$b;
    if-nez v1, :cond_1

    .line 269
    new-instance v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not valid table entry!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_1
    iget-object v2, v1, Lcom/alibaba/alimei/orm/internal/d$b;->p:Lcom/alibaba/alimei/orm/internal/TableInfo;

    goto :goto_0
.end method

.method public static d(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/internal/ViewInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;)",
            "Lcom/alibaba/alimei/orm/internal/ViewInfo;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    sget-object v0, Lcom/alibaba/alimei/orm/internal/d;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Lcom/alibaba/alimei/orm/internal/d;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/String;Ljava/lang/Class;)V

    .line 311
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/orm/internal/d;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/internal/ViewInfo;

    return-object v0
.end method
