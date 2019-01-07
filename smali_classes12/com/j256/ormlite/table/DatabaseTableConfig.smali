.class public Lcom/j256/ormlite/table/DatabaseTableConfig;
.super Ljava/lang/Object;
.source "DatabaseTableConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static f:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;"
        }
    .end annotation
.end field

.field d:[Lcom/j256/ormlite/field/FieldType;

.field e:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    :try_start_0
    const-string/jumbo v1, "javax.persistence.Entity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    const-string/jumbo v1, "com.j256.ormlite.misc.JavaxPersistenceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    sput-object v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->f:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/table/DatabaseTableConfig;->f:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 62
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->b:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->c:Ljava/util/List;

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "fieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .line 68
    iput-object p2, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->b:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->d:[Lcom/j256/ormlite/field/FieldType;

    .line 70
    return-void
.end method

.method public static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 3
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    return-object v1
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/table/DatabaseTable;

    .line 170
    .local v0, "databaseTable":Lcom/j256/ormlite/table/DatabaseTable;
    const/4 v1, 0x0

    .line 171
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/j256/ormlite/table/DatabaseTable;->tableName()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/j256/ormlite/table/DatabaseTableConfig;->f:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    if-eqz v2, :cond_1

    .line 175
    sget-object v2, Lcom/j256/ormlite/table/DatabaseTableConfig;->f:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    invoke-interface {v2, p0}, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_1
    if-nez v1, :cond_2

    .line 179
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_2
    return-object v1
.end method

.method private static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;
    .locals 10
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, "fieldTypes":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    move-object v1, p1

    .local v1, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 222
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {p0, p2, v2, p1}, Lcom/j256/ormlite/field/FieldType;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    .line 223
    .local v3, "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-eqz v3, :cond_0

    .line 224
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 220
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 228
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 229
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "No fields have a "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " annotation in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/j256/ormlite/field/FieldType;

    return-object v7
.end method

.method private a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;
    .locals 9
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            ">;)[",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    .local p3, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v7, "fieldTypes":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 239
    .local v4, "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    const/4 v0, 0x0

    .line 241
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v6, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    .local v6, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v6, :cond_0

    .line 1126
    :try_start_0
    iget-object v1, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->c:Ljava/lang/String;

    .line 244
    invoke-virtual {v6, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 249
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_1

    .line 250
    new-instance v0, Lcom/j256/ormlite/field/FieldType;

    .end local v0    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v5, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/field/FieldType;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V

    .line 255
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v0    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    if-nez v0, :cond_2

    .line 256
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not find declared field with name \'"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2126
    iget-object v5, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->c:Ljava/lang/String;

    .line 256
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\' for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :catch_0
    move-exception v1

    .line 241
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    .line 259
    :cond_2
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v0    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v4    # "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .end local v6    # "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "No fields were configured for class "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v7, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/j256/ormlite/field/FieldType;

    return-object v1
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v3, "consts":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    move-object v2, v3

    .line 197
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 198
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 201
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :cond_0
    return-object v1

    .line 194
    .end local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v2    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    .end local v3    # "consts":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Can\'t lookup declared constructors for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 203
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v2    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v3    # "consts":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :catch_1
    move-exception v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Could not open access to constructor for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 197
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_3

    .line 210
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Can\'t find a no-arg constructor for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 212
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Can\'t find a no-arg constructor for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".  Missing static on inner class?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    .local p0, "this":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->d:[Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Ljava/lang/String;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->d:[Lcom/j256/ormlite/field/FieldType;

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/util/List;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/DatabaseTableConfig;->d:[Lcom/j256/ormlite/field/FieldType;

    goto :goto_0
.end method
