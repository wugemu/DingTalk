.class public Lgxv;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lgyk;


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final b:Lgxw;

.field private final c:[Lgyi;

.field private final d:[Lgyi;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgyi;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient g:[J

.field private transient h:[I


# direct methods
.method private constructor <init>(Lgyb;Ljava/lang/Class;Lgxw;)V
    .locals 9
    .param p1, "config"    # Lgyb;
    .param p3, "beanInfo"    # Lgxw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgyb;",
            "Ljava/lang/Class",
            "<*>;",
            "Lgxw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lgxv;->a:Ljava/lang/Class;

    .line 42
    iput-object p3, p0, Lgxv;->b:Lgxw;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lgyi;>;"
    iget-object v6, p3, Lgxw;->f:[Lgza;

    array-length v6, v6

    new-array v6, v6, [Lgyi;

    iput-object v6, p0, Lgxv;->d:[Lgyi;

    .line 46
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p3, Lgxw;->f:[Lgza;

    array-length v5, v6

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 47
    iget-object v6, p3, Lgxw;->f:[Lgza;

    aget-object v2, v6, v3

    .line 48
    .local v2, "fieldInfo":Lgza;
    invoke-static {p1, p2, v2}, Lgyb;->a(Lgyb;Ljava/lang/Class;Lgza;)Lgyi;

    move-result-object v1

    .line 50
    .local v1, "fieldDeserializer":Lgyi;
    iget-object v6, p0, Lgxv;->d:[Lgyi;

    aput-object v1, v6, v3

    .line 52
    iget-object v7, v2, Lgza;->m:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v4, v7, v6

    .line 53
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lgyi;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .restart local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lgyi;>;"
    :cond_0
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 46
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "fieldDeserializer":Lgyi;
    .end local v2    # "fieldInfo":Lgza;
    :cond_2
    iput-object v0, p0, Lgxv;->e:Ljava/util/Map;

    .line 61
    iget-object v6, p3, Lgxw;->e:[Lgza;

    array-length v6, v6

    new-array v6, v6, [Lgyi;

    iput-object v6, p0, Lgxv;->c:[Lgyi;

    .line 62
    const/4 v3, 0x0

    iget-object v6, p3, Lgxw;->e:[Lgza;

    array-length v5, v6

    :goto_2
    if-ge v3, v5, :cond_3

    .line 63
    iget-object v6, p3, Lgxw;->e:[Lgza;

    aget-object v2, v6, v3

    .line 64
    .restart local v2    # "fieldInfo":Lgza;
    iget-object v6, v2, Lgza;->a:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v1

    .line 65
    .restart local v1    # "fieldDeserializer":Lgyi;
    iget-object v6, p0, Lgxv;->c:[Lgyi;

    aput-object v1, v6, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 67
    .end local v1    # "fieldDeserializer":Lgyi;
    .end local v2    # "fieldInfo":Lgza;
    :cond_3
    return-void
.end method

.method public constructor <init>(Lgyb;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "config"    # Lgyb;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgyb;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 37
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/4 v3, 0x0

    iget-object v7, p1, Lgyb;->d:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p2

    move-object v2, p3

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lgxw;->a(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lgxw;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lgxv;-><init>(Lgyb;Ljava/lang/Class;Lgxw;)V

    .line 38
    return-void
.end method

.method private a(Lgyb;Lgxw;Ljava/lang/String;)Lgxv;
    .locals 10
    .param p1, "config"    # Lgyb;
    .param p2, "beanInfo"    # Lgxw;
    .param p3, "typeName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1116
    iget-object v6, p2, Lgxw;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v6, :cond_1

    move-object v2, v5

    .line 1137
    :cond_0
    :goto_0
    return-object v2

    .line 1120
    :cond_1
    iget-object v6, p2, Lgxw;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 1121
    .local v0, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v1

    .line 1122
    .local v1, "seeAlsoDeser":Lgyk;
    instance-of v9, v1, Lgxv;

    if-eqz v9, :cond_2

    move-object v2, v1

    .line 1123
    check-cast v2, Lgxv;

    .line 1125
    .local v2, "seeAlsoJavaBeanDeser":Lgxv;
    iget-object v3, v2, Lgxv;->b:Lgxw;

    .line 1126
    .local v3, "subBeanInfo":Lgxw;
    iget-object v9, v3, Lgxw;->j:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1130
    invoke-direct {p0, p1, v3, p3}, Lgxv;->a(Lgyb;Lgxw;Ljava/lang/String;)Lgxv;

    move-result-object v4

    .line 1131
    .local v4, "subSeeAlso":Lgxv;
    if-eqz v4, :cond_2

    move-object v2, v4

    .line 1132
    goto :goto_0

    .line 1120
    .end local v2    # "seeAlsoJavaBeanDeser":Lgxv;
    .end local v3    # "subBeanInfo":Lgxw;
    .end local v4    # "subSeeAlso":Lgxv;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "seeAlsoDeser":Lgyk;
    :cond_3
    move-object v2, v5

    .line 1137
    goto :goto_0
.end method

.method private a(J)Lgyi;
    .locals 5
    .param p1, "fieldHash"    # J

    .prologue
    .line 860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lgxv;->d:[Lgyi;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 861
    iget-object v2, p0, Lgxv;->d:[Lgyi;

    aget-object v0, v2, v1

    .line 862
    .local v0, "fieldDeserializer":Lgyi;
    iget-object v2, v0, Lgyi;->b:Lgza;

    iget-wide v2, v2, Lgza;->l:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 867
    .end local v0    # "fieldDeserializer":Lgyi;
    :goto_1
    return-object v0

    .line 860
    .restart local v0    # "fieldDeserializer":Lgyi;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    .end local v0    # "fieldDeserializer":Lgyi;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .param p1, "parser"    # Lgxr;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p1

    iget-object v15, v0, Lgxr;->e:Lgxt;

    .line 124
    .local v15, "lexer":Lgxt;
    invoke-virtual/range {p0 .. p2}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v18

    .line 126
    .local v18, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->d:[Lgyi;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v21, v0

    .line 127
    .local v21, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v21

    if-ge v12, v0, :cond_2f

    .line 128
    add-int/lit8 v24, v21, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_1

    const/16 v20, 0x5d

    .line 129
    .local v20, "seperator":C
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->d:[Lgyi;

    move-object/from16 v24, v0

    aget-object v10, v24, v12

    .line 130
    .local v10, "fieldDeser":Lgyi;
    iget-object v11, v10, Lgyi;->b:Lgza;

    .line 131
    .local v11, "fieldInfo":Lgza;
    iget-object v9, v11, Lgza;->f:Ljava/lang/Class;

    .line 133
    .local v9, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_7

    .line 134
    invoke-virtual {v15}, Lgxt;->q()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 135
    .local v14, "intValue":I
    iget-boolean v0, v11, Lgza;->d:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 136
    iget-object v0, v11, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 141
    :goto_2
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x2c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 142
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 143
    .local v13, "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_3

    const/16 v24, 0x1a

    .line 145
    :goto_3
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 146
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    .line 127
    .end local v13    # "index":I
    .end local v14    # "intValue":I
    :cond_0
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 128
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lgyi;
    .end local v11    # "fieldInfo":Lgza;
    .end local v20    # "seperator":C
    :cond_1
    const/16 v20, 0x2c

    goto :goto_1

    .line 138
    .restart local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldDeser":Lgyi;
    .restart local v11    # "fieldInfo":Lgza;
    .restart local v14    # "intValue":I
    .restart local v20    # "seperator":C
    :cond_2
    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 323
    .end local v14    # "intValue":I
    :catch_0
    move-exception v6

    .line 324
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "set "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Lgza;->a:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "error"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 143
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .restart local v13    # "index":I
    .restart local v14    # "intValue":I
    :cond_3
    :try_start_1
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 145
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_3

    .line 147
    .end local v13    # "index":I
    :cond_4
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 148
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 149
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_5

    const/16 v24, 0x1a

    .line 151
    :goto_5
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 152
    const/16 v24, 0xf

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto :goto_4

    .line 149
    :cond_5
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 151
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_5

    .line 154
    .end local v13    # "index":I
    :cond_6
    invoke-virtual {v15}, Lgxt;->e()V

    goto/16 :goto_4

    .line 156
    .end local v14    # "intValue":I
    :cond_7
    const-class v24, Ljava/lang/String;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_10

    .line 158
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x22

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 159
    const/16 v24, 0x22

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lgxt;->b(C)Ljava/lang/String;

    move-result-object v22

    .line 174
    .local v22, "strVal":Ljava/lang/String;
    :goto_6
    iget-boolean v0, v11, Lgza;->d:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 175
    iget-object v0, v11, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    :goto_7
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x2c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 181
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 182
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_c

    const/16 v24, 0x1a

    .line 184
    :goto_8
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 185
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 160
    .end local v13    # "index":I
    .end local v22    # "strVal":Ljava/lang/String;
    :cond_8
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x6e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "null"

    iget v0, v15, Lgxt;->e:I

    move/from16 v26, v0

    .line 161
    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 162
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    iput v0, v15, Lgxt;->e:I

    .line 164
    iget v13, v15, Lgxt;->e:I

    .line 165
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    iget v0, v15, Lgxt;->q:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    const/16 v24, 0x1a

    .line 167
    :goto_9
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 169
    const/16 v22, 0x0

    .restart local v22    # "strVal":Ljava/lang/String;
    goto :goto_6

    .line 165
    .end local v22    # "strVal":Ljava/lang/String;
    :cond_9
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 167
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_9

    .line 171
    .end local v13    # "index":I
    :cond_a
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "not match string. feild : "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 177
    .restart local v22    # "strVal":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 182
    .restart local v13    # "index":I
    :cond_c
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 184
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto/16 :goto_8

    .line 186
    .end local v13    # "index":I
    :cond_d
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 187
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 188
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_e

    const/16 v24, 0x1a

    .line 190
    :goto_a
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 191
    const/16 v24, 0xf

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 188
    :cond_e
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 190
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_a

    .line 193
    .end local v13    # "index":I
    :cond_f
    invoke-virtual {v15}, Lgxt;->e()V

    goto/16 :goto_4

    .line 195
    .end local v22    # "strVal":Ljava/lang/String;
    :cond_10
    sget-object v24, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_16

    .line 196
    invoke-virtual {v15}, Lgxt;->q()J

    move-result-wide v16

    .line 197
    .local v16, "longValue":J
    iget-boolean v0, v11, Lgza;->d:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 198
    iget-object v0, v11, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 203
    :goto_b
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x2c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 204
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 205
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_12

    const/16 v24, 0x1a

    .line 207
    :goto_c
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 208
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 200
    .end local v13    # "index":I
    :cond_11
    new-instance v24, Ljava/lang/Long;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 205
    .restart local v13    # "index":I
    :cond_12
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 207
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_c

    .line 209
    .end local v13    # "index":I
    :cond_13
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 210
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 211
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_14

    const/16 v24, 0x1a

    .line 213
    :goto_d
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 214
    const/16 v24, 0xf

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 211
    :cond_14
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 213
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_d

    .line 216
    .end local v13    # "index":I
    :cond_15
    invoke-virtual {v15}, Lgxt;->e()V

    goto/16 :goto_4

    .line 218
    .end local v16    # "longValue":J
    :cond_16
    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_1c

    .line 219
    invoke-virtual {v15}, Lgxt;->o()Z

    move-result v4

    .line 220
    .local v4, "booleanValue":Z
    iget-boolean v0, v11, Lgza;->d:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 221
    iget-object v0, v11, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 226
    :goto_e
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x2c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 227
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 228
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_18

    const/16 v24, 0x1a

    .line 230
    :goto_f
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 231
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 223
    .end local v13    # "index":I
    :cond_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 228
    .restart local v13    # "index":I
    :cond_18
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 230
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_f

    .line 232
    .end local v13    # "index":I
    :cond_19
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 233
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 234
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_1a

    const/16 v24, 0x1a

    .line 236
    :goto_10
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 237
    const/16 v24, 0xf

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 234
    :cond_1a
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 236
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_10

    .line 239
    .end local v13    # "index":I
    :cond_1b
    invoke-virtual {v15}, Lgxt;->e()V

    goto/16 :goto_4

    .line 241
    .end local v4    # "booleanValue":Z
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v24

    if-eqz v24, :cond_24

    .line 242
    iget-char v5, v15, Lgxt;->d:C

    .line 244
    .local v5, "ch":C
    const/16 v24, 0x22

    move/from16 v0, v24

    if-ne v5, v0, :cond_1e

    .line 245
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->a:Lgyd;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lgxt;->a(Lgyd;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "enumName":Ljava/lang/String;
    if-nez v8, :cond_1d

    const/16 v23, 0x0

    .line 258
    .end local v8    # "enumName":Ljava/lang/String;
    .local v23, "value":Ljava/lang/Enum;
    :goto_11
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x2c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    .line 261
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 262
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_20

    const/16 v24, 0x1a

    .line 264
    :goto_12
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 265
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 248
    .end local v13    # "index":I
    .end local v23    # "value":Ljava/lang/Enum;
    .restart local v8    # "enumName":Ljava/lang/String;
    :cond_1d
    invoke-static {v9, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v23

    goto :goto_11

    .line 249
    .end local v8    # "enumName":Ljava/lang/String;
    :cond_1e
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v5, v0, :cond_1f

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v5, v0, :cond_1f

    .line 250
    invoke-virtual {v15}, Lgxt;->q()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v19, v0

    .line 252
    .local v19, "ordinal":I
    move-object v0, v10

    check-cast v0, Lgxq;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lgxq;->a(Lgyb;)Lgyk;

    move-result-object v7

    check-cast v7, Lgxs;

    .line 253
    .local v7, "enumDeser":Lgxs;
    iget-object v0, v7, Lgxs;->b:[Ljava/lang/Enum;

    move-object/from16 v24, v0

    aget-object v23, v24, v19

    .line 254
    .restart local v23    # "value":Ljava/lang/Enum;
    goto :goto_11

    .line 255
    .end local v7    # "enumDeser":Lgxs;
    .end local v19    # "ordinal":I
    .end local v23    # "value":Ljava/lang/Enum;
    :cond_1f
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "illegal enum."

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgxt;->g()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 262
    .restart local v13    # "index":I
    .restart local v23    # "value":Ljava/lang/Enum;
    :cond_20
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 264
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_12

    .line 266
    .end local v13    # "index":I
    :cond_21
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_23

    .line 267
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 268
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_22

    const/16 v24, 0x1a

    .line 270
    :goto_13
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 271
    const/16 v24, 0xf

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 268
    :cond_22
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 270
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_13

    .line 273
    .end local v13    # "index":I
    :cond_23
    invoke-virtual {v15}, Lgxt;->e()V

    goto/16 :goto_4

    .line 275
    .end local v5    # "ch":C
    .end local v23    # "value":Ljava/lang/Enum;
    :cond_24
    const-class v24, Ljava/util/Date;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_29

    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x31

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_29

    .line 276
    invoke-virtual {v15}, Lgxt;->q()J

    move-result-wide v16

    .line 277
    .restart local v16    # "longValue":J
    new-instance v24, Ljava/util/Date;

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x2c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    .line 280
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 281
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_25

    const/16 v24, 0x1a

    .line 283
    :goto_14
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 284
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 281
    :cond_25
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 283
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_14

    .line 285
    .end local v13    # "index":I
    :cond_26
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_28

    .line 286
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 287
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_27

    const/16 v24, 0x1a

    .line 289
    :goto_15
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 290
    const/16 v24, 0xf

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto/16 :goto_4

    .line 287
    :cond_27
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 289
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_15

    .line 292
    .end local v13    # "index":I
    :cond_28
    invoke-virtual {v15}, Lgxt;->e()V

    goto/16 :goto_4

    .line 295
    .end local v16    # "longValue":J
    :cond_29
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x5b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2b

    .line 296
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 297
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_2a

    const/16 v24, 0x1a

    .line 299
    :goto_16
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 300
    const/16 v24, 0xe

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    .line 311
    .end local v13    # "index":I
    :goto_17
    iget-object v0, v11, Lgza;->g:Ljava/lang/reflect/Type;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Lgyi;->a(Lgxr;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 313
    const/16 v24, 0x5d

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e

    .line 314
    iget v0, v15, Lgxt;->a:I

    move/from16 v24, v0

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 315
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v25, "syntax error"

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 297
    .restart local v13    # "index":I
    :cond_2a
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 299
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_16

    .line 301
    .end local v13    # "index":I
    :cond_2b
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x7b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2d

    .line 302
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 303
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_2c

    const/16 v24, 0x1a

    .line 305
    :goto_18
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 306
    const/16 v24, 0xc

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    goto :goto_17

    .line 303
    :cond_2c
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 305
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_18

    .line 308
    .end local v13    # "index":I
    :cond_2d
    invoke-virtual {v15}, Lgxt;->e()V

    goto :goto_17

    .line 317
    :cond_2e
    const/16 v24, 0x2c

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 318
    iget v0, v15, Lgxt;->a:I

    move/from16 v24, v0

    const/16 v25, 0x10

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v25, "syntax error"

    invoke-direct/range {v24 .. v25}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lgyi;
    .end local v11    # "fieldInfo":Lgza;
    .end local v20    # "seperator":C
    :cond_2f
    iget-char v0, v15, Lgxt;->d:C

    move/from16 v24, v0

    const/16 v25, 0x2c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_31

    .line 329
    iget v0, v15, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v13, v24, 0x1

    iput v13, v15, Lgxt;->e:I

    .line 330
    .restart local v13    # "index":I
    iget v0, v15, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v13, v0, :cond_30

    const/16 v24, 0x1a

    .line 332
    :goto_19
    move/from16 v0, v24

    iput-char v0, v15, Lgxt;->d:C

    .line 333
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Lgxt;->a:I

    .line 338
    .end local v13    # "index":I
    :goto_1a
    return-object v18

    .line 330
    .restart local v13    # "index":I
    :cond_30
    iget-object v0, v15, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 332
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_19

    .line 335
    .end local v13    # "index":I
    :cond_31
    invoke-virtual {v15}, Lgxt;->e()V

    goto :goto_1a
.end method

.method private a(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 59
    .param p1, "parser"    # Lgxr;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 343
    const-class v4, Lgxk;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 3362
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 850
    :goto_0
    return-object v56

    .line 347
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v39, v0

    .line 349
    .local v39, "lexer":Lgxt;
    move-object/from16 v0, v39

    iget v0, v0, Lgxt;->a:I

    move/from16 v52, v0

    .line 350
    .local v52, "token":I
    const/16 v4, 0x8

    move/from16 v0, v52

    if-ne v0, v4, :cond_2

    .line 351
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(I)V

    .line 352
    const/16 v56, 0x0

    goto :goto_0

    .line 355
    :cond_2
    move-object/from16 v0, v39

    iget-boolean v14, v0, Lgxt;->s:Z

    .line 357
    .local v14, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lgxr;->f:Lgya;

    .line 361
    .local v12, "context":Lgya;
    const/4 v11, 0x0

    .line 364
    .local v11, "childContext":Lgya;
    const/4 v9, 0x0

    .line 366
    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xd

    move/from16 v0, v52

    if-ne v0, v4, :cond_3

    .line 367
    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(I)V

    .line 369
    invoke-virtual/range {p0 .. p2}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 855
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    move-object/from16 v56, p4

    .line 371
    goto :goto_0

    .line 374
    :cond_3
    const/16 v4, 0xe

    move/from16 v0, v52

    if-ne v0, v4, :cond_6

    .line 375
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->b:Lgxw;

    iget-boolean v4, v4, Lgxw;->i:Z

    if-nez v4, :cond_4

    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->c:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    :cond_4
    const/16 v37, 0x1

    .line 377
    .local v37, "isSupportArrayToBean":Z
    :goto_1
    if-eqz v37, :cond_6

    .line 378
    invoke-direct/range {p0 .. p3}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v56

    .line 855
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    goto :goto_0

    .line 375
    .end local v37    # "isSupportArrayToBean":Z
    :cond_5
    const/16 v37, 0x0

    goto :goto_1

    .line 382
    :cond_6
    const/16 v4, 0xc

    move/from16 v0, v52

    if-eq v0, v4, :cond_b

    const/16 v4, 0x10

    move/from16 v0, v52

    if-eq v0, v4, :cond_b

    .line 383
    :try_start_2
    invoke-virtual/range {v39 .. v39}, Lgxt;->l()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 855
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    .line 384
    const/16 v56, 0x0

    goto/16 :goto_0

    .line 387
    :cond_7
    const/4 v4, 0x4

    move/from16 v0, v52

    if-ne v0, v4, :cond_8

    .line 388
    :try_start_3
    invoke-virtual/range {v39 .. v39}, Lgxt;->k()Ljava/lang/String;

    move-result-object v51

    .line 389
    .local v51, "strVal":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 390
    invoke-virtual/range {v39 .. v39}, Lgxt;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 855
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    .line 391
    const/16 v56, 0x0

    goto/16 :goto_0

    .line 395
    .end local v51    # "strVal":Ljava/lang/String;
    :cond_8
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "syntax error, expect {, actual "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {v39 .. v39}, Lgxt;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 399
    .local v10, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 400
    const-string/jumbo v4, ", fieldName "

    .line 401
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 402
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 405
    :cond_9
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 852
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v11, :cond_a

    .line 853
    move-object/from16 v0, p4

    iput-object v0, v11, Lgya;->a:Ljava/lang/Object;

    .line 855
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    .line 856
    throw v4

    .line 408
    :cond_b
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lgxr;->g:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lgxr;->g:I

    .line 412
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->b:Lgxw;

    iget-object v0, v4, Lgxw;->k:Ljava/lang/String;

    move-object/from16 v53, v0

    .line 413
    .local v53, "typeKey":Ljava/lang/String;
    const-wide/16 v42, 0x0

    .line 415
    .local v42, "matchFieldHash":J
    const/16 v26, 0x0

    .local v26, "fieldIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->d:[Lgyi;

    array-length v0, v4

    move/from16 v50, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v50, "size":I
    move-object/from16 v33, v9

    .line 416
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v33, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    :goto_3
    const/4 v6, 0x0

    .line 417
    .local v6, "key":Ljava/lang/String;
    const/16 v22, 0x0

    .line 418
    .local v22, "fieldDeser":Lgyi;
    const/16 v27, 0x0

    .line 419
    .local v27, "fieldInfo":Lgza;
    const/16 v21, 0x0

    .line 421
    .local v21, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v4, 0x0

    cmp-long v4, v42, v4

    if-eqz v4, :cond_f

    .line 422
    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lgxv;->a(J)Lgyi;

    move-result-object v22

    .line 423
    if-eqz v22, :cond_e

    .line 424
    move-object/from16 v0, v22

    iget-object v0, v0, Lgyi;->b:Lgza;

    move-object/from16 v27, v0

    .line 425
    move-object/from16 v0, v27

    iget-object v0, v0, Lgza;->f:Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 427
    :cond_e
    const-wide/16 v42, 0x0

    .line 430
    :cond_f
    if-nez v22, :cond_11

    .line 431
    move/from16 v0, v26

    move/from16 v1, v50

    if-ge v0, v1, :cond_10

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->d:[Lgyi;

    aget-object v22, v4, v26

    .line 433
    move-object/from16 v0, v22

    iget-object v0, v0, Lgyi;->b:Lgza;

    move-object/from16 v27, v0

    .line 434
    move-object/from16 v0, v27

    iget-object v0, v0, Lgza;->f:Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 437
    :cond_10
    add-int/lit8 v26, v26, 0x1

    .line 441
    :cond_11
    const/16 v41, 0x0

    .line 442
    .local v41, "matchField":Z
    const/16 v58, 0x0

    .line 444
    .local v58, "valueParsed":Z
    const/16 v28, 0x0

    .line 445
    .local v28, "fieldValue":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 446
    .local v32, "fieldValueInt":I
    const-wide/16 v34, 0x0

    .line 447
    .local v34, "fieldValueLong":J
    const/16 v29, 0x0

    .line 448
    .local v29, "fieldValueFloat":F
    const-wide/16 v30, 0x0

    .line 449
    .local v30, "fieldValueDouble":D
    if-eqz v22, :cond_13

    .line 450
    move-object/from16 v0, v27

    iget-wide v0, v0, Lgza;->l:J

    move-wide/from16 v24, v0

    .line 451
    .local v24, "fieldHashCode":J
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_12

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_17

    .line 453
    :cond_12
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->b(J)I

    move-result v32

    .line 455
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_16

    .line 456
    const/16 v41, 0x1

    .line 457
    const/16 v58, 0x1

    .line 595
    .end local v24    # "fieldHashCode":J
    .end local v28    # "fieldValue":Ljava/lang/Object;
    :cond_13
    :goto_4
    if-nez v41, :cond_4a

    .line 596
    move-object/from16 v0, p1

    iget-object v4, v0, Lgxr;->a:Lgyd;

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(Lgyd;)Ljava/lang/String;

    move-result-object v6

    .line 598
    if-nez v6, :cond_35

    .line 599
    move-object/from16 v0, v39

    iget v0, v0, Lgxt;->a:I

    move/from16 v52, v0

    .line 600
    const/16 v4, 0xd

    move/from16 v0, v52

    if-ne v0, v4, :cond_34

    .line 601
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v9, v33

    .line 799
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_5
    if-nez p4, :cond_70

    .line 800
    if-nez v9, :cond_69

    .line 801
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 802
    if-nez v11, :cond_14

    .line 803
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 852
    :cond_14
    if-eqz v11, :cond_15

    .line 853
    move-object/from16 v0, p4

    iput-object v0, v11, Lgya;->a:Ljava/lang/Object;

    .line 855
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    move-object/from16 v56, p4

    .line 805
    goto/16 :goto_0

    .line 458
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "fieldHashCode":J
    .restart local v28    # "fieldValue":Ljava/lang/Object;
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_16
    :try_start_8
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 459
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 460
    goto/16 :goto_3

    .line 462
    :cond_17
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_18

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1a

    .line 464
    :cond_18
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->d(J)J

    move-result-wide v34

    .line 466
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_19

    .line 467
    const/16 v41, 0x1

    .line 468
    const/16 v58, 0x1

    goto :goto_4

    .line 469
    :cond_19
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 470
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 471
    goto/16 :goto_3

    .line 473
    :cond_1a
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1c

    .line 474
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->e(J)Ljava/lang/String;

    move-result-object v28

    .line 476
    .local v28, "fieldValue":Ljava/lang/String;
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_1b

    .line 477
    const/16 v41, 0x1

    .line 478
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 479
    :cond_1b
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 480
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 481
    goto/16 :goto_3

    .line 483
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_1c
    const-class v4, Ljava/util/Date;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1e

    .line 484
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->f(J)Ljava/util/Date;

    move-result-object v28

    .line 486
    .local v28, "fieldValue":Ljava/util/Date;
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_1d

    .line 487
    const/16 v41, 0x1

    .line 488
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 489
    :cond_1d
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 490
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 491
    goto/16 :goto_3

    .line 493
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_1e
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_1f

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_21

    .line 495
    :cond_1f
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->g(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 497
    .local v28, "fieldValue":Ljava/lang/Boolean;
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_20

    .line 498
    const/16 v41, 0x1

    .line 499
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 500
    :cond_20
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 501
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 502
    goto/16 :goto_3

    .line 504
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_21
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_22

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_24

    .line 505
    :cond_22
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->h(J)F

    move-result v29

    .line 507
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_23

    .line 508
    const/16 v41, 0x1

    .line 509
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 510
    :cond_23
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 511
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 512
    goto/16 :goto_3

    .line 514
    :cond_24
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_25

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_27

    .line 515
    :cond_25
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->k(J)D

    move-result-wide v30

    .line 517
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_26

    .line 518
    const/16 v41, 0x1

    .line 519
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 520
    :cond_26
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 521
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 522
    goto/16 :goto_3

    .line 524
    :cond_27
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lgza;->j:Z

    if-eqz v4, :cond_29

    move-object/from16 v0, p1

    iget-object v4, v0, Lgxr;->b:Lgyb;

    .line 525
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v4

    instance-of v4, v4, Lgxs;

    if-eqz v4, :cond_29

    .line 527
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->n(J)J

    move-result-wide v18

    .line 529
    .local v18, "enumNameHashCode":J
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_28

    .line 530
    const/16 v41, 0x1

    .line 531
    const/16 v58, 0x1

    .line 533
    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lgyi;->a(J)Ljava/lang/Enum;

    move-result-object v28

    .local v28, "fieldValue":Ljava/lang/Enum;
    goto/16 :goto_4

    .line 534
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_28
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 535
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 536
    goto/16 :goto_3

    .line 538
    .end local v18    # "enumNameHashCode":J
    :cond_29
    const-class v4, [I

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_2b

    .line 539
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->c(J)[I

    move-result-object v28

    .line 541
    .local v28, "fieldValue":[I
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_2a

    .line 542
    const/16 v41, 0x1

    .line 543
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 544
    :cond_2a
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 545
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 546
    goto/16 :goto_3

    .line 548
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_2b
    const-class v4, [F

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_2d

    .line 549
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->i(J)[F

    move-result-object v28

    .line 551
    .local v28, "fieldValue":[F
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_2c

    .line 552
    const/16 v41, 0x1

    .line 553
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 554
    :cond_2c
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 555
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 556
    goto/16 :goto_3

    .line 558
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_2d
    const-class v4, [D

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_2f

    .line 559
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->l(J)[D

    move-result-object v28

    .line 561
    .local v28, "fieldValue":[D
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_2e

    .line 562
    const/16 v41, 0x1

    .line 563
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 564
    :cond_2e
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 565
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 566
    goto/16 :goto_3

    .line 568
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_2f
    const-class v4, [[F

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_31

    .line 569
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->j(J)[[F

    move-result-object v28

    .line 571
    .local v28, "fieldValue":[[F
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_30

    .line 572
    const/16 v41, 0x1

    .line 573
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 574
    :cond_30
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 575
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 576
    goto/16 :goto_3

    .line 578
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_31
    const-class v4, [[D

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_33

    .line 579
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lgxt;->m(J)[[D

    move-result-object v28

    .line 581
    .local v28, "fieldValue":[[D
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    if-lez v4, :cond_32

    .line 582
    const/16 v41, 0x1

    .line 583
    const/16 v58, 0x1

    goto/16 :goto_4

    .line 584
    :cond_32
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_13

    .line 585
    move-object/from16 v0, v39

    iget-wide v0, v0, Lgxt;->t:J

    move-wide/from16 v42, v0

    .line 586
    goto/16 :goto_3

    .line 588
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_33
    move-object/from16 v0, v27

    iget-wide v4, v0, Lgza;->l:J

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lgxt;->a(J)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 589
    const/16 v41, 0x1

    goto/16 :goto_4

    .line 604
    .end local v24    # "fieldHashCode":J
    .end local v28    # "fieldValue":Ljava/lang/Object;
    :cond_34
    const/16 v4, 0x10

    move/from16 v0, v52

    if-eq v0, v4, :cond_d

    .line 609
    :cond_35
    const-string/jumbo v4, "$ref"

    if-ne v4, v6, :cond_3f

    if-eqz v12, :cond_3f

    .line 610
    const/16 v4, 0x3a

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(C)V

    .line 611
    move-object/from16 v0, v39

    iget v0, v0, Lgxt;->a:I

    move/from16 v52, v0

    .line 612
    const/4 v4, 0x4

    move/from16 v0, v52

    if-ne v0, v4, :cond_3c

    .line 613
    invoke-virtual/range {v39 .. v39}, Lgxt;->k()Ljava/lang/String;

    move-result-object v48

    .line 614
    .local v48, "ref":Ljava/lang/String;
    const-string/jumbo v4, "@"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 615
    iget-object v0, v12, Lgya;->a:Ljava/lang/Object;

    move-object/from16 p4, v0

    .line 644
    :goto_6
    const/16 v4, 0xd

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(I)V

    .line 645
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3d

    .line 646
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 852
    .end local v29    # "fieldValueFloat":F
    .end local v30    # "fieldValueDouble":D
    .end local v32    # "fieldValueInt":I
    .end local v34    # "fieldValueLong":J
    .end local v41    # "matchField":Z
    .end local v48    # "ref":Ljava/lang/String;
    .end local v58    # "valueParsed":Z
    :catchall_1
    move-exception v4

    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 616
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v29    # "fieldValueFloat":F
    .restart local v30    # "fieldValueDouble":D
    .restart local v32    # "fieldValueInt":I
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v34    # "fieldValueLong":J
    .restart local v41    # "matchField":Z
    .restart local v48    # "ref":Ljava/lang/String;
    .restart local v58    # "valueParsed":Z
    :cond_36
    const-string/jumbo v4, ".."

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 617
    iget-object v0, v12, Lgya;->b:Lgya;

    move-object/from16 v47, v0

    .line 618
    .local v47, "parentContext":Lgya;
    move-object/from16 v0, v47

    iget-object v4, v0, Lgya;->a:Ljava/lang/Object;

    if-eqz v4, :cond_37

    .line 619
    move-object/from16 v0, v47

    iget-object v0, v0, Lgya;->a:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_6

    .line 621
    :cond_37
    new-instance v4, Lgxr$a;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-direct {v4, v0, v1}, Lgxr$a;-><init>(Lgya;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lgxr;->a(Lgxr$a;)V

    .line 622
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lgxr;->g:I

    goto :goto_6

    .line 624
    .end local v47    # "parentContext":Lgya;
    :cond_38
    const-string/jumbo v4, "$"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 625
    move-object/from16 v49, v12

    .line 626
    .local v49, "rootContext":Lgya;
    :goto_7
    move-object/from16 v0, v49

    iget-object v4, v0, Lgya;->b:Lgya;

    if-eqz v4, :cond_39

    .line 627
    move-object/from16 v0, v49

    iget-object v0, v0, Lgya;->b:Lgya;

    move-object/from16 v49, v0

    goto :goto_7

    .line 630
    :cond_39
    move-object/from16 v0, v49

    iget-object v4, v0, Lgya;->a:Ljava/lang/Object;

    if-eqz v4, :cond_3a

    .line 631
    move-object/from16 v0, v49

    iget-object v0, v0, Lgya;->a:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_6

    .line 633
    :cond_3a
    new-instance v4, Lgxr$a;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v4, v0, v1}, Lgxr$a;-><init>(Lgya;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lgxr;->a(Lgxr$a;)V

    .line 634
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lgxr;->g:I

    goto/16 :goto_6

    .line 637
    .end local v49    # "rootContext":Lgya;
    :cond_3b
    new-instance v4, Lgxr$a;

    move-object/from16 v0, v48

    invoke-direct {v4, v12, v0}, Lgxr$a;-><init>(Lgya;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lgxr;->a(Lgxr$a;)V

    .line 638
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lgxr;->g:I

    goto/16 :goto_6

    .line 641
    .end local v48    # "ref":Ljava/lang/String;
    :cond_3c
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "illegal ref, "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v52 .. v52}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 648
    .restart local v48    # "ref":Ljava/lang/String;
    :cond_3d
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(I)V

    .line 650
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 852
    if-eqz v11, :cond_3e

    .line 853
    move-object/from16 v0, p4

    iput-object v0, v11, Lgya;->a:Ljava/lang/Object;

    .line 855
    :cond_3e
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    move-object/from16 v56, p4

    .line 652
    goto/16 :goto_0

    .line 656
    .end local v48    # "ref":Ljava/lang/String;
    :cond_3f
    if-eqz v53, :cond_40

    :try_start_9
    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    :cond_40
    const-string/jumbo v4, "@type"

    if-ne v4, v6, :cond_4a

    .line 658
    :cond_41
    const/16 v4, 0x3a

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(C)V

    .line 659
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_49

    .line 660
    invoke-virtual/range {v39 .. v39}, Lgxt;->k()Ljava/lang/String;

    move-result-object v55

    .line 661
    .local v55, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(I)V

    .line 663
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_42

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 664
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_d

    .line 665
    invoke-virtual/range {v39 .. v39}, Lgxt;->e()V

    move-object/from16 v9, v33

    .line 666
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_5

    .line 671
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_42
    move-object/from16 v0, p1

    iget-object v4, v0, Lgxr;->b:Lgyb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgxv;->b:Lgxw;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v5, v1}, Lgxv;->a(Lgyb;Lgxw;Ljava/lang/String;)Lgxv;

    move-result-object v13

    .line 672
    .local v13, "deserizer":Lgyk;
    const/16 v57, 0x0

    .line 673
    .local v57, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_44

    .line 674
    move-object/from16 v0, p1

    iget-object v4, v0, Lgxr;->b:Lgyb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lgxv;->a:Ljava/lang/Class;

    move-object/from16 v0, v39

    iget v7, v0, Lgxt;->c:I

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5, v7}, Lgyb;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v57

    .line 676
    invoke-static/range {p2 .. p2}, Lgzd;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v20

    .line 677
    .local v20, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v20, :cond_43

    if-eqz v57, :cond_47

    .line 678
    move-object/from16 v0, v20

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 679
    :cond_43
    move-object/from16 v0, p1

    iget-object v4, v0, Lgxr;->b:Lgyb;

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v13

    .line 686
    .end local v20    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_44
    instance-of v4, v13, Lgxv;

    if-eqz v4, :cond_48

    .line 687
    move-object v0, v13

    check-cast v0, Lgxv;

    move-object/from16 v38, v0

    .line 688
    .local v38, "javaBeanDeserializer":Lgxv;
    const/4 v4, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    move-object/from16 v2, v57

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 689
    .local v56, "typedObject":Ljava/lang/Object;
    if-eqz v53, :cond_45

    .line 690
    move-object/from16 v0, v38

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v54

    .line 691
    .local v54, "typeKeyFieldDeser":Lgyi;
    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 852
    .end local v38    # "javaBeanDeserializer":Lgxv;
    .end local v54    # "typeKeyFieldDeser":Lgyi;
    :cond_45
    :goto_8
    if-eqz v11, :cond_46

    .line 853
    move-object/from16 v0, p4

    iput-object v0, v11, Lgya;->a:Ljava/lang/Object;

    .line 855
    :cond_46
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    goto/16 :goto_0

    .line 681
    .end local v56    # "typedObject":Ljava/lang/Object;
    .restart local v20    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_47
    :try_start_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "type not match"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 694
    .end local v20    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_48
    move-object/from16 v0, p1

    move-object/from16 v1, v57

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .restart local v56    # "typedObject":Ljava/lang/Object;
    goto :goto_8

    .line 698
    .end local v13    # "deserizer":Lgyk;
    .end local v55    # "typeName":Ljava/lang/String;
    .end local v56    # "typedObject":Ljava/lang/Object;
    .end local v57    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_4a
    if-nez p4, :cond_74

    if-nez v33, :cond_74

    .line 704
    invoke-virtual/range {p0 .. p2}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 705
    if-nez p4, :cond_73

    .line 706
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->c:[Lgyi;

    array-length v4, v4

    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 708
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_9
    if-nez v14, :cond_4b

    .line 709
    :try_start_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    move-result-object v11

    .line 713
    :cond_4b
    :goto_a
    if-eqz v41, :cond_64

    .line 714
    if-nez v58, :cond_4d

    .line 715
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lgyi;->a(Lgxr;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 781
    :cond_4c
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_72

    .line 785
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_66

    .line 786
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lgxt;->a(I)V

    goto/16 :goto_5

    .line 717
    :cond_4d
    if-nez p4, :cond_56

    .line 718
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_4e

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_50

    .line 719
    :cond_4e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 727
    :cond_4f
    :goto_b
    move-object/from16 v0, v27

    iget-object v4, v0, Lgza;->a:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    :goto_c
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->o:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4c

    goto/16 :goto_5

    .line 720
    :cond_50
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_51

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_52

    .line 721
    :cond_51
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .local v28, "fieldValue":Ljava/lang/Long;
    goto :goto_b

    .line 722
    .end local v28    # "fieldValue":Ljava/lang/Long;
    :cond_52
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_53

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_54

    .line 723
    :cond_53
    new-instance v28, Ljava/lang/Float;

    invoke-direct/range {v28 .. v29}, Ljava/lang/Float;-><init>(F)V

    .local v28, "fieldValue":Ljava/lang/Float;
    goto :goto_b

    .line 724
    .end local v28    # "fieldValue":Ljava/lang/Float;
    :cond_54
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_55

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_4f

    .line 725
    :cond_55
    new-instance v28, Ljava/lang/Double;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .local v28, "fieldValue":Ljava/lang/Double;
    goto :goto_b

    .line 728
    .end local v28    # "fieldValue":Ljava/lang/Double;
    :cond_56
    if-nez v28, :cond_63

    .line 730
    :try_start_c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_57

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_59

    .line 731
    :cond_57
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lgza;->d:Z

    if-eqz v4, :cond_58

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_58

    .line 4081
    move-object/from16 v0, v22

    iget-object v4, v0, Lgyi;->b:Lgza;

    iget-object v4, v4, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p4

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_c

    .line 757
    :catch_0
    move-exception v17

    .line 758
    .local v17, "ex":Ljava/lang/IllegalAccessException;
    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "set property error, "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget-object v7, v0, Lgza;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 734
    .end local v17    # "ex":Ljava/lang/IllegalAccessException;
    :cond_58
    :try_start_e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 736
    :cond_59
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_5a

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5c

    .line 737
    :cond_5a
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lgza;->d:Z

    if-eqz v4, :cond_5b

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5b

    .line 4085
    move-object/from16 v0, v22

    iget-object v4, v0, Lgyi;->b:Lgza;

    iget-object v4, v4, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p4

    move-wide/from16 v1, v34

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_c

    .line 740
    :cond_5b
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 742
    :cond_5c
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_5d

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5f

    .line 743
    :cond_5d
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lgza;->d:Z

    if-eqz v4, :cond_5e

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5e

    .line 4089
    move-object/from16 v0, v22

    iget-object v4, v0, Lgyi;->b:Lgza;

    iget-object v4, v4, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p4

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_c

    .line 746
    :cond_5e
    new-instance v4, Ljava/lang/Float;

    move/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 748
    :cond_5f
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_60

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_62

    .line 749
    :cond_60
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lgza;->d:Z

    if-eqz v4, :cond_61

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_61

    .line 4093
    move-object/from16 v0, v22

    iget-object v4, v0, Lgyi;->b:Lgza;

    iget-object v4, v4, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v0, p4

    move-wide/from16 v1, v30

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_c

    .line 752
    :cond_61
    new-instance v4, Ljava/lang/Double;

    move-wide/from16 v0, v30

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 755
    :cond_62
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_c

    .line 761
    :cond_63
    :try_start_f
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_64
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    .line 768
    invoke-direct/range {v4 .. v9}, Lgxv;->a(Lgxr;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v40

    .line 769
    .local v40, "match":Z
    if-nez v40, :cond_65

    .line 770
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_72

    .line 771
    invoke-virtual/range {v39 .. v39}, Lgxt;->e()V

    goto/16 :goto_5

    .line 776
    :cond_65
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_4c

    .line 777
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 790
    .end local v40    # "match":Z
    :cond_66
    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_67

    move-object/from16 v0, v39

    iget v4, v0, Lgxt;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_68

    .line 791
    :cond_67
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "syntax error, unexpect token "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    iget v7, v0, Lgxt;->a:I

    invoke-static {v7}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_68
    move-object/from16 v33, v9

    .line 797
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 808
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->b:Lgxw;

    iget-object v0, v4, Lgxw;->m:[Ljava/lang/String;

    move-object/from16 v45, v0

    .line 809
    .local v45, "paramNames":[Ljava/lang/String;
    if-eqz v45, :cond_6b

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v50, v0

    .line 810
    :goto_d
    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    .line 811
    .local v46, "params":[Ljava/lang/Object;
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_e
    move/from16 v0, v36

    move/from16 v1, v50

    if-ge v0, v1, :cond_6d

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->c:[Lgyi;

    aget-object v4, v4, v36

    iget-object v0, v4, Lgyi;->b:Lgza;

    move-object/from16 v27, v0

    .line 814
    if-eqz v45, :cond_6c

    .line 815
    move-object/from16 v0, v27

    iget-object v4, v0, Lgza;->a:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 819
    .local v44, "param":Ljava/lang/Object;
    :goto_f
    if-nez v44, :cond_6a

    .line 820
    move-object/from16 v0, v27

    iget-object v4, v0, Lgza;->f:Ljava/lang/Class;

    invoke-static {v4}, Lgzd;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v44

    .line 822
    :cond_6a
    aput-object v44, v46, v36

    .line 811
    add-int/lit8 v36, v36, 0x1

    goto :goto_e

    .line 809
    .end local v36    # "i":I
    .end local v44    # "param":Ljava/lang/Object;
    .end local v46    # "params":[Ljava/lang/Object;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->c:[Lgyi;

    array-length v0, v4

    move/from16 v50, v0

    goto :goto_d

    .line 817
    .restart local v36    # "i":I
    .restart local v46    # "params":[Ljava/lang/Object;
    :cond_6c
    move-object/from16 v0, v27

    iget-object v4, v0, Lgza;->a:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .restart local v44    # "param":Ljava/lang/Object;
    goto :goto_f

    .line 825
    .end local v44    # "param":Ljava/lang/Object;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->b:Lgxw;

    iget-object v4, v4, Lgxw;->c:Ljava/lang/reflect/Constructor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v4, :cond_6f

    .line 827
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->b:Lgxw;

    iget-object v4, v4, Lgxw;->c:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object p4

    .line 833
    if-eqz v45, :cond_70

    .line 834
    :try_start_11
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6e
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 835
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v23

    .line 836
    .local v23, "fieldDeserializer":Lgyi;
    if-eqz v23, :cond_6e

    .line 837
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    .line 828
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "fieldDeserializer":Lgyi;
    :catch_1
    move-exception v15

    .line 829
    .local v15, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "create instance error, "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->b:Lgxw;

    iget-object v7, v7, Lgxw;->c:Ljava/lang/reflect/Constructor;

    .line 830
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 841
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_6f
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->b:Lgxw;

    iget-object v4, v4, Lgxw;->d:Ljava/lang/reflect/Method;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_70

    .line 843
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lgxv;->b:Lgxw;

    iget-object v4, v4, Lgxw;->d:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object p4

    .line 852
    .end local v36    # "i":I
    .end local v45    # "paramNames":[Ljava/lang/String;
    .end local v46    # "params":[Ljava/lang/Object;
    :cond_70
    if-eqz v11, :cond_71

    .line 853
    move-object/from16 v0, p4

    iput-object v0, v11, Lgya;->a:Ljava/lang/Object;

    .line 855
    :cond_71
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgxr;->a(Lgya;)V

    move-object/from16 v56, p4

    .line 850
    goto/16 :goto_0

    .line 844
    .restart local v36    # "i":I
    .restart local v45    # "paramNames":[Ljava/lang/String;
    .restart local v46    # "params":[Ljava/lang/Object;
    :catch_2
    move-exception v15

    .line 845
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_13
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "create factory method error, "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->b:Lgxw;

    iget-object v7, v7, Lgxw;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .end local v15    # "e":Ljava/lang/Exception;
    .end local v36    # "i":I
    .end local v45    # "paramNames":[Ljava/lang/String;
    .end local v46    # "params":[Ljava/lang/Object;
    :cond_72
    move-object/from16 v33, v9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    :cond_73
    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_74
    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_a
.end method

.method private a(Lgxr;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Lgxr;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 1016
    iget-object v3, p1, Lgxr;->e:Lgxt;

    .line 1017
    .local v3, "lexer":Lgxt;
    iget-object v5, p1, Lgxr;->e:Lgxt;

    iget v5, v5, Lgxt;->c:I

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    .line 1018
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setter not found, class "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lgxv;->a:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", property "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1021
    :cond_0
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Lgxt;->a(C)V

    .line 1022
    const/4 v4, 0x0

    .line 1023
    .local v4, "type":Ljava/lang/reflect/Type;
    iget-object v2, p1, Lgxr;->h:Ljava/util/List;

    .line 1024
    .local v2, "extraTypeProviders":Ljava/util/List;, "Ljava/util/List<Lgyh;>;"
    if-eqz v2, :cond_1

    .line 1025
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyh;

    .line 1026
    .local v1, "extraProvider":Lgyh;
    invoke-interface {v1}, Lgyh;->a()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1027
    goto :goto_0

    .line 1030
    .end local v1    # "extraProvider":Lgyh;
    :cond_1
    if-nez v4, :cond_3

    .line 4362
    invoke-virtual {p1, v7}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :goto_1
    instance-of v5, p2, Lgyf;

    if-eqz v5, :cond_4

    .line 1046
    :cond_2
    return-void

    .line 4659
    :cond_3
    invoke-virtual {p1, v4, v7}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1040
    :cond_4
    iget-object v0, p1, Lgxr;->i:Ljava/util/List;

    .line 1041
    .local v0, "extraProcessors":Ljava/util/List;, "Ljava/util/List<Lgyg;>;"
    if-eqz v0, :cond_2

    .line 1042
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2
.end method

.method private a(Lgxr;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 34
    .param p1, "parser"    # Lgxr;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxr;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 916
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v26, v0

    .line 918
    .local v26, "lexer":Lgxt;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v19

    .line 920
    .local v19, "fieldDeserializer":Lgyi;
    if-nez v19, :cond_6

    .line 921
    invoke-static/range {p2 .. p2}, Lgzd;->c(Ljava/lang/String;)J

    move-result-wide v32

    .line 922
    .local v32, "smartKeyHash":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->g:[J

    if-nez v7, :cond_1

    .line 923
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->d:[Lgyi;

    array-length v7, v7

    new-array v0, v7, [J

    move-object/from16 v23, v0

    .line 924
    .local v23, "hashArray":[J
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->d:[Lgyi;

    array-length v7, v7

    move/from16 v0, v24

    if-ge v0, v7, :cond_0

    .line 925
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->d:[Lgyi;

    aget-object v7, v7, v24

    iget-object v7, v7, Lgyi;->b:Lgza;

    iget-object v7, v7, Lgza;->a:Ljava/lang/String;

    invoke-static {v7}, Lgzd;->c(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v23, v24

    .line 924
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 927
    :cond_0
    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->sort([J)V

    .line 928
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lgxv;->g:[J

    .line 933
    .end local v23    # "hashArray":[J
    .end local v24    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->g:[J

    move-wide/from16 v0, v32

    invoke-static {v7, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v30

    .line 934
    .local v30, "pos":I
    const/16 v25, 0x0

    .line 935
    .local v25, "is":Z
    if-gez v30, :cond_2

    const-string/jumbo v7, "is"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 936
    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgzd;->c(Ljava/lang/String;)J

    move-result-wide v32

    .line 937
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->g:[J

    move-wide/from16 v0, v32

    invoke-static {v7, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v30

    .line 940
    :cond_2
    if-ltz v30, :cond_6

    .line 941
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->h:[I

    if-nez v7, :cond_5

    .line 942
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->g:[J

    array-length v7, v7

    new-array v0, v7, [I

    move-object/from16 v27, v0

    .line 943
    .local v27, "mapping":[I
    const/4 v7, -0x1

    move-object/from16 v0, v27

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    .line 944
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->d:[Lgyi;

    array-length v7, v7

    move/from16 v0, v24

    if-ge v0, v7, :cond_4

    .line 945
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->g:[J

    move-object/from16 v0, p0

    iget-object v8, v0, Lgxv;->d:[Lgyi;

    aget-object v8, v8, v24

    iget-object v8, v8, Lgyi;->b:Lgza;

    iget-object v8, v8, Lgza;->a:Ljava/lang/String;

    .line 946
    invoke-static {v8}, Lgzd;->c(Ljava/lang/String;)J

    move-result-wide v8

    .line 945
    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v29

    .line 947
    .local v29, "p":I
    if-ltz v29, :cond_3

    .line 948
    aput v24, v27, v29

    .line 944
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 951
    .end local v29    # "p":I
    :cond_4
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lgxv;->h:[I

    .line 954
    .end local v24    # "i":I
    .end local v27    # "mapping":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->h:[I

    aget v15, v7, v30

    .line 955
    .local v15, "deserIndex":I
    const/4 v7, -0x1

    if-eq v15, v7, :cond_6

    .line 956
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->d:[Lgyi;

    aget-object v19, v7, v15

    .line 957
    move-object/from16 v0, v19

    iget-object v7, v0, Lgyi;->b:Lgza;

    iget-object v0, v7, Lgza;->f:Ljava/lang/Class;

    move-object/from16 v18, v0

    .line 958
    .local v18, "fieldClass":Ljava/lang/Class;
    if-eqz v25, :cond_6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v0, v7, :cond_6

    const-class v7, Ljava/lang/Boolean;

    move-object/from16 v0, v18

    if-eq v0, v7, :cond_6

    .line 959
    const/16 v19, 0x0

    .line 965
    .end local v15    # "deserIndex":I
    .end local v18    # "fieldClass":Ljava/lang/Class;
    .end local v25    # "is":Z
    .end local v30    # "pos":I
    .end local v32    # "smartKeyHash":J
    :cond_6
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v7, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v28, v0

    .line 966
    .local v28, "mask":I
    if-nez v19, :cond_c

    move-object/from16 v0, p1

    iget-object v7, v0, Lgxr;->e:Lgxt;

    iget v7, v7, Lgxt;->c:I

    and-int v7, v7, v28

    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->b:Lgxw;

    iget v7, v7, Lgxw;->l:I

    and-int v7, v7, v28

    if-eqz v7, :cond_c

    .line 969
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->f:Ljava/util/concurrent/ConcurrentMap;

    if-nez v7, :cond_b

    .line 970
    new-instance v17, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v7, 0x1

    const/high16 v8, 0x3f400000    # 0.75f

    const/4 v9, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 971
    .local v17, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxv;->a:Ljava/lang/Class;

    .local v14, "c":Ljava/lang/Class;
    :goto_2
    if-eqz v14, :cond_a

    const-class v7, Ljava/lang/Object;

    if-eq v14, v7, :cond_a

    .line 972
    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v22

    .line 973
    .local v22, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, v22

    array-length v8, v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_9

    aget-object v11, v22, v7

    .line 974
    .local v11, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v21

    .line 975
    .local v21, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v9

    if-nez v9, :cond_8

    .line 978
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v20

    .line 979
    .local v20, "fieldModifiers":I
    and-int/lit8 v9, v20, 0x10

    if-nez v9, :cond_8

    and-int/lit8 v9, v20, 0x8

    if-nez v9, :cond_8

    .line 982
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .end local v20    # "fieldModifiers":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 971
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v21    # "fieldName":Ljava/lang/String;
    :cond_9
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    goto :goto_2

    .line 985
    .end local v22    # "fields":[Ljava/lang/reflect/Field;
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lgxv;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 988
    .end local v14    # "c":Ljava/lang/Class;
    .end local v17    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->f:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 989
    .local v16, "deserOrField":Ljava/lang/Object;
    if-eqz v16, :cond_c

    .line 990
    move-object/from16 v0, v16

    instance-of v7, v0, Lgyi;

    if-eqz v7, :cond_d

    move-object/from16 v19, v16

    .line 991
    check-cast v19, Lgyi;

    .line 1002
    .end local v16    # "deserOrField":Ljava/lang/Object;
    :cond_c
    :goto_4
    if-nez v19, :cond_e

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lgxv;->a(Lgxr;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    const/4 v7, 0x0

    .line 1012
    :goto_5
    return v7

    .restart local v16    # "deserOrField":Ljava/lang/Object;
    :cond_d
    move-object/from16 v11, v16

    .line 993
    check-cast v11, Ljava/lang/reflect/Field;

    .line 994
    .restart local v11    # "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 995
    new-instance v6, Lgza;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p2

    invoke-direct/range {v6 .. v13}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 996
    .local v6, "fieldInfo":Lgza;
    new-instance v19, Lgxq;

    .end local v19    # "fieldDeserializer":Lgyi;
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->a:Ljava/lang/Class;

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v6}, Lgxq;-><init>(Ljava/lang/Class;Lgza;)V

    .line 997
    .restart local v19    # "fieldDeserializer":Lgyi;
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxv;->f:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1008
    .end local v6    # "fieldInfo":Lgza;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "deserOrField":Ljava/lang/Object;
    :cond_e
    const/16 v7, 0x3a

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lgxt;->a(C)V

    .line 1010
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lgyi;->a(Lgxr;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1012
    const/4 v7, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lgyi;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 872
    if-nez p1, :cond_1

    move-object v1, v7

    .line 909
    :cond_0
    :goto_0
    return-object v1

    .line 876
    :cond_1
    iget-object v8, p0, Lgxv;->b:Lgxw;

    iget-boolean v8, v8, Lgxw;->h:Z

    if-eqz v8, :cond_3

    .line 877
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lgxv;->d:[Lgyi;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 878
    iget-object v8, p0, Lgxv;->d:[Lgyi;

    aget-object v1, v8, v4

    .line 879
    .local v1, "fieldDeserializer":Lgyi;
    iget-object v8, v1, Lgyi;->b:Lgza;

    iget-object v8, v8, Lgza;->a:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 877
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "fieldDeserializer":Lgyi;
    :cond_2
    move-object v1, v7

    .line 883
    goto :goto_0

    .line 886
    .end local v4    # "i":I
    :cond_3
    const/4 v5, 0x0

    .line 887
    .local v5, "low":I
    iget-object v8, p0, Lgxv;->d:[Lgyi;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 889
    .local v3, "high":I
    :goto_2
    if-gt v5, v3, :cond_6

    .line 890
    add-int v8, v5, v3

    ushr-int/lit8 v6, v8, 0x1

    .line 892
    .local v6, "mid":I
    iget-object v8, p0, Lgxv;->d:[Lgyi;

    aget-object v8, v8, v6

    iget-object v8, v8, Lgyi;->b:Lgza;

    iget-object v2, v8, Lgza;->a:Ljava/lang/String;

    .line 894
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 896
    .local v0, "cmp":I
    if-gez v0, :cond_4

    .line 897
    add-int/lit8 v5, v6, 0x1

    goto :goto_2

    .line 898
    :cond_4
    if-lez v0, :cond_5

    .line 899
    add-int/lit8 v3, v6, -0x1

    goto :goto_2

    .line 901
    :cond_5
    iget-object v7, p0, Lgxv;->d:[Lgyi;

    aget-object v1, v7, v6

    goto :goto_0

    .line 905
    .end local v0    # "cmp":I
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v6    # "mid":I
    :cond_6
    iget-object v8, p0, Lgxv;->e:Ljava/util/Map;

    if-eqz v8, :cond_7

    .line 906
    iget-object v7, p0, Lgxv;->e:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgyi;

    move-object v1, v7

    goto :goto_0

    :cond_7
    move-object v1, v7

    .line 909
    goto :goto_0
.end method

.method protected final a(Lgxr;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 16
    .param p1, "parser"    # Lgxr;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    move-object/from16 v0, p2

    instance-of v9, v0, Ljava/lang/Class;

    if-eqz v9, :cond_1

    .line 71
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->a:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v1, p2

    .line 72
    check-cast v1, Ljava/lang/Class;

    .line 73
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 74
    .local v5, "loader":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v9, v0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->c:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    .line 75
    .local v7, "ordered":Z
    :goto_0
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 76
    .local v6, "object":Lcom/alibaba/fastjson/JSONObject;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v5, v9, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    .line 114
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    .end local v6    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "ordered":Z
    :goto_1
    return-object v8

    .line 74
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 81
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget-object v9, v9, Lgxw;->a:Ljava/lang/reflect/Constructor;

    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget-object v9, v9, Lgxw;->d:Ljava/lang/reflect/Method;

    if-nez v9, :cond_2

    .line 82
    const/4 v8, 0x0

    goto :goto_1

    .line 85
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget-object v9, v9, Lgxw;->d:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget v9, v9, Lgxw;->b:I

    if-lez v9, :cond_3

    .line 86
    const/4 v8, 0x0

    goto :goto_1

    .line 91
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget-object v2, v9, Lgxw;->a:Ljava/lang/reflect/Constructor;

    .line 92
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget v9, v9, Lgxw;->b:I

    if-nez v9, :cond_6

    .line 93
    if-eqz v2, :cond_5

    .line 94
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 102
    .local v6, "object":Ljava/lang/Object;
    :goto_2
    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-object v9, v0, Lgxr;->e:Lgxt;

    iget v9, v9, Lgxt;->c:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_8

    .line 104
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget-object v10, v9, Lgxw;->e:[Lgza;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_8

    aget-object v4, v10, v9

    .line 105
    .local v4, "fieldInfo":Lgza;
    iget-object v12, v4, Lgza;->f:Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_4

    .line 106
    const-string/jumbo v12, ""

    .line 2360
    iget-object v13, v4, Lgza;->b:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_7

    .line 2361
    iget-object v13, v4, Lgza;->b:Ljava/lang/reflect/Method;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v13, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 96
    .end local v4    # "fieldInfo":Lgza;
    .end local v6    # "object":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxv;->b:Lgxw;

    iget-object v9, v9, Lgxw;->d:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 99
    .end local v6    # "object":Ljava/lang/Object;
    :cond_6
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lgxr;->f:Lgya;

    iget-object v11, v11, Lgya;->a:Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 2365
    .restart local v4    # "fieldInfo":Lgza;
    :cond_7
    iget-object v13, v4, Lgza;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v13, v6, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 110
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "fieldInfo":Lgza;
    .end local v6    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "create instance error, class "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lgxv;->a:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_8
    move-object v8, v6

    .line 114
    goto/16 :goto_1
.end method

.method public final a(Ljava/util/Map;Lgyb;)Ljava/lang/Object;
    .locals 21
    .param p2, "config"    # Lgyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lgyb;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 1054
    .local v12, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->b:Lgxw;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lgxw;->c:Ljava/lang/reflect/Constructor;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 1055
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->a:Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    .line 1057
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1058
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v6

    .line 1059
    .local v6, "fieldDeser":Lgyi;
    if-eqz v6, :cond_0

    .line 1063
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 1064
    .local v17, "value":Ljava/lang/Object;
    iget-object v0, v6, Lgyi;->b:Lgza;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Lgza;->b:Ljava/lang/reflect/Method;

    .line 1065
    .local v11, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_1

    .line 1066
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v18

    const/16 v20, 0x0

    aget-object v14, v18, v20

    .line 1067
    .local v14, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v14, v1}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v17

    .line 1068
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v17, v18, v20

    move-object/from16 v0, v18

    invoke-virtual {v11, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1070
    .end local v14    # "paramType":Ljava/lang/reflect/Type;
    :cond_1
    iget-object v0, v6, Lgyi;->b:Lgza;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v5, v0, Lgza;->c:Ljava/lang/reflect/Field;

    .line 1071
    .local v5, "field":Ljava/lang/reflect/Field;
    iget-object v0, v6, Lgyi;->b:Lgza;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v14, v0, Lgza;->g:Ljava/lang/reflect/Type;

    .line 1072
    .restart local v14    # "paramType":Ljava/lang/reflect/Type;
    iget-object v0, v6, Lgyi;->b:Lgza;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lgza;->k:Ljava/lang/String;

    .line 1074
    .local v9, "format":Ljava/lang/String;
    if-eqz v9, :cond_2

    const-class v18, Ljava/util/Date;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_2

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1076
    :try_start_0
    new-instance v18, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v17, Ljava/lang/String;

    .end local v17    # "value":Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 1084
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v5, v12, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1079
    :catch_0
    move-exception v18

    const/16 v17, 0x0

    .line 1080
    .restart local v17    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 1082
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v14, v1}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v17

    goto :goto_1

    .line 1091
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldDeser":Lgyi;
    .end local v9    # "format":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "paramType":Ljava/lang/reflect/Type;
    .end local v17    # "value":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->b:Lgxw;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lgxw;->e:[Lgza;

    .line 1092
    .local v8, "fieldInfoList":[Lgza;
    array-length v0, v8

    move/from16 v16, v0

    .line 1093
    .local v16, "size":I
    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/Object;

    .line 1094
    .local v15, "params":[Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    .line 1095
    aget-object v7, v8, v10

    .line 1096
    .local v7, "fieldInfo":Lgza;
    iget-object v0, v7, Lgza;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1097
    .local v13, "param":Ljava/lang/Object;
    if-nez v13, :cond_4

    .line 1098
    iget-object v0, v7, Lgza;->f:Ljava/lang/Class;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lgzd;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .line 1100
    :cond_4
    aput-object v13, v15, v10

    .line 1094
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1103
    .end local v7    # "fieldInfo":Lgza;
    .end local v13    # "param":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->b:Lgxw;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lgxw;->c:Ljava/lang/reflect/Constructor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1105
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->b:Lgxw;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lgxw;->c:Ljava/lang/reflect/Constructor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 1112
    .end local v8    # "fieldInfoList":[Lgza;
    .end local v10    # "i":I
    .end local v12    # "object":Ljava/lang/Object;
    .end local v15    # "params":[Ljava/lang/Object;
    .end local v16    # "size":I
    :cond_6
    return-object v12

    .line 1106
    .restart local v8    # "fieldInfoList":[Lgza;
    .restart local v10    # "i":I
    .restart local v12    # "object":Ljava/lang/Object;
    .restart local v15    # "params":[Ljava/lang/Object;
    .restart local v16    # "size":I
    :catch_1
    move-exception v3

    .line 1107
    .local v3, "e":Ljava/lang/Exception;
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "create instance error, "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxv;->b:Lgxw;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lgxw;->c:Ljava/lang/reflect/Constructor;

    move-object/from16 v20, v0

    .line 1108
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
.end method

.method public deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lgxr;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lgxv;->a(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
