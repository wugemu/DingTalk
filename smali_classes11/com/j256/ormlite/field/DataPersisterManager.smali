.class public Lcom/j256/ormlite/field/DataPersisterManager;
.super Ljava/lang/Object;
.source "DataPersisterManager.java"


# static fields
.field private static final a:Lcom/j256/ormlite/field/DataPersister;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 20
    invoke-static {}, Lcom/j256/ormlite/field/types/EnumStringType;->q()Lcom/j256/ormlite/field/types/EnumStringType;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/field/DataPersisterManager;->a:Lcom/j256/ormlite/field/DataPersister;

    .line 23
    const/4 v11, 0x0

    sput-object v11, Lcom/j256/ormlite/field/DataPersisterManager;->c:Ljava/util/List;

    .line 27
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lcom/j256/ormlite/field/DataPersisterManager;->b:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/DataType;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v0    # "arr$":[Lcom/j256/ormlite/field/DataType;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v5, v0, v7

    .line 29
    .local v5, "dataType":Lcom/j256/ormlite/field/DataType;
    invoke-virtual {v5}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v10

    .line 30
    .local v10, "persister":Lcom/j256/ormlite/field/DataPersister;
    if-eqz v10, :cond_1

    .line 31
    invoke-interface {v10}, Lcom/j256/ormlite/field/DataPersister;->c()[Ljava/lang/Class;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v4, v1, v6

    .line 32
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v11, Lcom/j256/ormlite/field/DataPersisterManager;->b:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 34
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-interface {v10}, Lcom/j256/ormlite/field/DataPersister;->d()[Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "associatedClassNames":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v10}, Lcom/j256/ormlite/field/DataPersister;->d()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_1

    aget-object v3, v1, v6

    .line 37
    .local v3, "className":Ljava/lang/String;
    sget-object v11, Lcom/j256/ormlite/field/DataPersisterManager;->b:Ljava/util/Map;

    invoke-interface {v11, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 28
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "associatedClassNames":[Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    :cond_1
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 42
    .end local v5    # "dataType":Lcom/j256/ormlite/field/DataType;
    .end local v10    # "persister":Lcom/j256/ormlite/field/DataPersister;
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 93
    sget-object v1, Lcom/j256/ormlite/field/DataPersisterManager;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    .line 94
    .local v0, "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    if-eqz v0, :cond_0

    .line 109
    .end local v0    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    sget-object v0, Lcom/j256/ormlite/field/DataPersisterManager;->a:Lcom/j256/ormlite/field/DataPersister;

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
