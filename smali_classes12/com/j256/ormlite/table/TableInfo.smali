.class public Lcom/j256/ormlite/table/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final g:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:[Lcom/j256/ormlite/field/FieldType;

.field public final d:[Lcom/j256/ormlite/field/FieldType;

.field public final e:Lcom/j256/ormlite/field/FieldType;

.field public final f:Z

.field private final h:Lcom/j256/ormlite/dao/BaseDaoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/table/TableInfo;->g:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 10
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "baseDaoImpl":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p3, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/j256/ormlite/table/TableInfo;->h:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 1085
    iget-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 70
    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    .line 1094
    iget-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->b:Ljava/lang/String;

    .line 71
    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 1125
    iget-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->d:[Lcom/j256/ormlite/field/FieldType;

    if-nez v7, :cond_0

    .line 1126
    new-instance v7, Ljava/sql/SQLException;

    const-string/jumbo v8, "Field types have not been extracted in table config"

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1128
    :cond_0
    iget-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->d:[Lcom/j256/ormlite/field/FieldType;

    .line 72
    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "findIdFieldType":Lcom/j256/ormlite/field/FieldType;
    const/4 v3, 0x0

    .line 76
    .local v3, "foreignAutoCreate":Z
    const/4 v4, 0x0

    .line 77
    .local v4, "foreignCollectionCount":I
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v1, v0, v5

    .line 1491
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-boolean v7, v1, Lcom/j256/ormlite/field/FieldType;->d:Z

    .line 78
    if-nez v7, :cond_1

    .line 1499
    iget-boolean v7, v1, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 78
    if-nez v7, :cond_1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 79
    :cond_1
    if-eqz v2, :cond_2

    .line 80
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "More than 1 idField configured for class "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_2
    move-object v2, v1

    .line 85
    :cond_3
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->k()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    const/4 v3, 0x1

    .line 88
    :cond_4
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->h()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 77
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_6
    iput-object v2, p0, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 2140
    iget-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->e:Ljava/lang/reflect/Constructor;

    if-nez v7, :cond_7

    .line 2141
    iget-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    invoke-static {v7}, Lcom/j256/ormlite/table/DatabaseTableConfig;->b(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    iput-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->e:Ljava/lang/reflect/Constructor;

    .line 2143
    :cond_7
    iget-object v7, p3, Lcom/j256/ormlite/table/DatabaseTableConfig;->e:Ljava/lang/reflect/Constructor;

    .line 94
    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->i:Ljava/lang/reflect/Constructor;

    .line 95
    iput-boolean v3, p0, Lcom/j256/ormlite/table/TableInfo;->f:Z

    .line 96
    if-nez v4, :cond_9

    .line 97
    sget-object v7, Lcom/j256/ormlite/table/TableInfo;->g:[Lcom/j256/ormlite/field/FieldType;

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->d:[Lcom/j256/ormlite/field/FieldType;

    .line 108
    :cond_8
    return-void

    .line 99
    :cond_9
    new-array v7, v4, [Lcom/j256/ormlite/field/FieldType;

    iput-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->d:[Lcom/j256/ormlite/field/FieldType;

    .line 100
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_8

    aget-object v1, v0, v5

    .line 102
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->h()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 103
    iget-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->d:[Lcom/j256/ormlite/field/FieldType;

    aput-object v1, v7, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 101
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V
    .locals 2
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p2, "baseDaoImpl":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    iget-object v6, p0, Lcom/j256/ormlite/table/TableInfo;->j:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 137
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2455
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v6, v1, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 139
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    iput-object v5, p0, Lcom/j256/ormlite/table/TableInfo;->j:Ljava/util/Map;

    .line 143
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;>;"
    :cond_1
    iget-object v6, p0, Lcom/j256/ormlite/table/TableInfo;->j:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/FieldType;

    .line 145
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-eqz v1, :cond_2

    .line 146
    return-object v1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .restart local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 3437
    .local v2, "fieldType2":Lcom/j256/ormlite/field/FieldType;
    iget-object v6, v2, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "You should use columnName \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3455
    iget-object v8, v2, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' for table "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " instead of fieldName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4437
    iget-object v8, v2, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v2    # "fieldType2":Lcom/j256/ormlite/field/FieldType;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unknown column name \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' in table "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public final a()Ljava/lang/Object;
    .locals 6
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

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    .local p0, "this":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    const/4 v2, 0x0

    .line 193
    .local v2, "factory":Lcom/j256/ormlite/table/ObjectFactory;, "Lcom/j256/ormlite/table/ObjectFactory<TT;>;"
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/table/TableInfo;->h:Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/j256/ormlite/table/TableInfo;->h:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 4986
    const/4 v2, 0x0

    .line 196
    :cond_0
    if-nez v2, :cond_2

    .line 197
    iget-object v4, p0, Lcom/j256/ormlite/table/TableInfo;->i:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    .local v3, "instance":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-object v5, p0, Lcom/j256/ormlite/table/TableInfo;->h:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 5244
    instance-of v4, v3, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v4, :cond_1

    .line 5246
    move-object v0, v3

    check-cast v0, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    move-object v4, v0

    .line 5247
    invoke-virtual {v4, v5}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->a(Lcom/j256/ormlite/dao/Dao;)V

    .line 202
    :cond_1
    return-object v3

    .line 199
    .end local v3    # "instance":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lcom/j256/ormlite/table/TableInfo;->h:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v4}, Lcom/j256/ormlite/dao/BaseDaoImpl;->d()Ljava/lang/Class;

    invoke-interface {v2}, Lcom/j256/ormlite/table/ObjectFactory;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "instance":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 203
    .end local v3    # "instance":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not create object for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/j256/ormlite/table/TableInfo;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
.end method
