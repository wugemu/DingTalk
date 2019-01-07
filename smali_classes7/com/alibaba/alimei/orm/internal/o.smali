.class public Lcom/alibaba/alimei/orm/internal/o;
.super Ljava/lang/Object;
.source "InnerWhere.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/query/Where;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/orm/query/Where",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDatabase:Lcom/alibaba/alimei/orm/IDatabase;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mTableClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mTableName:Ljava/lang/String;

.field private mWhere:Ljava/lang/StringBuilder;

.field private mWhereBase:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/o;->mTableClazz:Ljava/lang/Class;

    .line 32
    invoke-static {p1}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabaseName:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabaseName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mTableName:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mArguments:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
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
    .line 22
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/o;->mTableClazz:Ljava/lang/Class;

    .line 24
    iput-object p2, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabaseName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/alibaba/alimei/orm/internal/o;->mTableName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mArguments:Ljava/util/List;

    .line 28
    return-void
.end method

.method private varargs in(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "isOr"    # Z
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "columnValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    const/4 v6, 0x0

    .line 179
    if-eqz p3, :cond_4

    array-length v5, p3

    if-lez v5, :cond_4

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v5, " IN ( ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    array-length v1, p3

    .line 187
    .local v1, "length":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    aget-object v5, p3, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    aget-object v5, p3, v6

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 189
    if-gtz v1, :cond_0

    .line 190
    iget-object v5, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    .line 215
    .end local v1    # "length":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-object v5

    .line 193
    .restart local v1    # "length":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 194
    .local v2, "objects":[Ljava/lang/Object;
    aget-object v5, p3, v6

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v6

    .line 195
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 196
    aget-object v5, p3, v6

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v0

    .line 197
    const-string/jumbo v5, ", ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "i":I
    .end local v2    # "objects":[Ljava/lang/Object;
    :cond_1
    move-object v2, p3

    .restart local v2    # "objects":[Ljava/lang/Object;
    array-length v4, p3

    .line 203
    .local v4, "size":I
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_2

    .line 204
    const-string/jumbo v5, ", ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 207
    .end local v4    # "size":I
    :cond_2
    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    if-eqz p1, :cond_3

    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/alibaba/alimei/orm/internal/o;->or(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/alibaba/alimei/orm/internal/o;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "objects":[Ljava/lang/Object;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    goto :goto_0
.end method

.method private inList(ZLjava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .param p1, "isOr"    # Z
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    .local p3, "columnValues":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 219
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 220
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 221
    .local v3, "size":I
    new-array v1, v3, [Ljava/lang/Object;

    .line 223
    .local v1, "objects":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v4, " IN ( ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v5

    .line 230
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 231
    const-string/jumbo v4, ", ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/alibaba/alimei/orm/internal/o;->or(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 242
    .end local v0    # "i":I
    .end local v1    # "objects":[Ljava/lang/Object;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "size":I
    :goto_1
    return-object v4

    .line 239
    .restart local v0    # "i":I
    .restart local v1    # "objects":[Ljava/lang/Object;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "size":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/alibaba/alimei/orm/internal/o;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    .end local v1    # "objects":[Ljava/lang/Object;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "size":I
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method addArguments([Ljava/lang/Object;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 247
    if-nez p1, :cond_1

    .line 272
    :cond_0
    return-void

    .line 252
    :cond_1
    array-length v4, p1

    if-ne v4, v5, :cond_5

    aget-object v4, p1, v6

    if-eqz v4, :cond_5

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 253
    aget-object v4, p1, v6

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 254
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 255
    aget-object v4, p1, v6

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 256
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Ljava/lang/Boolean;

    if-ne v4, v7, :cond_3

    .line 257
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 259
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/orm/internal/o;->mArguments:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    move v4, v6

    .line 257
    goto :goto_1

    .line 262
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    array-length v8, p1

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v0, p1, v7

    .line 263
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_8

    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v9, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v9, Ljava/lang/Boolean;

    if-ne v4, v9, :cond_7

    .line 267
    :cond_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 269
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_7
    iget-object v4, p0, Lcom/alibaba/alimei/orm/internal/o;->mArguments:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_8
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_2

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_9
    move v4, v6

    .line 267
    goto :goto_3
.end method

.method public and(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "clause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/orm/internal/o;->where(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "clause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/orm/internal/o;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/orm/internal/o;->in(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    .local p2, "columnValues":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/orm/internal/o;->inList(ZLjava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bracket()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 313
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v0, "newWhere":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    .line 318
    return-void
.end method

.method public columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 111
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/orm/internal/o;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public columnLikeAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columenValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 129
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v2, " like ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v1, "valueFinal":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/orm/internal/o;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public columnLikeOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v2, " like ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "valueFinal":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/orm/internal/o;->or(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public columnOr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/orm/internal/o;->or(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public columnWhere(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/orm/internal/o;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getDatabase()Lcom/alibaba/alimei/orm/IDatabase;
    .locals 1

    .prologue
    .line 299
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/internal/o;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    return-object v0
.end method

.method protected getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 306
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    if-nez v0, :cond_0

    .line 307
    invoke-static {p1}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabase:Lcom/alibaba/alimei/orm/IDatabase;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mTableClazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhereArguments()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 275
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/orm/internal/o;->mArguments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 276
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 278
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 279
    iget-object v3, p0, Lcom/alibaba/alimei/orm/internal/o;->mArguments:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-object v0
.end method

.method protected getWhereSQL(Z)Ljava/lang/String;
    .locals 2
    .param p1, "withKeywordWhere"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 285
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 286
    if-eqz p1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " WHERE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public or(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "clause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    return-object v0
.end method

.method public varargs or(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "clause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/orm/internal/o;->or(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/orm/internal/o;->addArguments([Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    return-object v0
.end method

.method public varargs orIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/orm/internal/o;->in(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    .local p2, "columnValues":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/alimei/orm/internal/o;->inList(ZLjava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected resetWhere()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    return-void
.end method

.method protected setWhereBase(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    .local p1, "whereBase":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public where(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "clause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    return-object v0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "clause"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/alibaba/alimei/orm/internal/o;, "Lcom/alibaba/alimei/orm/internal/o<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/orm/internal/o;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/orm/internal/o;->addArguments([Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/o;->mWhereBase:Ljava/lang/Object;

    return-object v0
.end method
