.class public Lcom/alibaba/android/searchengine/models/SearchTable;
.super Ljava/lang/Object;
.source "SearchTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;,
        Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;,
        Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;,
        Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;,
        Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;
    }
.end annotation


# instance fields
.field public limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

.field public maxTableCount:I

.field public mergeRow:Z

.field public orderByClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;",
            ">;"
        }
    .end annotation
.end field

.field private outColumns:[Ljava/lang/String;

.field private queryColumns:[Ljava/lang/String;

.field public tableName:Ljava/lang/String;

.field private unionTable:Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

.field public whereClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->tableName:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->queryColumns:[Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->outColumns:[Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->unionTable:Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->whereClauses:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->orderByClauses:Ljava/util/List;

    .line 56
    iput-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->mergeRow:Z

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->maxTableCount:I

    .line 75
    iput-object p1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->tableName:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public addLimitClause(II)Lcom/alibaba/android/searchengine/models/SearchTable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "size"    # I

    .prologue
    .line 181
    new-instance v0, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;-><init>()V

    .line 182
    .local v0, "limitClause":Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;
    iput p1, v0, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->start:I

    .line 183
    iput p2, v0, Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;->size:I

    .line 184
    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->limitClause:Lcom/alibaba/android/searchengine/models/SearchTable$LimitClause;

    .line 185
    return-object p0
.end method

.method public addOrdeyByClause(Ljava/lang/String;Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;)Lcom/alibaba/android/searchengine/models/SearchTable;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "orderByType"    # Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    new-instance v0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;-><init>()V

    .line 169
    .local v0, "orderByClause":Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;
    iput-object p1, v0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;->column:Ljava/lang/String;

    .line 170
    iput-object p2, v0, Lcom/alibaba/android/searchengine/models/SearchTable$OrderByClause;->orderType:Lcom/alibaba/android/searchengine/models/SearchTable$OrderByType;

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->orderByClauses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-object p0
.end method

.method public addOutColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;
    .locals 0
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->outColumns:[Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public addQueryColumns([Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;
    .locals 0
    .param p1, "queryColumns"    # [Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->queryColumns:[Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public addWhereClause(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "comparator"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 139
    new-instance v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;-><init>()V

    .line 140
    .local v0, "where":Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;
    iget-object v1, v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->keys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->values:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->comparators:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->whereClauses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-object p0
.end method

.method public addWhereClause(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/alibaba/android/searchengine/models/SearchTable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/searchengine/models/SearchTable;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "comparators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "joins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;-><init>()V

    .line 152
    .local v0, "where":Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;
    iput-object p1, v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->keys:Ljava/util/List;

    .line 153
    iput-object p2, v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->values:Ljava/util/List;

    .line 154
    iput-object p3, v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->comparators:Ljava/util/List;

    .line 155
    iput-object p4, v0, Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;->joins:Ljava/util/List;

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->whereClauses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-object p0
.end method

.method public getOutColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->outColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getQueryColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->queryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnionTable()Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->unionTable:Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    return-object v0
.end method

.method public getWhereClauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/SearchTable$WhereClause;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->whereClauses:Ljava/util/List;

    return-object v0
.end method

.method public union(Lcom/alibaba/android/searchengine/models/SearchTable;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/searchengine/models/SearchTable;
    .locals 1
    .param p1, "table"    # Lcom/alibaba/android/searchengine/models/SearchTable;
    .param p2, "onColumn"    # Ljava/lang/String;
    .param p3, "onOtherColumn"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    invoke-direct {v0}, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->unionTable:Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->unionTable:Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    iput-object p1, v0, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onTable:Lcom/alibaba/android/searchengine/models/SearchTable;

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->unionTable:Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    iput-object p2, v0, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onColumn:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/searchengine/models/SearchTable;->unionTable:Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;

    iput-object p3, v0, Lcom/alibaba/android/searchengine/models/SearchTable$TableUnion;->onOtherColumn:Ljava/lang/String;

    .line 201
    return-object p0
.end method
