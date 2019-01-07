.class public abstract Lcom/j256/ormlite/db/BaseDatabaseType;
.super Ljava/lang/Object;
.source "BaseDatabaseType.java"

# interfaces
.implements Lcom/j256/ormlite/db/DatabaseType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/db/BaseDatabaseType$1;,
        Lcom/j256/ormlite/db/BaseDatabaseType$BooleanNumberFieldConverter;
    }
.end annotation


# static fields
.field protected static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "_id_seq"

    sput-object v0, Lcom/j256/ormlite/db/BaseDatabaseType;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    return-void
.end method


# virtual methods
.method public a(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;
    .locals 0
    .param p1, "defaultPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .prologue
    .line 429
    return-object p1
.end method

.method public a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
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
    .line 561
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
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
            ">;)V"
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
    .local p4, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "statementsBefore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "statementsAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "queriesAfter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x20

    .line 62
    .line 1455
    iget-object v3, p3, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p2, v3}, Lcom/j256/ormlite/db/BaseDatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1459
    iget-object v0, p3, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    .line 1479
    .local v0, "dataPersister":Lcom/j256/ormlite/field/DataPersister;
    iget-object v3, p3, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 2188
    iget v2, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->h:I

    .line 67
    .local v2, "fieldWidth":I
    if-nez v2, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->o()I

    move-result v2

    .line 71
    :cond_0
    sget-object v3, Lcom/j256/ormlite/db/BaseDatabaseType$1;->a:[I

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unknown SQL-type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/j256/ormlite/field/DataPersister;->a()Lcom/j256/ormlite/field/SqlType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :pswitch_0
    invoke-virtual {p0, p2, v2}, Lcom/j256/ormlite/db/BaseDatabaseType;->a(Ljava/lang/StringBuilder;I)V

    .line 145
    :goto_0
    :pswitch_1
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p3}, Lcom/j256/ormlite/field/FieldType;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lcom/j256/ormlite/field/FieldType;->i()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4307
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "GeneratedIdSequence is not supported by database "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2201
    :pswitch_2
    const-string/jumbo v3, "TEXT"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :pswitch_3
    invoke-virtual {p0, p2, p3, v2}, Lcom/j256/ormlite/db/BaseDatabaseType;->b(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    goto :goto_0

    .line 86
    :pswitch_4
    invoke-virtual {p0, p2, p3, v2}, Lcom/j256/ormlite/db/BaseDatabaseType;->a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    goto :goto_0

    .line 2222
    :pswitch_5
    const-string/jumbo v3, "CHAR"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2229
    :pswitch_6
    const-string/jumbo v3, "TINYINT"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2271
    :pswitch_7
    const-string/jumbo v3, "BLOB"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3236
    :pswitch_8
    const-string/jumbo v3, "SMALLINT"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3243
    :pswitch_9
    const-string/jumbo v3, "INTEGER"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lcom/j256/ormlite/db/BaseDatabaseType;->a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V

    goto :goto_0

    .line 3257
    :pswitch_b
    const-string/jumbo v3, "FLOAT"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3264
    :pswitch_c
    const-string/jumbo v3, "DOUBLE PRECISION"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3278
    :pswitch_d
    const-string/jumbo v3, "BLOB"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3285
    :pswitch_e
    const-string/jumbo v3, "NUMERIC"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4194
    :pswitch_f
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "UUID is not supported by this database type"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4499
    :cond_1
    iget-boolean v3, p3, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 153
    if-eqz v3, :cond_5

    invoke-virtual {p3}, Lcom/j256/ormlite/field/FieldType;->i()Z

    move-result v3

    if-nez v3, :cond_5

    .line 154
    invoke-virtual {p0, p2, p3}, Lcom/j256/ormlite/db/BaseDatabaseType;->b(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V

    .line 5499
    :goto_1
    iget-boolean v3, p3, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 160
    if-nez v3, :cond_4

    .line 6475
    iget-object v1, p3, Lcom/j256/ormlite/field/FieldType;->h:Ljava/lang/Object;

    .line 162
    .local v1, "defaultValue":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 163
    const-string/jumbo v3, "DEFAULT "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7730
    iget-object v3, p3, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    invoke-interface {v3}, Lcom/j256/ormlite/field/DataPersister;->g()Z

    move-result v3

    .line 7292
    if-eqz v3, :cond_6

    .line 7293
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/j256/ormlite/db/BaseDatabaseType;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 165
    :goto_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8483
    :cond_2
    iget-object v3, p3, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 9199
    iget-boolean v3, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->i:Z

    .line 167
    if-nez v3, :cond_3

    .line 170
    const-string/jumbo v3, "NOT NULL "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9711
    :cond_3
    iget-object v3, p3, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 10306
    iget-boolean v3, v3, Lcom/j256/ormlite/field/DatabaseFieldConfig;->s:Z

    .line 172
    if-eqz v3, :cond_4

    .line 10583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10584
    const-string/jumbo v4, " UNIQUE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11455
    iget-object v4, p3, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 10585
    invoke-virtual {p0, v3, v4}, Lcom/j256/ormlite/db/BaseDatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 10586
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10587
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v1    # "defaultValue":Ljava/lang/Object;
    :cond_4
    return-void

    .line 5491
    :cond_5
    iget-boolean v3, p3, Lcom/j256/ormlite/field/FieldType;->d:Z

    goto :goto_1

    .line 7295
    .restart local v1    # "defaultValue":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 566
    const-string/jumbo v0, "() VALUES ()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    return-void
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldWidth"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "VARCHAR("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string/jumbo v0, "VARCHAR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .prologue
    .line 250
    const-string/jumbo v0, "BIGINT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .prologue
    .line 208
    const-string/jumbo v0, "TIMESTAMP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "word"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x27

    .line 394
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    return-void
.end method

.method public final a([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V
    .locals 6
    .param p1, "fieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    .local p2, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 339
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 11499
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-boolean v5, v1, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 340
    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->a()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12491
    :cond_0
    iget-boolean v5, v1, Lcom/j256/ormlite/field/FieldType;->d:Z

    .line 342
    if-eqz v5, :cond_1

    .line 343
    if-nez v4, :cond_2

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 345
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "PRIMARY KEY ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13455
    :goto_1
    iget-object v5, v1, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 349
    invoke-virtual {p0, v4, v5}, Lcom/j256/ormlite/db/BaseDatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 339
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 352
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_3
    if-eqz v4, :cond_4

    .line 353
    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_4
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/FieldConverter;
    .locals 0
    .param p1, "dataPersister"    # Lcom/j256/ormlite/field/DataPersister;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .prologue
    .line 435
    return-object p1
.end method

.method protected b(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GeneratedId is not supported by database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p3, "fieldWidth"    # I

    .prologue
    .line 215
    const-string/jumbo v0, "BOOLEAN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    return-void
.end method

.method public b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x60

    .line 399
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 401
    .local v0, "dotPos":I
    if-lez v0, :cond_0

    .line 402
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string/jumbo v1, "`.`"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    return-void

    .line 406
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final b([Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V
    .locals 6
    .param p1, "fieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    .local p2, "additionalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 370
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 13715
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v5, v1, Lcom/j256/ormlite/field/FieldType;->c:Lcom/j256/ormlite/field/DatabaseFieldConfig;

    .line 14314
    iget-boolean v5, v5, Lcom/j256/ormlite/field/DatabaseFieldConfig;->t:Z

    .line 371
    if-eqz v5, :cond_0

    .line 372
    if-nez v4, :cond_1

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 374
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14455
    :goto_1
    iget-object v5, v1, Lcom/j256/ormlite/field/FieldType;->b:Ljava/lang/String;

    .line 378
    invoke-virtual {p0, v4, v5}, Lcom/j256/ormlite/db/BaseDatabaseType;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 370
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 381
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    if-eqz v4, :cond_3

    .line 382
    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_3
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/j256/ormlite/db/BaseDatabaseType;->f()Z

    move-result v0

    return v0
.end method
