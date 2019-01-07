.class public Lcom/alibaba/bee/impl/table/ColumnType;
.super Ljava/lang/Object;
.source "ColumnType.java"


# static fields
.field public static final SEP_COLON:Ljava/lang/String; = ":"

.field public static final SEP_COMMA:Ljava/lang/String; = ","

.field private static final converter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/bee/impl/table/types/FieldConverter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultValue:Ljava/lang/String;

.field public field:Ljava/lang/reflect/Field;

.field public fieldConverter:Lcom/alibaba/bee/impl/table/types/FieldConverter;

.field public id:Z

.field public indexName:[Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nullable:Z

.field public sort:I

.field public uniqueIndexName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 85
    sput-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/alibaba/bee/impl/table/types/StringType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/StringType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/bee/impl/table/types/BooleanType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/BooleanType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/bee/impl/table/types/ShortType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/ShortType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/bee/impl/table/types/IntegerType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/IntegerType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/bee/impl/table/types/LongType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/LongType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/bee/impl/table/types/FloatType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/FloatType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/bee/impl/table/types/DoubleType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/DoubleType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    const-class v1, [B

    new-instance v2, Lcom/alibaba/bee/impl/table/types/BlobType;

    invoke-direct {v2}, Lcom/alibaba/bee/impl/table/types/BlobType;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/bee/impl/table/ColumnType;->nullable:Z

    .line 31
    return-void
.end method

.method public static fieldToColumn(Ljava/lang/reflect/Field;)Lcom/alibaba/bee/impl/table/ColumnType;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 101
    const-class v1, Lcom/alibaba/bee/impl/table/DBColumn;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/bee/impl/table/DBColumn;

    .line 102
    .local v0, "columnField":Lcom/alibaba/bee/impl/table/DBColumn;
    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0, v0}, Lcom/alibaba/bee/impl/table/ColumnType;->fieldToColumn(Ljava/lang/reflect/Field;Lcom/alibaba/bee/impl/table/DBColumn;)Lcom/alibaba/bee/impl/table/ColumnType;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static fieldToColumn(Ljava/lang/reflect/Field;Lcom/alibaba/bee/impl/table/DBColumn;)Lcom/alibaba/bee/impl/table/ColumnType;
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "column"    # Lcom/alibaba/bee/impl/table/DBColumn;

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/bee/impl/table/ColumnType;

    invoke-direct {v0}, Lcom/alibaba/bee/impl/table/ColumnType;-><init>()V

    .line 47
    .local v0, "config":Lcom/alibaba/bee/impl/table/ColumnType;
    iput-object p0, v0, Lcom/alibaba/bee/impl/table/ColumnType;->field:Ljava/lang/reflect/Field;

    .line 49
    invoke-interface {p1}, Lcom/alibaba/bee/impl/table/DBColumn;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/bee/DatabaseUtils;->defaultIfBlank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/bee/impl/table/ColumnType;->name:Ljava/lang/String;

    .line 51
    sget-object v3, Lcom/alibaba/bee/impl/table/ColumnType;->converter:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/bee/impl/table/types/FieldConverter;

    .line 52
    .local v2, "fConverter":Lcom/alibaba/bee/impl/table/types/FieldConverter;
    if-nez v2, :cond_0

    .line 53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unsupported field type for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_0
    iput-object v2, v0, Lcom/alibaba/bee/impl/table/ColumnType;->fieldConverter:Lcom/alibaba/bee/impl/table/types/FieldConverter;

    .line 55
    invoke-interface {p1}, Lcom/alibaba/bee/impl/table/DBColumn;->defaultValue()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "defaultValue":Ljava/lang/String;
    const-string/jumbo v3, "_ali_sqlite_val_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    iput-object v1, v0, Lcom/alibaba/bee/impl/table/ColumnType;->defaultValue:Ljava/lang/String;

    .line 59
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/bee/impl/table/DBColumn;->nullable()Z

    move-result v3

    iput-boolean v3, v0, Lcom/alibaba/bee/impl/table/ColumnType;->nullable:Z

    .line 61
    invoke-interface {p1}, Lcom/alibaba/bee/impl/table/DBColumn;->id()Z

    move-result v3

    iput-boolean v3, v0, Lcom/alibaba/bee/impl/table/ColumnType;->id:Z

    .line 62
    invoke-interface {p1}, Lcom/alibaba/bee/impl/table/DBColumn;->sort()I

    move-result v3

    iput v3, v0, Lcom/alibaba/bee/impl/table/ColumnType;->sort:I

    .line 65
    invoke-interface {p1}, Lcom/alibaba/bee/impl/table/DBColumn;->indexName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/bee/impl/table/ColumnType;->findIndexName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/bee/impl/table/ColumnType;->indexName:[Ljava/lang/String;

    .line 66
    invoke-interface {p1}, Lcom/alibaba/bee/impl/table/DBColumn;->uniqueIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/bee/impl/table/ColumnType;->findIndexName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/bee/impl/table/ColumnType;->uniqueIndexName:[Ljava/lang/String;

    .line 67
    return-object v0
.end method

.method private static findIndexName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "indexName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 37
    .local v1, "val":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/bee/impl/table/ColumnType;->field:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    iget-object v2, p0, Lcom/alibaba/bee/impl/table/ColumnType;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    .end local v1    # "val":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 39
    .restart local v1    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
