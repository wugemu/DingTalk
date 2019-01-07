.class public Lcom/j256/ormlite/field/types/EnumIntegerType;
.super Lcom/j256/ormlite/field/types/BaseEnumType;
.source "EnumIntegerType.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/types/EnumIntegerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/j256/ormlite/field/types/EnumIntegerType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/EnumIntegerType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/EnumIntegerType;->a:Lcom/j256/ormlite/field/types/EnumIntegerType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->INTEGER:Lcom/j256/ormlite/field/SqlType;

    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/types/BaseEnumType;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    .line 27
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/EnumIntegerType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/j256/ormlite/field/types/EnumIntegerType;->a:Lcom/j256/ormlite/field/types/EnumIntegerType;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 9
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2444
    .local v2, "enumIntMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Enum<*>;>;"
    iget-object v6, p1, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Enum;

    .line 77
    .local v1, "constants":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-nez v1, :cond_0

    .line 78
    new-instance v6, Ljava/sql/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Field "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " improperly configured as type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 80
    :cond_0
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 81
    .local v3, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    return-object v2
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    move-object v0, p2

    check-cast v0, Ljava/lang/Enum;

    .line 65
    .local v0, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "sqlArg"    # Ljava/lang/Object;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 58
    .end local p2    # "sqlArg":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "sqlArg":Ljava/lang/Object;
    :cond_0
    move-object v1, p2

    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 1463
    .local v1, "valInteger":Ljava/lang/Integer;
    iget-object v0, p1, Lcom/j256/ormlite/field/FieldType;->i:Ljava/lang/Object;

    .line 54
    check-cast v0, Ljava/util/Map;

    .line 55
    .local v0, "enumIntMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Enum<*>;>;"
    if-nez v0, :cond_1

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->d()Ljava/lang/Enum;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/j256/ormlite/field/types/EnumIntegerType;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->d()Ljava/lang/Enum;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/j256/ormlite/field/types/EnumIntegerType;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .param p2, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->g(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
