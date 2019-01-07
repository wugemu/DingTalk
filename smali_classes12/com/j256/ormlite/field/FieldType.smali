.class public Lcom/j256/ormlite/field/FieldType;
.super Ljava/lang/Object;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/field/FieldType$LevelCounters;
    }
.end annotation


# static fields
.field private static final v:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/j256/ormlite/field/FieldType$LevelCounters;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field public final a:Ljava/lang/reflect/Field;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public g:Lcom/j256/ormlite/field/DataPersister;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Lcom/j256/ormlite/field/FieldType;

.field public k:Lcom/j256/ormlite/field/FieldType;

.field public l:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<**>;"
        }
    .end annotation
.end field

.field public m:Lcom/j256/ormlite/field/FieldType;

.field public n:Lcom/j256/ormlite/dao/BaseDaoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;"
        }
    .end annotation
.end field

.field public o:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/j256/ormlite/support/ConnectionSource;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/reflect/Method;

.field private final s:Ljava/lang/reflect/Method;

.field private final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private u:Lcom/j256/ormlite/field/FieldConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/FieldType;->v:Ljava/lang/ThreadLocal;

    .line 90
    const-class v0, Lcom/j256/ormlite/field/FieldType;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/field/FieldType;->w:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V
    .locals 19
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "fieldConfig"    # Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/j256/ormlite/field/DatabaseFieldConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 96
    .local p5, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->p:Lcom/j256/ormlite/support/ConnectionSource;

    .line 98
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->q:Ljava/lang/String;

    .line 99
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v4

    .line 100
    .local v4, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    .line 101
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->t:Ljava/lang/Class;

    .line 1646
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->F:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 1647
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput-boolean v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    .line 1649
    :cond_0
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v0, p4

    iget v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1650
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    .line 106
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 108
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v16

    if-nez v16, :cond_7

    .line 2444
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->A:Ljava/lang/Class;

    .line 110
    .local v10, "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    if-eqz v10, :cond_2

    const-class v16, Lcom/j256/ormlite/field/types/VoidType;

    move-object/from16 v0, v16

    if-ne v10, v0, :cond_5

    .line 111
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/j256/ormlite/field/DataPersisterManager;->a(Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object v3

    .line 2484
    .end local v10    # "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    .local v3, "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    :cond_3
    :goto_0
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->F:Ljava/lang/String;

    .line 156
    .local v7, "foreignColumnName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3243
    .local v5, "defaultFieldName":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    move/from16 v16, v0

    .line 157
    if-nez v16, :cond_4

    .line 3364
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    move/from16 v16, v0

    .line 157
    if-nez v16, :cond_4

    if-eqz v7, :cond_b

    .line 158
    :cond_4
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/j256/ormlite/field/DataPersister;->i()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 159
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " is a primitive class "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " but marked as foreign"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 115
    .end local v3    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    .end local v5    # "defaultFieldName":Ljava/lang/String;
    .end local v7    # "foreignColumnName":Ljava/lang/String;
    .restart local v10    # "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    :cond_5
    :try_start_0
    const-string/jumbo v16, "getSingleton"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 122
    .local v9, "method":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 129
    .local v12, "result":Ljava/lang/Object;
    if-nez v12, :cond_6

    .line 130
    new-instance v16, Ljava/sql/SQLException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Static getSingleton method should not return null on class "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 116
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 117
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Could not find getSingleton static method on class "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v16

    throw v16

    .line 123
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v6

    .line 124
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Could not run getSingleton method on class "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v16

    throw v16

    .line 126
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 127
    .local v6, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Could not run getSingleton method on class "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v16

    throw v16

    .line 134
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v12    # "result":Ljava/lang/Object;
    :cond_6
    :try_start_2
    move-object v0, v12

    check-cast v0, Lcom/j256/ormlite/field/DataPersister;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .restart local v3    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    goto/16 :goto_0

    .line 135
    .end local v3    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    :catch_3
    move-exception v6

    .line 136
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Could not cast result of static getSingleton method to DataPersister from class "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v16

    throw v16

    .line 142
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "persisterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/field/DataPersister;>;"
    .end local v12    # "result":Ljava/lang/Object;
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v3

    .line 143
    .restart local v3    # "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/j256/ormlite/field/DataPersister;->a(Ljava/lang/reflect/Field;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v16, "Field class "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v16, " for field "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v16, " is not valid for type "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {v3}, Lcom/j256/ormlite/field/DataPersister;->f()Ljava/lang/Class;

    move-result-object v11

    .line 149
    .local v11, "primaryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v11, :cond_8

    .line 150
    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, ", maybe should be "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_8
    new-instance v16, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 162
    .end local v11    # "primaryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "defaultFieldName":Ljava/lang/String;
    .restart local v7    # "foreignColumnName":Ljava/lang/String;
    :cond_9
    if-nez v7, :cond_a

    .line 163
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "_id"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    :goto_1
    const-class v16, Lcom/j256/ormlite/dao/ForeignCollection;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 168
    new-instance v16, Ljava/sql/SQLException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\' in class "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\' should use the @"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-class v18, Lcom/j256/ormlite/field/ForeignCollectionField;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " annotation not foreign=true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 165
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 3388
    :cond_b
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->H:Z

    move/from16 v16, v0

    .line 171
    if-eqz v16, :cond_e

    .line 172
    const-class v16, Ljava/util/Collection;

    move-object/from16 v0, v16

    if-eq v2, v0, :cond_c

    const-class v16, Lcom/j256/ormlite/dao/ForeignCollection;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 173
    new-instance v16, Ljava/sql/SQLException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field class for \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\' must be of class "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-class v18, Lcom/j256/ormlite/dao/ForeignCollection;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " or Collection."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 176
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v15

    .line 177
    .local v15, "type":Ljava/lang/reflect/Type;
    instance-of v0, v15, Ljava/lang/reflect/ParameterizedType;

    move/from16 v16, v0

    if-nez v16, :cond_d

    .line 178
    new-instance v16, Ljava/sql/SQLException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field class for \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\' must be a parameterized Collection."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 180
    :cond_d
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .end local v15    # "type":Ljava/lang/reflect/Type;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 181
    .local v8, "genericArguments":[Ljava/lang/reflect/Type;
    array-length v0, v8

    move/from16 v16, v0

    if-nez v16, :cond_11

    .line 183
    new-instance v16, Ljava/sql/SQLException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field class for \'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\' must be a parameterized Collection with at least 1 type."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 186
    .end local v8    # "genericArguments":[Ljava/lang/reflect/Type;
    :cond_e
    if-nez v3, :cond_11

    .line 4388
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->H:Z

    move/from16 v16, v0

    .line 186
    if-nez v16, :cond_11

    .line 187
    const-class v16, [B

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 188
    new-instance v16, Ljava/sql/SQLException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "ORMLite does not know how to store "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " for field \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\'. byte[] fields must specify dataType=DataType.BYTE_ARRAY or SERIALIZABLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 190
    :cond_f
    const-class v16, Ljava/io/Serializable;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 191
    new-instance v16, Ljava/sql/SQLException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "ORMLite does not know how to store "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " for field \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\'.  Use another class, custom persister, or to serialize it use dataType=DataType.SERIALIZABLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 195
    :cond_10
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "ORMLite does not know how to store "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " for field "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ". Use another class or a custom persister."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 5137
    :cond_11
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 199
    if-nez v16, :cond_13

    .line 200
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 204
    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 6210
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->j:Z

    move/from16 v16, v0

    .line 205
    if-eqz v16, :cond_16

    .line 6221
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->k:Z

    move/from16 v16, v0

    .line 206
    if-nez v16, :cond_12

    .line 6232
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->l:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 206
    if-eqz v16, :cond_14

    .line 207
    :cond_12
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Must specify one of id, generatedId, and generatedIdSequence with "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 6137
    :cond_13
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 202
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    goto :goto_2

    .line 210
    :cond_14
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->d:Z

    .line 211
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 212
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->f:Ljava/lang/String;

    .line 238
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/j256/ormlite/field/FieldType;->d:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1a

    .line 9243
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    move/from16 v16, v0

    .line 238
    if-nez v16, :cond_15

    .line 9364
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    move/from16 v16, v0

    .line 238
    if-eqz v16, :cond_1a

    .line 239
    :cond_15
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Id field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " cannot also be a foreign object"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 7221
    :cond_16
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->k:Z

    move/from16 v16, v0

    .line 213
    if-eqz v16, :cond_18

    .line 7232
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->l:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 214
    if-eqz v16, :cond_17

    .line 215
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Must specify one of id, generatedId, and generatedIdSequence with "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 218
    :cond_17
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->d:Z

    .line 219
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 223
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->f:Ljava/lang/String;

    goto :goto_3

    .line 8232
    :cond_18
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->l:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 225
    if-eqz v16, :cond_19

    .line 226
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->d:Z

    .line 227
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 9232
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->l:Ljava/lang/String;

    .line 232
    .local v14, "seqName":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/j256/ormlite/field/FieldType;->f:Ljava/lang/String;

    goto/16 :goto_3

    .line 234
    .end local v14    # "seqName":Ljava/lang/String;
    :cond_19
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->d:Z

    .line 235
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 236
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->f:Ljava/lang/String;

    goto/16 :goto_3

    .line 10266
    :cond_1a
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->n:Z

    move/from16 v16, v0

    .line 241
    if-eqz v16, :cond_1b

    .line 242
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->r:Ljava/lang/reflect/Method;

    .line 243
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->b(Ljava/lang/reflect/Field;Z)Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->s:Ljava/lang/reflect/Method;

    .line 10452
    :goto_4
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->B:Z

    move/from16 v16, v0

    .line 256
    if-eqz v16, :cond_1d

    .line 11221
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->k:Z

    move/from16 v16, v0

    .line 256
    if-nez v16, :cond_1d

    .line 257
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " must be a generated-id if allowGeneratedIdInsert = true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 245
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v16

    if-nez v16, :cond_1c

    .line 247
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4

    .line 253
    :cond_1c
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->r:Ljava/lang/reflect/Method;

    .line 254
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/j256/ormlite/field/FieldType;->s:Ljava/lang/reflect/Method;

    goto :goto_4

    .line 249
    :catch_4
    move-exception v16

    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Could not open access to field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ".  You may have to set useGetSet=true to fix."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 11364
    :cond_1d
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    move/from16 v16, v0

    .line 260
    if-eqz v16, :cond_1e

    .line 12243
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    move/from16 v16, v0

    .line 260
    if-nez v16, :cond_1e

    .line 261
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " must have foreign = true if foreignAutoRefresh = true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 12468
    :cond_1e
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->D:Z

    move/from16 v16, v0

    .line 264
    if-eqz v16, :cond_1f

    .line 13243
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    move/from16 v16, v0

    .line 264
    if-nez v16, :cond_1f

    .line 265
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " must have foreign = true if foreignAutoCreate = true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 13484
    :cond_1f
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->F:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 268
    if-eqz v16, :cond_20

    .line 14243
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    move/from16 v16, v0

    .line 268
    if-nez v16, :cond_20

    .line 269
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " must have foreign = true if foreignColumnName is set"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 14476
    :cond_20
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->E:Z

    move/from16 v16, v0

    .line 272
    if-eqz v16, :cond_22

    if-eqz v3, :cond_21

    invoke-interface {v3}, Lcom/j256/ormlite/field/DataPersister;->p()Z

    move-result v16

    if-nez v16, :cond_22

    .line 273
    :cond_21
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "Field "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " is not a valid type to be a version field"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 276
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/j256/ormlite/field/FieldType;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V

    .line 277
    return-void
.end method

.method public static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;
    .locals 7
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 974
    .local p3, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v6

    .line 975
    .local v6, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {v6, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v4

    .line 976
    .local v4, "fieldConfig":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-nez v4, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 979
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/j256/ormlite/field/FieldType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/field/FieldType;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 6
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1007
    sget-object v3, Lcom/j256/ormlite/field/FieldType;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .line 1008
    .local v2, "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    if-nez v2, :cond_2

    .line 1010
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 22364
    iget-boolean v3, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    .line 1010
    if-nez v3, :cond_1

    .line 1011
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v3

    .line 1054
    :cond_0
    :goto_0
    return-object v3

    .line 1013
    :cond_1
    new-instance v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .end local v2    # "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/j256/ormlite/field/FieldType$LevelCounters;-><init>(B)V

    .line 1014
    .restart local v2    # "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    sget-object v3, Lcom/j256/ormlite/field/FieldType;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1018
    :cond_2
    iget v3, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    if-nez v3, :cond_4

    .line 1020
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 23364
    iget-boolean v3, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    .line 1020
    if-nez v3, :cond_3

    .line 1021
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1023
    :cond_3
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 23372
    iget-boolean v4, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    if-eqz v4, :cond_5

    .line 23373
    iget v3, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    .line 1023
    :goto_1
    iput v3, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->b:I

    .line 1026
    :cond_4
    iget v3, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    iget v4, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->b:I

    if-lt v3, v4, :cond_6

    .line 1027
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 23375
    :cond_5
    const/4 v3, -0x1

    goto :goto_1

    .line 1034
    :cond_6
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->o:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    if-nez v3, :cond_7

    .line 1036
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->p:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->n:Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v4}, Lcom/j256/ormlite/dao/BaseDaoImpl;->g()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->j:Lcom/j256/ormlite/field/FieldType;

    invoke-static {v3, v4, v5}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    move-result-object v0

    .line 1040
    .local v0, "castMappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq<Ljava/lang/Object;Ljava/lang/Object;>;"
    iput-object v0, p0, Lcom/j256/ormlite/field/FieldType;->o:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    .line 1042
    .end local v0    # "castMappedQueryForId":Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;, "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_7
    iget v3, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    .line 1044
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->p:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->q:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/j256/ormlite/support/ConnectionSource;->a(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1047
    .local v1, "databaseConnection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_1
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->o:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    invoke-virtual {v3, v1, p1, p2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->a(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1052
    iget v4, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    .line 1053
    iget v4, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    if-gtz v4, :cond_0

    .line 1054
    sget-object v4, Lcom/j256/ormlite/field/FieldType;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 1049
    :catchall_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1052
    .end local v1    # "databaseConnection":Lcom/j256/ormlite/support/DatabaseConnection;
    :catchall_1
    move-exception v3

    iget v4, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    .line 1053
    iget v4, v2, Lcom/j256/ormlite/field/FieldType$LevelCounters;->a:I

    if-gtz v4, :cond_8

    .line 1054
    sget-object v4, Lcom/j256/ormlite/field/FieldType;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    :cond_8
    throw v3
.end method

.method private b(Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 3
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->l:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1064
    .local v0, "foreignObject":Ljava/lang/Object;
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->j:Lcom/j256/ormlite/field/FieldType;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2, p2}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 1065
    return-object v0
.end method

.method private h(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "fieldValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1073
    if-nez p1, :cond_0

    .line 1074
    const/4 v0, 0x1

    .line 1076
    :goto_0
    return v0

    .line 23939
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 23940
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1076
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 23941
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_3

    .line 23942
    :cond_2
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_1

    .line 23943
    :cond_3
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Character;

    if-ne v0, v1, :cond_5

    .line 23944
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_1

    .line 23945
    :cond_5
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_7

    .line 23946
    :cond_6
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_1

    .line 23947
    :cond_7
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_9

    .line 23948
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 23949
    :cond_9
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_b

    .line 23950
    :cond_a
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1

    .line 23951
    :cond_b
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_d

    .line 23952
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_1

    .line 23953
    :cond_d
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_f

    .line 23954
    :cond_e
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_1

    .line 23956
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/dao/BaseForeignCollection;
    .locals 8
    .param p1, "parent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FT:",
            "Ljava/lang/Object;",
            "FID:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TFID;)",
            "Lcom/j256/ormlite/dao/BaseForeignCollection",
            "<TFT;TFID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 778
    .local p2, "id":Ljava/lang/Object;, "TFID;"
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->m:Lcom/j256/ormlite/field/FieldType;

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    .line 816
    :goto_0
    return-object v0

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->n:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 783
    .local v1, "castDao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TFT;TFID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 17396
    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->I:Z

    .line 783
    if-nez v0, :cond_1

    .line 785
    new-instance v0, Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->m:Lcom/j256/ormlite/field/FieldType;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 17420
    iget-object v5, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->L:Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 17428
    iget-boolean v6, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    move-object v2, p1

    move-object v3, p2

    .line 785
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    goto :goto_0

    .line 790
    :cond_1
    sget-object v0, Lcom/j256/ormlite/field/FieldType;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .line 791
    .local v7, "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    if-nez v7, :cond_3

    .line 792
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 18404
    iget v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->J:I

    .line 792
    if-nez v0, :cond_2

    .line 794
    new-instance v0, Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->m:Lcom/j256/ormlite/field/FieldType;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 18420
    iget-object v5, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->L:Ljava/lang/String;

    .line 794
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 18428
    iget-boolean v6, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    move-object v2, p1

    move-object v3, p2

    .line 794
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    goto :goto_0

    .line 798
    :cond_2
    new-instance v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;

    .end local v7    # "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/j256/ormlite/field/FieldType$LevelCounters;-><init>(B)V

    .line 799
    .restart local v7    # "levelCounters":Lcom/j256/ormlite/field/FieldType$LevelCounters;
    sget-object v0, Lcom/j256/ormlite/field/FieldType;->v:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 802
    :cond_3
    iget v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    if-nez v0, :cond_4

    .line 803
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 19404
    iget v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->J:I

    .line 803
    iput v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->d:I

    .line 806
    :cond_4
    iget v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    iget v2, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->d:I

    if-lt v0, v2, :cond_5

    .line 808
    new-instance v0, Lcom/j256/ormlite/dao/LazyForeignCollection;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->m:Lcom/j256/ormlite/field/FieldType;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 19420
    iget-object v5, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->L:Ljava/lang/String;

    .line 808
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 19428
    iget-boolean v6, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    move-object v2, p1

    move-object v3, p2

    .line 808
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/dao/LazyForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V

    goto :goto_0

    .line 811
    :cond_5
    iget v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    .line 813
    :try_start_0
    new-instance v0, Lcom/j256/ormlite/dao/EagerForeignCollection;

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->m:Lcom/j256/ormlite/field/FieldType;

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 20420
    iget-object v5, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->L:Ljava/lang/String;

    .line 813
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 20428
    iget-boolean v6, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->M:Z

    move-object v2, p1

    move-object v3, p2

    .line 813
    invoke-direct/range {v0 .. v6}, Lcom/j256/ormlite/dao/EagerForeignCollection;-><init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    iget v2, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget v2, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v7, Lcom/j256/ormlite/field/FieldType$LevelCounters;->c:I

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/j256/ormlite/dao/BaseDaoImpl;)Lcom/j256/ormlite/field/FieldType;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;)",
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
    .line 1086
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "foreignClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "foreignDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    iget-object v6, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 24436
    iget-object v2, v6, Lcom/j256/ormlite/field/DatabaseFieldConfig;->N:Ljava/lang/String;

    .line 1087
    .local v2, "foreignColumnName":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/j256/ormlite/dao/BaseDaoImpl;->g()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v6

    .line 25128
    iget-object v0, v6, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 1087
    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 25444
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v6, v1, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 1088
    if-ne v6, p2, :cond_1

    if-eqz v2, :cond_0

    .line 26429
    iget-object v6, v1, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    .line 1088
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1090
    :cond_0
    iget-object v6, v1, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 27243
    iget-boolean v6, v6, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    .line 1090
    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 27364
    iget-boolean v6, v6, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    .line 1090
    if-nez v6, :cond_4

    .line 1092
    new-instance v6, Ljava/sql/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Foreign collection object "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for field \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' contains a field of class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " but it\'s not foreign"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1087
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1099
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1100
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "Foreign collection class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string/jumbo v6, " for field \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' column-name does not contain a foreign field"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    if-eqz v2, :cond_3

    .line 1103
    const-string/jumbo v6, " named \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1105
    :cond_3
    const-string/jumbo v6, " of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    new-instance v6, Ljava/sql/SQLException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1095
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_4
    return-object v1
.end method

.method public final a()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->u:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v0}, Lcom/j256/ormlite/field/FieldConverter;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "columnPositions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 824
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 825
    .local v1, "dbColumnPos":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 826
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/j256/ormlite/support/DatabaseResults;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 827
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->u:Lcom/j256/ormlite/field/FieldConverter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, p1, v4}, Lcom/j256/ormlite/field/FieldConverter;->a(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, "converted":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 21243
    iget-boolean v3, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    .line 842
    if-eqz v3, :cond_2

    .line 848
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/j256/ormlite/support/DatabaseResults;->k(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 860
    .end local v0    # "converted":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return-object v0

    .line 851
    .restart local v0    # "converted":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v3}, Lcom/j256/ormlite/field/DataPersister;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 852
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 21282
    iget-boolean v2, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->p:Z

    .line 852
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseResults;->k(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Results value for primitive field \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' was an invalid null value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 856
    :cond_3
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->u:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v3}, Lcom/j256/ormlite/field/FieldConverter;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/j256/ormlite/support/DatabaseResults;->k(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 858
    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FV:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TFV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->r:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 601
    :try_start_0
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 615
    .local v2, "val":Ljava/lang/Object;
    :goto_0
    move-object v0, v2

    .local v0, "converted":Ljava/lang/Object;, "TFV;"
    return-object v2

    .line 602
    .end local v0    # "converted":Ljava/lang/Object;, "TFV;"
    .end local v2    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not get field value for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3

    .line 607
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->r:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 608
    .end local v2    # "val":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 609
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->r:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v3

    throw v3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Number;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Number;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v1, p2}, Lcom/j256/ormlite/field/DataPersister;->a(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    .line 585
    .local v0, "idVal":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 586
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for sequence-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 589
    return-object v0
.end method

.method public a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/DataPersister;)V
    .locals 10
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1114
    invoke-interface {p1, p2, p0}, Lcom/j256/ormlite/db/DatabaseType;->a(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object p2

    .line 1115
    iput-object p2, p0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    .line 1116
    if-nez p2, :cond_0

    .line 1117
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 28243
    iget-boolean v7, v7, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    .line 1117
    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 28388
    iget-boolean v7, v7, Lcom/j256/ormlite/field/DatabaseFieldConfig;->H:Z

    .line 1117
    if-nez v7, :cond_6

    .line 1119
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Data persister for field "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is null but the field is not a foreign or foreignCollection"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1124
    :cond_0
    invoke-interface {p1, p2, p0}, Lcom/j256/ormlite/db/DatabaseType;->b(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/FieldConverter;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->u:Lcom/j256/ormlite/field/FieldConverter;

    .line 1125
    iget-boolean v7, p0, Lcom/j256/ormlite/field/FieldType;->e:Z

    if-eqz v7, :cond_3

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->e()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1127
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "Generated-id field \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    const-string/jumbo v7, "\' in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    const-string/jumbo v7, " can\'t be type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1130
    const-string/jumbo v7, ".  Must be one of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-static {}, Lcom/j256/ormlite/field/DataType;->values()[Lcom/j256/ormlite/field/DataType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/DataType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 1132
    .local v1, "dataType":Lcom/j256/ormlite/field/DataType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/DataType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v5

    .line 1133
    .local v5, "persister":Lcom/j256/ormlite/field/DataPersister;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/j256/ormlite/field/DataPersister;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1134
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1131
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1137
    .end local v1    # "dataType":Lcom/j256/ormlite/field/DataType;
    .end local v5    # "persister":Lcom/j256/ormlite/field/DataPersister;
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1139
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/DataType;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 29282
    iget-boolean v7, v7, Lcom/j256/ormlite/field/DatabaseFieldConfig;->p:Z

    .line 1139
    if-eqz v7, :cond_4

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->i()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1140
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Field "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " must be a primitive if set with throwIfNull"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1142
    :cond_4
    iget-boolean v7, p0, Lcom/j256/ormlite/field/FieldType;->d:Z

    if-eqz v7, :cond_5

    invoke-interface {p2}, Lcom/j256/ormlite/field/DataPersister;->k()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1143
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Field \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' is of data type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " which cannot be the ID field"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1146
    :cond_5
    invoke-interface {p2, p0}, Lcom/j256/ormlite/field/DataPersister;->a(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->i:Ljava/lang/Object;

    .line 1147
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 30177
    iget-object v2, v7, Lcom/j256/ormlite/field/DatabaseFieldConfig;->g:Ljava/lang/String;

    .line 1148
    .local v2, "defaultStr":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 1149
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->h:Ljava/lang/Object;

    .line 1156
    .end local v2    # "defaultStr":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 1150
    .restart local v2    # "defaultStr":Ljava/lang/String;
    :cond_7
    iget-boolean v7, p0, Lcom/j256/ormlite/field/FieldType;->e:Z

    if-eqz v7, :cond_8

    .line 1151
    new-instance v7, Ljava/sql/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Field \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' cannot be a generatedId and have a default value \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1154
    :cond_8
    iget-object v7, p0, Lcom/j256/ormlite/field/FieldType;->u:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v7, p0, v2}, Lcom/j256/ormlite/field/FieldConverter;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/j256/ormlite/field/FieldType;->h:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "parentObject"    # Z
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 528
    sget-object v4, Lcom/j256/ormlite/field/FieldType;->w:Lcom/j256/ormlite/logger/Logger;

    sget-object v5, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    sget-object v6, Lcom/j256/ormlite/field/FieldType;->w:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v7, "assiging from data {}, val {}: {}"

    if-nez p1, :cond_1

    const-string/jumbo v4, "null"

    move-object v5, v4

    :goto_0
    if-nez p2, :cond_2

    const-string/jumbo v4, "null"

    :goto_1
    invoke-virtual {v6, v7, v5, v4, p2}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    :cond_0
    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->k:Lcom/j256/ormlite/field/FieldType;

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    .line 535
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 541
    .local v3, "foreignRef":Ljava/lang/Object;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 576
    .end local v3    # "foreignRef":Ljava/lang/Object;
    :goto_2
    return-void

    .line 529
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 546
    .restart local v3    # "foreignRef":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->n:Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 15871
    const/4 v2, 0x0

    .line 547
    .local v2, "foreignCache":Lcom/j256/ormlite/dao/ObjectCache;
    if-nez v2, :cond_5

    .line 548
    const/4 v0, 0x0

    .line 552
    :goto_3
    if-eqz v0, :cond_6

    .end local p2    # "val":Ljava/lang/Object;
    .local v0, "val":Ljava/lang/Object;
    move-object p2, v0

    .line 560
    .end local v0    # "val":Ljava/lang/Object;
    .end local v2    # "foreignCache":Lcom/j256/ormlite/dao/ObjectCache;
    .end local v3    # "foreignRef":Ljava/lang/Object;
    .restart local p2    # "val":Ljava/lang/Object;
    :cond_4
    :goto_4
    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->s:Ljava/lang/reflect/Method;

    if-nez v4, :cond_7

    .line 562
    :try_start_0
    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not assign object \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 16444
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "foreignCache":Lcom/j256/ormlite/dao/ObjectCache;
    .restart local v3    # "foreignRef":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 550
    invoke-interface {v2, v4, p2}, Lcom/j256/ormlite/dao/ObjectCache;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "cachedVal":Ljava/lang/Object;
    goto :goto_3

    .line 554
    .end local v0    # "cachedVal":Ljava/lang/Object;
    :cond_6
    if-nez p3, :cond_4

    .line 556
    invoke-direct {p0, p2, p4}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_4

    .line 566
    .end local v2    # "foreignCache":Lcom/j256/ormlite/dao/ObjectCache;
    .end local v3    # "foreignRef":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not assign object \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' to field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4

    .line 572
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/j256/ormlite/field/FieldType;->s:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 573
    :catch_2
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Could not call "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/j256/ormlite/field/FieldType;->s:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " on object with \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v4

    throw v4
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 627
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->k:Lcom/j256/ormlite/field/FieldType;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->k:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, v0}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    :cond_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/field/FieldType;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 15243
    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    .line 520
    return v0
.end method

.method public final d()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 17274
    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->o:Ljava/lang/Enum;

    .line 700
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldVal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    const/4 v0, 0x0

    .line 652
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->u:Lcom/j256/ormlite/field/FieldConverter;

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/field/FieldConverter;->a(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/field/DataPersister;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 17298
    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->r:Ljava/lang/String;

    .line 707
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 985
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 988
    check-cast v0, Lcom/j256/ormlite/field/FieldType;

    .line 989
    .local v0, "other":Lcom/j256/ormlite/field/FieldType;
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    iget-object v3, v0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->t:Ljava/lang/Class;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/j256/ormlite/field/FieldType;->t:Ljava/lang/Class;

    if-nez v2, :cond_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/j256/ormlite/field/FieldType;->t:Ljava/lang/Class;

    iget-object v3, v0, Lcom/j256/ormlite/field/FieldType;->t:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FV:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TFV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 919
    .local v0, "fieldValue":Ljava/lang/Object;, "TFV;"
    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/FieldType;->h(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const/4 v0, 0x0

    .line 922
    .end local v0    # "fieldValue":Ljava/lang/Object;, "TFV;"
    :cond_0
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 719
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->q:Ljava/lang/String;

    .line 17330
    iget-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->u:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->v:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 17331
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->v:Ljava/lang/String;

    .line 17333
    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->v:Ljava/lang/String;

    .line 719
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 723
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->q:Ljava/lang/String;

    .line 17349
    iget-boolean v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->w:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->x:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 17350
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->x:Ljava/lang/String;

    .line 17352
    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->x:Ljava/lang/String;

    .line 723
    return-object v0
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 930
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 931
    .local v0, "fieldValue":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/j256/ormlite/field/FieldType;->h(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 17388
    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->H:Z

    .line 763
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->m()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 21452
    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->B:Z

    .line 874
    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 21468
    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->D:Z

    .line 888
    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 21476
    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->E:Z

    .line 895
    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 21492
    iget-boolean v0, v0, Lcom/j256/ormlite/field/DatabaseFieldConfig;->G:Z

    .line 909
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
