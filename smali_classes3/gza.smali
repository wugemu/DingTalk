.class public final Lgza;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lgza;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Field;

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/reflect/Type;

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:Z

.field public final k:Ljava/lang/String;

.field public final l:J

.field public final m:[Ljava/lang/String;

.field public final n:I

.field private o:I

.field private final p:Lcom/alibaba/fastjson/annotation/JSONField;

.field private final q:Lcom/alibaba/fastjson/annotation/JSONField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v5, 0x0

    iput v5, p0, Lgza;->o:I

    .line 53
    iput-object p1, p0, Lgza;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lgza;->h:Ljava/lang/Class;

    .line 55
    iput-object p3, p0, Lgza;->f:Ljava/lang/Class;

    .line 56
    iput-object p4, p0, Lgza;->g:Ljava/lang/reflect/Type;

    .line 57
    const/4 v5, 0x0

    iput-object v5, p0, Lgza;->b:Ljava/lang/reflect/Method;

    .line 58
    iput-object p5, p0, Lgza;->c:Ljava/lang/reflect/Field;

    .line 59
    iput p6, p0, Lgza;->o:I

    .line 60
    iput p7, p0, Lgza;->n:I

    .line 62
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Lgxl;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lgza;->j:Z

    .line 64
    const/4 v5, 0x0

    iput-object v5, p0, Lgza;->p:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 65
    const/4 v5, 0x0

    iput-object v5, p0, Lgza;->q:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 67
    if-eqz p5, :cond_3

    .line 68
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 69
    .local v4, "modifiers":I
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lgza;->b:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lgza;->d:Z

    .line 70
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    iput-boolean v5, p0, Lgza;->e:Z

    .line 75
    .end local v4    # "modifiers":I
    :goto_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lgza;->i:Z

    .line 77
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 78
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    .local v0, "c":C
    int-to-long v6, v0

    xor-long/2addr v2, v6

    .line 81
    const-wide v6, 0x100000001b3L

    mul-long/2addr v2, v6

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 62
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "hashCode":J
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 69
    .restart local v4    # "modifiers":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 72
    .end local v4    # "modifiers":I
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lgza;->d:Z

    .line 73
    const/4 v5, 0x0

    iput-boolean v5, p0, Lgza;->e:Z

    goto :goto_2

    .line 83
    .restart local v1    # "i":I
    .restart local v2    # "hashCode":J
    :cond_4
    iput-wide v2, p0, Lgza;->l:J

    .line 85
    const/4 v5, 0x0

    iput-object v5, p0, Lgza;->k:Ljava/lang/String;

    .line 86
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lgza;->m:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "fieldGenericSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgza;->o:I

    .line 99
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->a:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->b:Ljava/lang/reflect/Method;

    .line 101
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->c:Ljava/lang/reflect/Field;

    .line 102
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lgza;->o:I

    .line 103
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->q:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 104
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->p:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 105
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lgza;->n:I

    .line 107
    invoke-virtual/range {p0 .. p0}, Lgza;->a()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    .line 108
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v8, 0x0

    .line 109
    .local v8, "format":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 110
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_0

    .line 113
    const/4 v8, 0x0

    .line 116
    :cond_0
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->m:[Ljava/lang/String;

    .line 120
    :goto_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lgza;->k:Ljava/lang/String;

    .line 122
    if-eqz p3, :cond_5

    .line 123
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    .line 124
    .local v14, "modifiers":I
    if-eqz p2, :cond_1

    and-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    :cond_1
    const/16 v22, 0x1

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->d:Z

    .line 125
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->e:Z

    .line 131
    .end local v14    # "modifiers":I
    :goto_3
    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 132
    .local v10, "hashCode":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 134
    .local v4, "c":C
    int-to-long v0, v4

    move-wide/from16 v22, v0

    xor-long v10, v10, v22

    .line 135
    const-wide v22, 0x100000001b3L

    mul-long v10, v10, v22

    .line 132
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 118
    .end local v4    # "c":C
    .end local v10    # "hashCode":J
    .end local v12    # "i":I
    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->m:[Ljava/lang/String;

    goto :goto_0

    .line 124
    .restart local v14    # "modifiers":I
    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    .line 125
    :cond_4
    const/16 v22, 0x0

    goto :goto_2

    .line 127
    .end local v14    # "modifiers":I
    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->d:Z

    .line 128
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->e:Z

    goto :goto_3

    .line 137
    .restart local v10    # "hashCode":J
    .restart local v12    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iput-wide v10, v0, Lgza;->l:J

    .line 141
    if-eqz p2, :cond_e

    .line 142
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    .line 143
    .local v17, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 144
    const/16 v22, 0x0

    aget-object v6, v17, v22

    .line 145
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_7

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_7

    .line 147
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-eqz v22, :cond_a

    :cond_7
    move-object v7, v6

    .line 152
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    :goto_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->i:Z

    .line 162
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->h:Ljava/lang/Class;

    .line 177
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_7
    if-eqz p4, :cond_16

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-ne v6, v0, :cond_16

    instance-of v0, v7, Ljava/lang/reflect/TypeVariable;

    move/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v20, v7

    .line 181
    check-cast v20, Ljava/lang/reflect/TypeVariable;

    .line 182
    .local v20, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v9, 0x0

    .line 184
    .local v9, "genericFieldType":Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .line 185
    .local v3, "arguments":[Ljava/lang/reflect/Type;
    move-object/from16 v0, p5

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v18, p5

    .line 186
    check-cast v18, Ljava/lang/reflect/ParameterizedType;

    .line 187
    .local v18, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 190
    .end local v18    # "ptype":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    move-object/from16 v5, p4

    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    if-eqz v5, :cond_12

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lgza;->h:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_12

    .line 191
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v19

    .line 193
    .local v19, "superType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v15, v19

    .line 194
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 195
    .local v15, "p_superType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    .line 196
    .local v16, "p_superType_args":[Ljava/lang/reflect/Type;
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Lgzd;->a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    .line 197
    move-object/from16 v3, v16

    .line 190
    .end local v15    # "p_superType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "p_superType_args":[Ljava/lang/reflect/Type;
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_8

    .line 150
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v19    # "superType":Ljava/lang/reflect/Type;
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    if-eqz p10, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v7, v22, v23

    goto :goto_5

    :cond_b
    move-object v7, v6

    goto :goto_5

    .line 154
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 155
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_d

    .line 158
    if-eqz p10, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 160
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_9
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->i:Z

    goto/16 :goto_6

    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_d
    move-object v7, v6

    .line 158
    goto :goto_9

    .line 164
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_e
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 165
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-nez v22, :cond_f

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_f

    .line 167
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_10

    :cond_f
    move-object v7, v6

    .line 173
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->h:Ljava/lang/Class;

    .line 174
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->i:Z

    goto/16 :goto_7

    .line 170
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_10
    if-eqz p10, :cond_11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    goto :goto_a

    :cond_11
    move-object v7, v6

    goto :goto_a

    .line 201
    .restart local v3    # "arguments":[Ljava/lang/reflect/Type;
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_12
    if-eqz v3, :cond_13

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lgza;->h:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v21

    .line 203
    .local v21, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_b
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_13

    .line 204
    aget-object v22, v21, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 205
    aget-object v9, v3, v13

    .line 212
    .end local v13    # "j":I
    .end local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_13
    if-eqz v9, :cond_16

    .line 213
    invoke-static {v9}, Lgzd;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgza;->f:Ljava/lang/Class;

    .line 214
    move-object/from16 v0, p0

    iput-object v9, v0, Lgza;->g:Ljava/lang/reflect/Type;

    .line 216
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_15

    const-class v22, Lgxl;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_15

    const/16 v22, 0x1

    :goto_c
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->j:Z

    .line 240
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_d
    return-void

    .line 203
    .restart local v3    # "arguments":[Ljava/lang/reflect/Type;
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "j":I
    .restart local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 216
    .end local v13    # "j":I
    .end local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_15
    const/16 v22, 0x0

    goto :goto_c

    .line 221
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_16
    move-object v9, v7

    .line 223
    .restart local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v0, v7, Ljava/lang/Class;

    move/from16 v22, v0

    if-nez v22, :cond_17

    .line 224
    if-eqz p5, :cond_18

    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_e
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v7}, Lgza;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 225
    if-eq v9, v7, :cond_17

    .line 226
    instance-of v0, v9, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 227
    invoke-static {v9}, Lgzd;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 234
    :cond_17
    :goto_f
    move-object/from16 v0, p0

    iput-object v9, v0, Lgza;->g:Ljava/lang/reflect/Type;

    .line 235
    move-object/from16 v0, p0

    iput-object v6, v0, Lgza;->f:Ljava/lang/Class;

    .line 237
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v22

    if-nez v22, :cond_1a

    .line 238
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_1a

    const-class v22, Lgxl;

    .line 239
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_1a

    const/16 v22, 0x1

    :goto_10
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgza;->j:Z

    goto :goto_d

    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_18
    move-object/from16 p5, p4

    .line 224
    goto :goto_e

    .line 228
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :cond_19
    instance-of v0, v9, Ljava/lang/Class;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    .line 229
    invoke-static {v9}, Lgzd;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_f

    .line 239
    :cond_1a
    const/16 v22, 0x0

    goto :goto_10
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 20
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v9, p2

    .line 316
    :goto_0
    return-object v9

    .line 247
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v10, p2

    .line 248
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    .line 249
    .local v10, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 250
    .local v6, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lgza;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 251
    .local v7, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v6, v7, :cond_2

    .line 252
    invoke-static {v7}, Lgzd;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 253
    .local v9, "fieldTypeX":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v9    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v9, p2

    .line 256
    goto :goto_0

    .line 259
    .end local v6    # "componentType":Ljava/lang/reflect/Type;
    .end local v7    # "componentTypeX":Ljava/lang/reflect/Type;
    .end local v10    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    invoke-static/range {p1 .. p1}, Lgzd;->a(Ljava/lang/reflect/Type;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v9, p2

    .line 260
    goto :goto_0

    .line 263
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 264
    invoke-static/range {p1 .. p1}, Lgzd;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 265
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v13}, Lgzd;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    .local v14, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, p2

    .line 266
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 268
    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 269
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v18, v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 270
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object p2, v18, v11

    move-object/from16 v9, p2

    .line 271
    goto :goto_0

    .line 268
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 276
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v15, p2

    .line 277
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 279
    .local v15, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 280
    .local v4, "arguments":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 281
    .local v5, "changed":Z
    const/16 v17, 0x0

    .line 282
    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .line 284
    .local v3, "actualTypes":[Ljava/lang/reflect/Type;
    const/4 v13, 0x0

    .line 285
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v13, p1

    .line 286
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 287
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .line 293
    :cond_7
    :goto_2
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_c

    if-eqz v13, :cond_c

    .line 294
    aget-object v8, v4, v11

    .line 295
    .local v8, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v16, v8

    .line 296
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 298
    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 299
    aget-object v18, v17, v12

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 300
    if-nez v3, :cond_8

    .line 301
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 303
    :cond_8
    aget-object v18, v3, v12

    aput-object v18, v4, v11

    .line 304
    const/4 v5, 0x1

    .line 298
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 288
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 289
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v13

    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 290
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    goto :goto_2

    .line 293
    .restart local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .restart local v11    # "i":I
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 309
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    :cond_c
    if-eqz v5, :cond_d

    .line 310
    new-instance p2, Lgzc;

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 311
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lgzc;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v9, p2

    .line 312
    goto/16 :goto_0

    .end local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v4    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "changed":Z
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_d
    move-object/from16 v9, p2

    .line 316
    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lgza;)I
    .locals 2
    .param p1, "o"    # Lgza;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 324
    iget v0, p0, Lgza;->o:I

    iget v1, p1, Lgza;->o:I

    if-ge v0, v1, :cond_0

    .line 325
    const/4 v0, -0x1

    .line 332
    :goto_0
    return v0

    .line 328
    :cond_0
    iget v0, p0, Lgza;->o:I

    iget v1, p1, Lgza;->o:I

    if-le v0, v1, :cond_1

    .line 329
    const/4 v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lgza;->a:Ljava/lang/String;

    iget-object v1, p1, Lgza;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final a()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lgza;->p:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lgza;->p:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 347
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgza;->q:Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lgza;

    invoke-virtual {p0, p1}, Lgza;->a(Lgza;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lgza;->a:Ljava/lang/String;

    return-object v0
.end method
