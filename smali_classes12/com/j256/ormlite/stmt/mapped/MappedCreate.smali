.class public Lcom/j256/ormlite/stmt/mapped/MappedCreate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V
    .locals 1
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "queryNextSequenceStmt"    # Ljava/lang/String;
    .param p5, "versionFieldTypeIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 1114
    iget-object v0, p1, Lcom/j256/ormlite/table/TableInfo;->a:Ljava/lang/Class;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->b:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    .line 31
    return-void
.end method

.method public static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .locals 16
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "INSERT INTO "

    .line 7121
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/j256/ormlite/table/TableInfo;->b:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p0

    invoke-static {v0, v15, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v7, 0x0

    .line 145
    .local v7, "argFieldC":I
    const/4 v6, -0x1

    .line 7128
    .local v6, "versionFieldTypeIndex":I
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 147
    .local v9, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_2

    aget-object v10, v9, v12

    .line 148
    .local v10, "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v10}, Lcom/j256/ormlite/field/FieldType;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    move v6, v7

    .line 152
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 147
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 155
    .end local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_2
    new-array v4, v7, [Lcom/j256/ormlite/field/FieldType;

    .line 156
    .local v4, "argFieldTypes":[Lcom/j256/ormlite/field/FieldType;
    if-nez v7, :cond_3

    .line 157
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Lcom/j256/ormlite/db/DatabaseType;->a(Ljava/lang/StringBuilder;)V

    .line 9162
    :goto_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/j256/ormlite/table/TableInfo;->e:Lcom/j256/ormlite/field/FieldType;

    .line 9223
    .local v13, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v13, :cond_9

    .line 9224
    const/4 v5, 0x0

    .line 191
    .local v5, "queryNext":Ljava/lang/String;
    :goto_2
    new-instance v1, Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)V

    return-object v1

    .line 159
    .end local v5    # "queryNext":Ljava/lang/String;
    .end local v13    # "idField":Lcom/j256/ormlite/field/FieldType;
    :cond_3
    const/4 v7, 0x0

    .line 160
    const/4 v11, 0x1

    .line 161
    .local v11, "first":Z
    const/16 v1, 0x28

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8128
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 162
    array-length v14, v9

    const/4 v12, 0x0

    move v8, v7

    .end local v7    # "argFieldC":I
    .local v8, "argFieldC":I
    :goto_3
    if-ge v12, v14, :cond_5

    aget-object v10, v9, v12

    .line 163
    .restart local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 166
    if-eqz v11, :cond_4

    .line 167
    const/4 v11, 0x0

    .line 171
    :goto_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15, v10, v1}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 172
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "argFieldC":I
    .restart local v7    # "argFieldC":I
    aput-object v10, v4, v8

    .line 162
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move v8, v7

    .end local v7    # "argFieldC":I
    .restart local v8    # "argFieldC":I
    goto :goto_3

    .line 169
    :cond_4
    const/16 v1, 0x2c

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 174
    .end local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_5
    const-string/jumbo v1, ") VALUES ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const/4 v11, 0x1

    .line 9128
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 176
    array-length v14, v9

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v14, :cond_8

    aget-object v10, v9, v12

    .line 177
    .restart local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 180
    if-eqz v11, :cond_7

    .line 181
    const/4 v11, 0x0

    .line 185
    :goto_7
    const/16 v1, 0x3f

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 183
    :cond_7
    const/16 v1, 0x2c

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 187
    .end local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_8
    const/16 v1, 0x29

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v8

    .end local v8    # "argFieldC":I
    .restart local v7    # "argFieldC":I
    goto :goto_1

    .line 9516
    .end local v11    # "first":Z
    .restart local v13    # "idField":Lcom/j256/ormlite/field/FieldType;
    :cond_9
    iget-object v1, v13, Lcom/j256/ormlite/field/FieldType;->f:Ljava/lang/String;

    .line 9227
    if-nez v1, :cond_a

    .line 9228
    const/4 v5, 0x0

    goto :goto_2

    .line 9230
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .end local v7    # "argFieldC":I
    .end local v13    # "idField":Lcom/j256/ormlite/field/FieldType;
    .restart local v8    # "argFieldC":I
    .restart local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .restart local v11    # "first":Z
    :cond_b
    move v7, v8

    .end local v8    # "argFieldC":I
    .restart local v7    # "argFieldC":I
    goto :goto_5
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 8
    .param p2, "val"    # Ljava/lang/Number;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
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
    .line 250
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p1, p2, p4}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Ljava/lang/Number;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->d:Lcom/j256/ormlite/logger/Logger;

    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "assigned id \'{}\' from {} to \'{}\' in {} object"

    const/4 v1, 0x4

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v7, v1

    const/4 v1, 0x1

    aput-object p3, v7, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    .line 11437
    iget-object v2, v2, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 252
    aput-object v2, v7, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->b:Ljava/lang/String;

    aput-object v2, v7, v1

    .line 12152
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 2
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10499
    iget-boolean v1, p1, Lcom/j256/ormlite/field/FieldType;->e:Z

    .line 214
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->i()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "foreignCollections"    # [Lcom/j256/ormlite/field/FieldType;
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v3, p0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 196
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1, p1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 197
    const/4 v4, 0x0

    .line 200
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :goto_1
    return v4

    .line 195
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 24
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedCreate;, "Lcom/j256/ormlite/stmt/mapped/MappedCreate<TT;TID;>;"
    .local p3, "data":Ljava/lang/Object;, "TT;"
    const/4 v15, 0x0

    .line 39
    .local v15, "keyHolder":Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/j256/ormlite/field/FieldType;->j()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->g(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 42
    const/4 v8, 0x0

    .line 46
    .local v8, "assignId":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/j256/ormlite/field/FieldType;->i()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    .line 1499
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/j256/ormlite/field/FieldType;->e:Z

    move/from16 v19, v0

    .line 46
    if-eqz v19, :cond_3

    .line 47
    if-eqz v8, :cond_0

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v20, v0

    .line 1902
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/j256/ormlite/field/FieldType;->g:Lcom/j256/ormlite/field/DataPersister;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/j256/ormlite/field/DataPersister;->n()Ljava/lang/Object;

    move-result-object v20

    .line 48
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 66
    .end local v8    # "assignId":Z
    :cond_0
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->e:Lcom/j256/ormlite/table/TableInfo;

    move-object/from16 v19, v0

    .line 3220
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/j256/ormlite/table/TableInfo;->f:Z

    move/from16 v19, v0

    .line 66
    if-eqz v19, :cond_4

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->e:Lcom/j256/ormlite/table/TableInfo;

    move-object/from16 v19, v0

    .line 4128
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/j256/ormlite/table/TableInfo;->c:[Lcom/j256/ormlite/field/FieldType;

    .line 67
    .local v7, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    aget-object v10, v7, v12

    .line 68
    .local v10, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v10}, Lcom/j256/ormlite/field/FieldType;->k()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 72
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 73
    .local v11, "foreignObj":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 4682
    iget-object v0, v10, Lcom/j256/ormlite/field/FieldType;->j:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    .line 73
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/j256/ormlite/field/FieldType;->g(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 4965
    iget-object v0, v10, Lcom/j256/ormlite/field/FieldType;->n:Lcom/j256/ormlite/dao/BaseDaoImpl;

    move-object/from16 v19, v0

    .line 4966
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lcom/j256/ormlite/dao/Dao;->a(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v11    # "foreignObj":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 44
    .end local v7    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v10    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    :cond_2
    const/4 v8, 0x1

    .restart local v8    # "assignId":Z
    goto/16 :goto_0

    .line 50
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/j256/ormlite/field/FieldType;->b()Z

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    .line 2499
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/j256/ormlite/field/FieldType;->e:Z

    move/from16 v19, v0

    .line 54
    if-eqz v19, :cond_0

    .line 55
    if-eqz v8, :cond_0

    .line 57
    new-instance v15, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;

    .end local v15    # "keyHolder":Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;-><init>(B)V

    .restart local v15    # "keyHolder":Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;
    goto :goto_1

    .line 79
    .end local v8    # "assignId":Z
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 80
    .local v6, "args":[Ljava/lang/Object;
    const/16 v17, 0x0

    .line 82
    .local v17, "versionDefaultValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    move/from16 v19, v0

    if-ltz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    move/from16 v19, v0

    aget-object v19, v6, v19

    if-nez v19, :cond_5

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->i:[Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    move/from16 v20, v0

    aget-object v18, v19, v20

    .line 85
    .local v18, "versionFieldType":Lcom/j256/ormlite/field/FieldType;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/j256/ormlite/field/FieldType;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v6, v19
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .end local v17    # "versionDefaultValue":Ljava/lang/Object;
    .end local v18    # "versionFieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->h:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->i:[Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v6, v2, v15}, Lcom/j256/ormlite/support/DatabaseConnection;->a(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    :try_start_3
    sget-object v19, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v20, "insert data with statement \'{}\' and {} args, changed {} rows"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->h:Ljava/lang/String;

    move-object/from16 v21, v0

    array-length v0, v6

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v19 .. v23}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    array-length v0, v6

    move/from16 v19, v0

    if-lez v19, :cond_6

    .line 104
    sget-object v19, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v20, "insert arguments: {}"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_6
    if-eqz v17, :cond_7

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->i:[Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->c:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/j256/ormlite/field/FieldType;->a(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 110
    :cond_7
    if-eqz v15, :cond_b

    .line 5261
    iget-object v14, v15, Lcom/j256/ormlite/stmt/mapped/MappedCreate$KeyHolder;->a:Ljava/lang/Number;

    .line 113
    .local v14, "key":Ljava/lang/Number;
    if-nez v14, :cond_9

    .line 115
    new-instance v19, Ljava/sql/SQLException;

    const-string/jumbo v20, "generated-id key was not set by the update call, maybe a schema mismatch between entity and database table?"

    invoke-direct/range {v19 .. v20}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    .end local v6    # "args":[Ljava/lang/Object;
    .end local v14    # "key":Ljava/lang/Number;
    :catch_0
    move-exception v9

    .line 137
    .local v9, "e":Ljava/sql/SQLException;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Unable to run insert stmt on object "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->h:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v19

    throw v19

    .line 92
    .end local v9    # "e":Ljava/sql/SQLException;
    .restart local v6    # "args":[Ljava/lang/Object;
    :catch_1
    move-exception v9

    .line 93
    .restart local v9    # "e":Ljava/sql/SQLException;
    :try_start_4
    sget-object v19, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v20, "insert data with statement \'{}\' and {} args, threw exception: {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->h:Ljava/lang/String;

    move-object/from16 v21, v0

    array-length v0, v6

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/j256/ormlite/logger/Logger;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    array-length v0, v6

    move/from16 v19, v0

    if-lez v19, :cond_8

    .line 97
    sget-object v19, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v20, "insert arguments: {}"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_8
    throw v9

    .line 118
    .end local v9    # "e":Ljava/sql/SQLException;
    .restart local v14    # "key":Ljava/lang/Number;
    :cond_9
    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_a

    .line 120
    new-instance v19, Ljava/sql/SQLException;

    const-string/jumbo v20, "generated-id key must not be 0 value, maybe a schema mismatch between entity and database table?"

    invoke-direct/range {v19 .. v20}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 123
    :cond_a
    const-string/jumbo v19, "keyholder"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a(Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V

    .line 129
    .end local v14    # "key":Ljava/lang/Number;
    :cond_b
    if-eqz p4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->e:Lcom/j256/ormlite/table/TableInfo;

    move-object/from16 v19, v0

    .line 6227
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/j256/ormlite/table/TableInfo;->d:[Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    .line 129
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->a([Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->g:Lcom/j256/ormlite/field/FieldType;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 131
    .local v13, "id":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->f:Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v13, v2}, Lcom/j256/ormlite/dao/ObjectCache;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    .end local v13    # "id":Ljava/lang/Object;
    :cond_c
    const/16 v19, 0x1

    return v19
.end method
