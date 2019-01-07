.class public Lcom/j256/ormlite/field/DatabaseFieldConfig;
.super Ljava/lang/Object;
.source "DatabaseFieldConfig.java"


# static fields
.field private static O:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/j256/ormlite/field/DataType;


# instance fields
.field public A:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end field

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public F:Ljava/lang/String;

.field public G:Z

.field public H:Z

.field public I:Z

.field J:I

.field public K:Ljava/lang/String;

.field L:Ljava/lang/String;

.field M:Z

.field N:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/j256/ormlite/field/DataType;

.field public f:Lcom/j256/ormlite/field/DataPersister;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v1, Lcom/j256/ormlite/field/types/VoidType;

    sput-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a:Ljava/lang/Class;

    .line 22
    sget-object v1, Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;

    sput-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b:Lcom/j256/ormlite/field/DataType;

    .line 76
    :try_start_0
    const-string/jumbo v1, "javax.persistence.Entity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    const-string/jumbo v1, "com.j256.ormlite.misc.JavaxPersistenceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
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

    sput-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->O:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    sput-object v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->O:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b:Lcom/j256/ormlite/field/DataType;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->e:Lcom/j256/ormlite/field/DataType;

    .line 38
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->i:Z

    .line 47
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->q:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    .line 57
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->A:Ljava/lang/Class;

    .line 67
    iput v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->J:I

    .line 70
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b:Lcom/j256/ormlite/field/DataType;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->e:Lcom/j256/ormlite/field/DataType;

    .line 38
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->i:Z

    .line 47
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->q:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    .line 57
    sget-object v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->A:Ljava/lang/Class;

    .line 67
    iput v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->J:I

    .line 70
    iput-boolean v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    .line 91
    iput-object p1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->c:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 5
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 507
    const-class v3, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DatabaseField;

    .line 508
    .local v0, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    if-eqz v0, :cond_4

    .line 509
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->persisted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1594
    new-instance v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 1595
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->c:Ljava/lang/String;

    .line 1599
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->columnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    .line 1600
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->dataType()Lcom/j256/ormlite/field/DataType;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->e:Lcom/j256/ormlite/field/DataType;

    .line 1602
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->defaultValue()Ljava/lang/String;

    move-result-object v3

    .line 1603
    const-string/jumbo v4, "__ormlite__ no default value string was specified"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1604
    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->g:Ljava/lang/String;

    .line 1606
    :cond_0
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->width()I

    move-result v3

    iput v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->h:I

    .line 1607
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->canBeNull()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->i:Z

    .line 1608
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->id()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->j:Z

    .line 1609
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->generatedId()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->k:Z

    .line 1610
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->generatedIdSequence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->l:Ljava/lang/String;

    .line 1611
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->foreign()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    .line 1612
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->useGetSet()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->n:Z

    .line 1613
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->unknownEnumName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->o:Ljava/lang/Enum;

    .line 1614
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->throwIfNull()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->p:Z

    .line 1615
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->format()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->r:Ljava/lang/String;

    .line 1616
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->unique()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->s:Z

    .line 1617
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->uniqueCombo()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->t:Z

    .line 1620
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->index()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->u:Z

    .line 1621
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->indexName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->v:Ljava/lang/String;

    .line 1622
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->uniqueIndex()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->w:Z

    .line 1623
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->uniqueIndexName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->x:Ljava/lang/String;

    .line 1624
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->foreignAutoRefresh()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    .line 1625
    iget-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->maxForeignAutoRefreshLevel()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 1627
    :cond_1
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->maxForeignAutoRefreshLevel()I

    move-result v3

    iput v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    .line 1631
    :goto_0
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->persisterClass()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->A:Ljava/lang/Class;

    .line 1632
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->allowGeneratedIdInsert()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->B:Z

    .line 1633
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->columnDefinition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->C:Ljava/lang/String;

    .line 1634
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->foreignAutoCreate()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->D:Z

    .line 1635
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->version()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->E:Z

    .line 1636
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->foreignColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->F:Ljava/lang/String;

    .line 1637
    invoke-interface {v0}, Lcom/j256/ormlite/field/DatabaseField;->readOnly()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->G:Z

    .line 529
    :cond_2
    :goto_1
    return-object v2

    .line 1629
    :cond_3
    const/4 v3, -0x1

    iput v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    goto :goto_0

    .line 517
    :cond_4
    const-class v3, Lcom/j256/ormlite/field/ForeignCollectionField;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/ForeignCollectionField;

    .line 518
    .local v1, "foreignCollection":Lcom/j256/ormlite/field/ForeignCollectionField;
    if-eqz v1, :cond_6

    .line 1675
    new-instance v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-direct {v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>()V

    .line 1676
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->c:Ljava/lang/String;

    .line 1677
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1678
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    .line 1680
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->H:Z

    .line 1681
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->eager()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->I:Z

    .line 1682
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->maxEagerLevel()I

    move-result v3

    iput v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->J:I

    .line 1683
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->orderColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->L:Ljava/lang/String;

    .line 1684
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->orderAscending()Z

    move-result v3

    iput-boolean v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    .line 1685
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->columnName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->K:Ljava/lang/String;

    .line 1686
    invoke-interface {v1}, Lcom/j256/ormlite/field/ForeignCollectionField;->foreignFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->N:Ljava/lang/String;

    goto :goto_1

    .line 525
    :cond_6
    sget-object v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->O:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    if-eqz v3, :cond_2

    .line 529
    sget-object v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->O:Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;

    invoke-interface {v2, p0, p2}, Lcom/j256/ormlite/misc/JavaxPersistenceConfigurer;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "unknownEnumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 663
    :cond_0
    const/4 v1, 0x0

    .line 667
    :cond_1
    return-object v1

    .line 665
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Enum;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 666
    .local v1, "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    .end local v1    # "enumVal":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unknwown enum unknown name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x1

    .line 733
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "name":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "start":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 737
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 741
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 739
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "throwExceptions"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 540
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "get"

    invoke-static {p0, v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "is"

    invoke-static {p0, v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p0, v6, p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 550
    .local v0, "fieldGetMethod":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    .line 561
    .end local v0    # "fieldGetMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v0

    .line 545
    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "get"

    invoke-static {p0, v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "get"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v3, v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "is"

    invoke-static {p0, v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string/jumbo v4, "is"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v4, v5}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v6, p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .restart local v0    # "fieldGetMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 554
    if-eqz p1, :cond_3

    .line 555
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Return type of get method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    .line 558
    goto :goto_1
.end method

.method private static varargs a(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 10
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "isGetMethod"    # Z
    .param p2, "throwExceptions"    # Z
    .param p3, "methodNames"    # [Ljava/lang/String;

    .prologue
    .line 708
    const/4 v1, 0x0

    .line 709
    .local v1, "firstException":Ljava/lang/NoSuchMethodException;
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p3

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 711
    .local v4, "methodName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 713
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 728
    .end local v4    # "methodName":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 716
    .restart local v4    # "methodName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 718
    :catch_0
    move-exception v5

    .line 719
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    if-nez v1, :cond_1

    .line 720
    move-object v1, v5

    .line 709
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 724
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :cond_2
    if-eqz p2, :cond_4

    .line 725
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Could not find appropriate "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string/jumbo v6, "get"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " method for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_3
    const-string/jumbo v6, "set"

    goto :goto_2

    .line 728
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "newValue"    # Ljava/lang/String;

    .prologue
    .line 699
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 700
    :cond_0
    const/4 p0, 0x0

    .line 702
    :cond_1
    return-object p0
.end method

.method public static b(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "throwExceptions"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 571
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 572
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "set"

    invoke-static {p0, v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v5, p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 578
    .local v0, "fieldSetMethod":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    .line 589
    .end local v0    # "fieldSetMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v0

    .line 574
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "set"

    invoke-static {p0, v3, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "set"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v3, v4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p0, v5, p1, v2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;ZZ[Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .restart local v0    # "fieldSetMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 581
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    .line 582
    if-eqz p1, :cond_3

    .line 583
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Return type of set method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " instead of void"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    .line 586
    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/j256/ormlite/field/DataPersister;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->f:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->e:Lcom/j256/ormlite/field/DataType;

    invoke-virtual {v0}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->f:Lcom/j256/ormlite/field/DataPersister;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 691
    iget-object v0, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
