.class public abstract Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.super Ljava/lang/Object;
.source "BaseMappedStatement.java"


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
.field protected static d:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected final e:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final g:Lcom/j256/ormlite/field/FieldType;

.field protected final h:Ljava/lang/String;

.field protected final i:[Lcom/j256/ormlite/field/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->d:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 1
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;, "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->e:Lcom/j256/ormlite/table/TableInfo;

    .line 1114
    iget-object v0, p1, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    .line 29
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->f:Ljava/lang/Class;

    .line 1162
    iget-object v0, p1, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 30
    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->g:Lcom/j256/ormlite/field/FieldType;

    .line 31
    iput-object p2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->h:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->i:[Lcom/j256/ormlite/field/FieldType;

    .line 33
    return-void
.end method

.method static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    const-string/jumbo v0, "WHERE "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 66
    const-string/jumbo v0, "= ?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method

.method static a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V
    .locals 1
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .line 2455
    .local p3, "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    iget-object v0, p2, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 79
    invoke-interface {p0, p1, v0}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    if-eqz p3, :cond_0

    .line 81
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method

.method static a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-interface {p0, p1, p3}, Lcom/j256/ormlite/db/DatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;, "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<TT;TID;>;"
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->i:[Lcom/j256/ormlite/field/FieldType;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 40
    .local v2, "objects":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->i:[Lcom/j256/ormlite/field/FieldType;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 41
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->i:[Lcom/j256/ormlite/field/FieldType;

    aget-object v0, v3, v1

    .line 42
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/field/FieldType;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 47
    :goto_1
    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 1475
    iget-object v3, v0, Lcom/j256/ormlite/field/FieldType;->h:Ljava/lang/Object;

    .line 49
    aput-object v3, v2, v1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/field/FieldType;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 52
    .end local v0    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    return-object v2
.end method

.method protected final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;, "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->g:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/field/FieldType;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;, "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<TT;TID;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MappedStatement: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
