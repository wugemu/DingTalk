.class public Lcom/j256/ormlite/field/types/EnumStringType;
.super Lcom/j256/ormlite/field/types/BaseEnumType;
.source "EnumStringType.java"


# static fields
.field public static a:I

.field private static final b:Lcom/j256/ormlite/field/types/EnumStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x64

    sput v0, Lcom/j256/ormlite/field/types/EnumStringType;->a:I

    .line 21
    new-instance v0, Lcom/j256/ormlite/field/types/EnumStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/EnumStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/EnumStringType;->b:Lcom/j256/ormlite/field/types/EnumStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 28
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Enum;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseEnumType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseEnumType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 36
    return-void
.end method

.method public static q()Lcom/j256/ormlite/field/types/EnumStringType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/j256/ormlite/field/types/EnumStringType;->b:Lcom/j256/ormlite/field/types/EnumStringType;

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
    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2444
    .local v2, "enumStringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    iget-object v6, p1, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 72
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Enum;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Enum;

    .line 73
    .local v1, "constants":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-nez v1, :cond_0

    .line 74
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

    .line 76
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

    .line 77
    .local v3, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p0, v3}, Lcom/j256/ormlite/field/types/EnumStringType;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
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
    .line 65
    move-object v0, p2

    check-cast v0, Ljava/lang/Enum;

    .line 66
    .local v0, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/types/EnumStringType;->a(Ljava/lang/Enum;)Ljava/lang/String;

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
    .line 45
    if-nez p1, :cond_0

    .line 54
    .end local p2    # "sqlArg":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "sqlArg":Ljava/lang/Object;
    :cond_0
    move-object v1, p2

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 1463
    .local v1, "value":Ljava/lang/String;
    iget-object v0, p1, Lcom/j256/ormlite/field/FieldType;->i:Ljava/lang/Object;

    .line 50
    check-cast v0, Ljava/util/Map;

    .line 51
    .local v0, "enumStringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    if-nez v0, :cond_1

    .line 52
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->d()Ljava/lang/Enum;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/j256/ormlite/field/types/EnumStringType;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->d()Ljava/lang/Enum;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/j256/ormlite/field/types/EnumStringType;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    goto :goto_0
.end method

.method public final a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 60
    return-object p2
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
    .line 40
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseResults;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/j256/ormlite/field/types/EnumStringType;->a:I

    return v0
.end method
