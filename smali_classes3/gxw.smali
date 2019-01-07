.class final Lgxw;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/reflect/Method;

.field final e:[Lgza;

.field final f:[Lgza;

.field final g:Lcom/alibaba/fastjson/annotation/JSONType;

.field h:Z

.field final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lgza;[Lgza;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V
    .locals 10
    .param p4, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p5, "fields"    # [Lgza;
    .param p6, "sortedFields"    # [Lgza;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p8, "creatorConstructorParameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lgza;",
            "[",
            "Lgza;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p3, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v6, 0x0

    iput-boolean v6, p0, Lgxw;->h:Z

    .line 48
    iput-object p2, p0, Lgxw;->a:Ljava/lang/reflect/Constructor;

    .line 49
    iput-object p3, p0, Lgxw;->c:Ljava/lang/reflect/Constructor;

    .line 50
    iput-object p4, p0, Lgxw;->d:Ljava/lang/reflect/Method;

    .line 51
    iput-object p5, p0, Lgxw;->e:[Lgza;

    .line 52
    move-object/from16 v0, p7

    iput-object v0, p0, Lgxw;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 54
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    array-length v6, v0

    array-length v7, p5

    if-ne v6, v7, :cond_0

    .line 56
    const/4 v6, 0x0

    iput-object v6, p0, Lgxw;->m:[Ljava/lang/String;

    .line 61
    :goto_0
    const/4 v2, 0x0

    .line 62
    .local v2, "parserFeatures":I
    if-eqz p7, :cond_3

    .line 63
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "typeName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .end local v5    # "typeName":Ljava/lang/String;
    :goto_1
    iput-object v5, p0, Lgxw;->j:Ljava/lang/String;

    .line 66
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "typeKey":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .end local v4    # "typeKey":Ljava/lang/String;
    :goto_2
    iput-object v4, p0, Lgxw;->k:Ljava/lang/String;

    .line 69
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_4

    aget-object v1, v7, v6

    .line 70
    .local v1, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v9, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v2, v9

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 58
    .end local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    .end local v2    # "parserFeatures":I
    :cond_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lgxw;->m:[Ljava/lang/String;

    goto :goto_0

    .line 64
    .restart local v2    # "parserFeatures":I
    .restart local v5    # "typeName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 67
    .end local v5    # "typeName":Ljava/lang/String;
    .restart local v4    # "typeKey":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 73
    .end local v4    # "typeKey":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgxw;->j:Ljava/lang/String;

    .line 74
    const/4 v6, 0x0

    iput-object v6, p0, Lgxw;->k:Ljava/lang/String;

    .line 76
    :cond_4
    iput v2, p0, Lgxw;->l:I

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "supportBeanToArray":Z
    if-eqz p7, :cond_6

    .line 80
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_6

    aget-object v1, v7, v6

    .line 81
    .restart local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v9, :cond_5

    .line 82
    const/4 v3, 0x1

    .line 80
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 86
    .end local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_6
    iput-boolean v3, p0, Lgxw;->i:Z

    .line 88
    move-object/from16 v0, p6

    invoke-direct {p0, p5, v0}, Lgxw;->a([Lgza;[Lgza;)[Lgza;

    move-result-object p6

    .line 89
    invoke-static/range {p5 .. p6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .end local p5    # "fields":[Lgza;
    :goto_5
    iput-object p5, p0, Lgxw;->f:[Lgza;

    .line 91
    if-eqz p2, :cond_8

    .line 92
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    .line 94
    :goto_6
    iput v6, p0, Lgxw;->b:I

    .line 96
    return-void

    .restart local p5    # "fields":[Lgza;
    :cond_7
    move-object/from16 p5, p6

    .line 89
    goto :goto_5

    .line 92
    .end local p5    # "fields":[Lgza;
    :cond_8
    if-eqz p4, :cond_9

    .line 94
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    goto :goto_6
.end method

.method public static a(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lgxw;
    .locals 81
    .param p1, "classModifiers"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldOnly"    # Z
    .param p4, "jsonTypeSupport"    # Z
    .param p5, "jsonFieldSupport"    # Z
    .param p6, "fieldGenericSupport"    # Z
    .param p7, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lgxw;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v19, 0x0

    .line 210
    .local v19, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v56, "fieldList":Ljava/util/List;, "Ljava/util/List<Lgza;>;"
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v44, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v48

    .line 215
    .local v48, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-static/range {p0 .. p0}, Lgzd;->a(Ljava/lang/Class;)Z

    move-result v65

    .line 216
    .local v65, "kotlin":Z
    const/16 v54, 0x0

    .line 217
    .local v54, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move/from16 v0, p1

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_1

    move-object/from16 v0, v48

    array-length v6, v0

    const/4 v13, 0x1

    if-eq v6, v13, :cond_0

    if-nez v65, :cond_1

    .line 219
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v54

    .line 224
    :goto_0
    if-nez v54, :cond_1

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/lit8 v6, p1, 0x8

    if-nez v6, :cond_1

    .line 226
    move-object/from16 v0, v48

    array-length v13, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v13, :cond_1

    aget-object v47, v48, v6

    .line 227
    .local v47, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v47 .. v47}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 228
    .local v76, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v14, 0x0

    aget-object v14, v76, v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 229
    move-object/from16 v54, v47

    .line 237
    .end local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    const/16 v50, 0x0

    .line 238
    .local v50, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v51, 0x0

    .line 239
    .local v51, "creatorConstructorParameters":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 245
    .local v16, "factoryMethod":Ljava/lang/reflect/Method;
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v66, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v46, p0

    .local v46, "cls":Ljava/lang/Class;
    :goto_2
    if-eqz v46, :cond_7

    const-class v6, Ljava/lang/Object;

    move-object/from16 v0, v46

    if-eq v0, v6, :cond_7

    .line 248
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v53

    .line 249
    .local v53, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v53

    array-length v13, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_6

    aget-object v22, v53, v6

    .line 250
    .local v22, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v70

    .line 252
    .local v70, "modifier":I
    and-int/lit8 v14, v70, 0x8

    if-eqz v14, :cond_5

    .line 253
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 254
    if-eqz v16, :cond_3

    .line 255
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "multi-json creator"

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 226
    .end local v16    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v22    # "method":Ljava/lang/reflect/Method;
    .end local v46    # "cls":Ljava/lang/Class;
    .end local v50    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v51    # "creatorConstructorParameters":[Ljava/lang/String;
    .end local v53    # "declaredMethods":[Ljava/lang/reflect/Method;
    .end local v66    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v70    # "modifier":I
    .restart local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 258
    .end local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v16    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v22    # "method":Ljava/lang/reflect/Method;
    .restart local v46    # "cls":Ljava/lang/Class;
    .restart local v50    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v51    # "creatorConstructorParameters":[Ljava/lang/String;
    .restart local v53    # "declaredMethods":[Ljava/lang/reflect/Method;
    .restart local v66    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v70    # "modifier":I
    :cond_3
    move-object/from16 v16, v22

    .line 249
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 263
    :cond_5
    and-int/lit8 v14, v70, 0x2

    if-nez v14, :cond_4

    move/from16 v0, v70

    and-int/lit16 v14, v0, 0x100

    if-nez v14, :cond_4

    and-int/lit8 v14, v70, 0x4

    if-nez v14, :cond_4

    .line 267
    move-object/from16 v0, v66

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 247
    .end local v22    # "method":Ljava/lang/reflect/Method;
    .end local v70    # "modifier":I
    :cond_6
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v46

    goto :goto_2

    .line 271
    .end local v53    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_7
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/reflect/Method;

    move-object/from16 v69, v0

    .line 272
    .local v69, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v66

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v52

    .line 277
    .local v52, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_8

    move/from16 v0, p1

    and-int/lit16 v6, v0, 0x400

    if-eqz v6, :cond_c

    :cond_8
    const/16 v63, 0x1

    .line 279
    .local v63, "isInterfaceOrAbstract":Z
    :goto_5
    if-eqz v54, :cond_9

    if-eqz v63, :cond_25

    .line 280
    :cond_9
    const/16 v50, 0x0

    .line 281
    move-object/from16 v0, v48

    array-length v13, v0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_a

    aget-object v47, v48, v6

    .line 282
    .restart local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v28

    check-cast v28, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 283
    .local v28, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v28, :cond_d

    .line 288
    move-object/from16 v50, v47

    .line 293
    .end local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_a
    if-eqz v50, :cond_12

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 296
    invoke-virtual/range {v50 .. v50}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 298
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {v50 .. v50}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v60

    .line 301
    .local v60, "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v74

    .line 302
    .local v74, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .local v61, "i":I
    :goto_7
    move-object/from16 v0, v76

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_11

    .line 303
    aget-object v75, v74, v61

    .line 304
    .local v75, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v29, 0x0

    .line 305
    .local v29, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v75

    array-length v13, v0

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_b

    aget-object v73, v75, v6

    .line 306
    .local v73, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v14, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v14, :cond_e

    move-object/from16 v29, v73

    .line 307
    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 311
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_b
    if-nez v29, :cond_f

    .line 312
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "illegal json creator"

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 277
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v63    # "isInterfaceOrAbstract":Z
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    const/16 v63, 0x0

    goto :goto_5

    .line 281
    .restart local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v63    # "isInterfaceOrAbstract":Z
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 305
    .end local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v61    # "i":I
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 315
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_f
    aget-object v7, v76, v61

    .line 316
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v60, v61

    .line 317
    .local v8, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v44

    invoke-static {v0, v6, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 319
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_10

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 323
    :cond_10
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 324
    .local v10, "ordinal":I
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 325
    .local v11, "serialzeFeatures":I
    new-instance v4, Lgza;

    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 332
    .local v4, "fieldInfo":Lgza;
    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-static {v0, v4, v6}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    .line 302
    add-int/lit8 v61, v61, 0x1

    goto :goto_7

    .line 335
    .end local v4    # "fieldInfo":Lgza;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_11
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lgza;

    move-object/from16 v17, v0

    .line 336
    .local v17, "fields":[Lgza;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lgza;

    move-object/from16 v18, v0

    .line 339
    .local v18, "sortedFields":[Lgza;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 342
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 344
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v51, v0

    .line 345
    const/16 v61, 0x0

    :goto_9
    move-object/from16 v0, v17

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_25

    .line 346
    aget-object v6, v17, v61

    iget-object v6, v6, Lgza;->a:Ljava/lang/String;

    aput-object v6, v51, v61

    .line 345
    add-int/lit8 v61, v61, 0x1

    goto :goto_9

    .line 349
    .end local v17    # "fields":[Lgza;
    .end local v18    # "sortedFields":[Lgza;
    .end local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_12
    if-eqz v16, :cond_18

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 352
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 354
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v6, v0

    if-lez v6, :cond_25

    .line 356
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v59

    .line 359
    .local v59, "genericParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v74

    .line 360
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .restart local v61    # "i":I
    :goto_a
    move-object/from16 v0, v76

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_16

    .line 361
    aget-object v75, v74, v61

    .line 362
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v29, 0x0

    .line 363
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v75

    array-length v13, v0

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v13, :cond_13

    aget-object v73, v75, v6

    .line 364
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v14, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v14, :cond_14

    move-object/from16 v29, v73

    .line 365
    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 369
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_13
    if-nez v29, :cond_15

    .line 370
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "illegal json creator"

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 363
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 373
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_15
    aget-object v7, v76, v61

    .line 374
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v59, v61

    .line 375
    .restart local v8    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v44

    invoke-static {v0, v6, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 376
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 377
    .restart local v10    # "ordinal":I
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 378
    .restart local v11    # "serialzeFeatures":I
    new-instance v4, Lgza;

    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 385
    .restart local v4    # "fieldInfo":Lgza;
    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-static {v0, v4, v6}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    .line 360
    add-int/lit8 v61, v61, 0x1

    goto :goto_a

    .line 388
    .end local v4    # "fieldInfo":Lgza;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_16
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lgza;

    move-object/from16 v17, v0

    .line 389
    .restart local v17    # "fields":[Lgza;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 391
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lgza;

    move-object/from16 v18, v0

    .line 392
    .restart local v18    # "sortedFields":[Lgza;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 395
    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 396
    move-object/from16 v18, v17

    .line 400
    :cond_17
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    .end local v19    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    check-cast v19, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 402
    .restart local v19    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v12, Lgxw;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Lgxw;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lgza;[Lgza;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    .line 758
    .end local v59    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_c
    return-object v12

    .line 406
    .end local v17    # "fields":[Lgza;
    .end local v18    # "sortedFields":[Lgza;
    :cond_18
    if-nez v63, :cond_25

    .line 407
    if-eqz v65, :cond_24

    move-object/from16 v0, v48

    array-length v6, v0

    if-lez v6, :cond_24

    .line 408
    invoke-static/range {p0 .. p0}, Lgzd;->b(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v77

    .line 410
    .local v77, "parameters":[Ljava/lang/String;
    if-eqz v77, :cond_23

    .line 411
    move-object/from16 v0, v48

    array-length v13, v0

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v13, :cond_1c

    aget-object v47, v48, v6

    .line 412
    .restart local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v47 .. v47}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 413
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v14, v0

    if-lez v14, :cond_19

    move-object/from16 v0, v76

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v76, v14

    .line 414
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 418
    :cond_19
    if-eqz v50, :cond_1a

    .line 419
    invoke-virtual/range {v50 .. v50}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    move-object/from16 v0, v76

    array-length v15, v0

    if-ge v14, v15, :cond_1b

    .line 423
    :cond_1a
    move-object/from16 v50, v47

    .line 411
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 426
    .end local v47    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1c
    const/4 v6, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 429
    invoke-virtual/range {v50 .. v50}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 431
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {v50 .. v50}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v60

    .line 434
    .restart local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v74

    .line 435
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .restart local v61    # "i":I
    :goto_e
    move-object/from16 v0, v76

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_22

    .line 436
    aget-object v5, v77, v61

    .line 438
    .local v5, "paramName":Ljava/lang/String;
    aget-object v75, v74, v61

    .line 439
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v29, 0x0

    .line 440
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v75

    array-length v13, v0

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v13, :cond_1d

    aget-object v73, v75, v6

    .line 441
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v14, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v14, :cond_20

    move-object/from16 v29, v73

    .line 442
    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 447
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1d
    aget-object v7, v76, v61

    .line 448
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v60, v61

    .line 449
    .restart local v8    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v44

    invoke-static {v0, v5, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 451
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_1e

    if-nez v29, :cond_1e

    .line 452
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 456
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1e
    if-eqz v29, :cond_21

    .line 457
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 458
    .restart local v10    # "ordinal":I
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 460
    .restart local v11    # "serialzeFeatures":I
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v72

    .line 461
    .local v72, "nameAnnotated":Ljava/lang/String;
    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 462
    move-object/from16 v5, v72

    .line 469
    .end local v72    # "nameAnnotated":Ljava/lang/String;
    :cond_1f
    :goto_10
    new-instance v4, Lgza;

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 476
    .restart local v4    # "fieldInfo":Lgza;
    const/4 v6, 0x0

    move-object/from16 v0, v56

    invoke-static {v0, v4, v6}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    .line 435
    add-int/lit8 v61, v61, 0x1

    goto :goto_e

    .line 440
    .end local v4    # "fieldInfo":Lgza;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 465
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    :cond_21
    const/4 v10, 0x0

    .line 466
    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .restart local v11    # "serialzeFeatures":I
    goto :goto_10

    .line 479
    .end local v5    # "paramName":Ljava/lang/String;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_22
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lgza;

    move-object/from16 v17, v0

    .line 480
    .restart local v17    # "fields":[Lgza;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 482
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lgza;

    move-object/from16 v18, v0

    .line 483
    .restart local v18    # "sortedFields":[Lgza;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 486
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v51, v0

    .line 487
    const/16 v61, 0x0

    :goto_11
    move-object/from16 v0, v17

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_25

    .line 488
    aget-object v6, v17, v61

    iget-object v6, v6, Lgza;->a:Ljava/lang/String;

    aput-object v6, v51, v61

    .line 487
    add-int/lit8 v61, v61, 0x1

    goto :goto_11

    .line 496
    .end local v17    # "fields":[Lgza;
    .end local v18    # "sortedFields":[Lgza;
    .end local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_23
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "default constructor not found. "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 499
    .end local v77    # "parameters":[Ljava/lang/String;
    :cond_24
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "default constructor not found. "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 504
    :cond_25
    if-eqz v54, :cond_26

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 509
    :cond_26
    move-object/from16 v0, v69

    array-length v13, v0

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v13, :cond_32

    aget-object v22, v69, v6

    .line 510
    .restart local v22    # "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 511
    .restart local v11    # "serialzeFeatures":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v67

    .line 512
    .local v67, "methodName":Ljava/lang/String;
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_29

    .line 516
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v78

    .line 517
    .local v78, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v78

    if-eq v0, v14, :cond_27

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, v78

    if-ne v0, v14, :cond_29

    .line 518
    :cond_27
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_29

    .line 524
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v28

    check-cast v28, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 526
    .local v28, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v28, :cond_28

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v28

    .line 530
    :cond_28
    if-eqz v28, :cond_2a

    .line 531
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v14

    if-eqz v14, :cond_29

    .line 535
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 536
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 538
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2a

    .line 539
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v21

    .line 540
    .local v21, "propertyName":Ljava/lang/String;
    new-instance v20, Lgza;

    const/16 v23, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move/from16 v26, v10

    move/from16 v27, v11

    invoke-direct/range {v20 .. v30}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    const/4 v14, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 509
    .end local v21    # "propertyName":Ljava/lang/String;
    .end local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v78    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_29
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    .line 557
    .restart local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v78    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2a
    const-string/jumbo v14, "set"

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 561
    const/4 v14, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v43

    .line 564
    .local v43, "c3":C
    invoke-static/range {v43 .. v43}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 565
    sget-boolean v14, Lgzd;->a:Z

    .line 568
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 580
    .restart local v21    # "propertyName":Ljava/lang/String;
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v52

    move-object/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 581
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    if-nez v9, :cond_2b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_2b

    .line 582
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "is"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    .line 583
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 584
    .local v62, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v52

    move-object/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 587
    .end local v62    # "isFieldName":Ljava/lang/String;
    :cond_2b
    if-eqz v9, :cond_30

    .line 588
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 590
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v29, :cond_30

    .line 591
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 592
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 594
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2f

    .line 595
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v21

    .line 596
    new-instance v20, Lgza;

    const/16 v30, 0x1

    move-object/from16 v23, v9

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move/from16 v26, v10

    move/from16 v27, v11

    invoke-direct/range {v20 .. v30}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    const/4 v14, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    goto/16 :goto_13

    .line 570
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v21    # "propertyName":Ljava/lang/String;
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_2c
    const/16 v14, 0x5f

    move/from16 v0, v43

    if-ne v0, v14, :cond_2d

    .line 571
    const/4 v14, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "propertyName":Ljava/lang/String;
    goto/16 :goto_14

    .line 572
    .end local v21    # "propertyName":Ljava/lang/String;
    :cond_2d
    const/16 v14, 0x66

    move/from16 v0, v43

    if-ne v0, v14, :cond_2e

    .line 573
    const/4 v14, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "propertyName":Ljava/lang/String;
    goto/16 :goto_14

    .line 574
    .end local v21    # "propertyName":Ljava/lang/String;
    :cond_2e
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-lt v14, v15, :cond_29

    const/4 v14, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 575
    const/4 v14, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lgzd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "propertyName":Ljava/lang/String;
    goto/16 :goto_14

    .line 604
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_2f
    if-nez v28, :cond_30

    .line 605
    move-object/from16 v28, v29

    .line 610
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_30
    if-eqz p7, :cond_31

    .line 611
    move-object/from16 v0, p7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 614
    :cond_31
    new-instance v30, Lgza;

    const/16 v33, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    move-object/from16 v31, v21

    move-object/from16 v32, v22

    move-object/from16 v34, p0

    move-object/from16 v35, p2

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v38, v28

    invoke-direct/range {v30 .. v40}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    const/4 v14, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_13

    .line 624
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v21    # "propertyName":Ljava/lang/String;
    .end local v22    # "method":Ljava/lang/reflect/Method;
    .end local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v43    # "c3":C
    .end local v67    # "methodName":Ljava/lang/String;
    .end local v78    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    new-instance v45, Ljava/util/ArrayList;

    move-object/from16 v0, v52

    array-length v6, v0

    move-object/from16 v0, v45

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v45, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v52

    array-length v13, v0

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v13, :cond_37

    aget-object v55, v52, v6

    .line 626
    .local v55, "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v71

    .line 627
    .local v71, "modifiers":I
    and-int/lit8 v14, v71, 0x8

    if-nez v14, :cond_35

    .line 631
    and-int/lit8 v14, v71, 0x10

    if-eqz v14, :cond_34

    .line 632
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v58

    .line 633
    .local v58, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/util/Map;

    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_33

    const-class v14, Ljava/util/Collection;

    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_36

    :cond_33
    const/16 v80, 0x1

    .line 634
    .local v80, "supportReadOnly":Z
    :goto_16
    if-eqz v80, :cond_35

    .line 639
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v80    # "supportReadOnly":Z
    :cond_34
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_35

    .line 640
    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 633
    .restart local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_36
    const/16 v80, 0x0

    goto :goto_16

    .line 644
    .end local v55    # "f":Ljava/lang/reflect/Field;
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v71    # "modifiers":I
    :cond_37
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v42

    .local v42, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_17
    if-eqz v42, :cond_3d

    const-class v6, Ljava/lang/Object;

    move-object/from16 v0, v42

    if-eq v0, v6, :cond_3d

    .line 645
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v14, :cond_3c

    aget-object v55, v13, v6

    .line 646
    .restart local v55    # "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v71

    .line 647
    .restart local v71    # "modifiers":I
    and-int/lit8 v15, v71, 0x8

    if-nez v15, :cond_3a

    .line 651
    and-int/lit8 v15, v71, 0x10

    if-eqz v15, :cond_39

    .line 652
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v58

    .line 653
    .restart local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, Ljava/util/Map;

    move-object/from16 v0, v58

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_38

    const-class v15, Ljava/util/Collection;

    move-object/from16 v0, v58

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_3b

    :cond_38
    const/16 v80, 0x1

    .line 654
    .restart local v80    # "supportReadOnly":Z
    :goto_19
    if-eqz v80, :cond_3a

    .line 659
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v80    # "supportReadOnly":Z
    :cond_39
    and-int/lit8 v15, v71, 0x1

    if-eqz v15, :cond_3a

    .line 660
    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 653
    .restart local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3b
    const/16 v80, 0x0

    goto :goto_19

    .line 644
    .end local v55    # "f":Ljava/lang/reflect/Field;
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v71    # "modifiers":I
    :cond_3c
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v42

    goto :goto_17

    .line 666
    :cond_3d
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3e
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 667
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v57

    .line 668
    .local v57, "fieldName":Ljava/lang/String;
    const/16 v49, 0x0

    .line 669
    .local v49, "contains":Z
    const/16 v61, 0x0

    .restart local v61    # "i":I
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v79

    .local v79, "size":I
    :goto_1b
    move/from16 v0, v61

    move/from16 v1, v79

    if-ge v0, v1, :cond_40

    .line 670
    move-object/from16 v0, v56

    move/from16 v1, v61

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lgza;

    .line 671
    .local v64, "item":Lgza;
    move-object/from16 v0, v64

    iget-object v13, v0, Lgza;->a:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 672
    const/16 v49, 0x1

    .line 669
    :cond_3f
    add-int/lit8 v61, v61, 0x1

    goto :goto_1b

    .line 677
    .end local v64    # "item":Lgza;
    :cond_40
    if-nez v49, :cond_3e

    .line 681
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 682
    .restart local v11    # "serialzeFeatures":I
    move-object/from16 v21, v57

    .line 684
    .restart local v21    # "propertyName":Ljava/lang/String;
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 686
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v29, :cond_41

    .line 687
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 688
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 690
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_41

    .line 691
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v21

    .line 695
    :cond_41
    if-eqz p7, :cond_42

    .line 696
    move-object/from16 v0, p7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 699
    :cond_42
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 700
    new-instance v30, Lgza;

    const/16 v32, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x1

    move-object/from16 v31, v21

    move-object/from16 v33, v9

    move-object/from16 v34, p0

    move-object/from16 v35, p2

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v39, v29

    invoke-direct/range {v30 .. v40}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    const/4 v13, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    goto/16 :goto_1a

    .line 715
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v21    # "propertyName":Ljava/lang/String;
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v49    # "contains":Z
    .end local v57    # "fieldName":Ljava/lang/String;
    .end local v61    # "i":I
    .end local v79    # "size":I
    :cond_43
    move-object/from16 v0, v69

    array-length v13, v0

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v13, :cond_47

    aget-object v22, v69, v6

    .line 716
    .restart local v22    # "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v67

    .line 717
    .restart local v67    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_45

    .line 721
    const-string/jumbo v14, "get"

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_45

    const/4 v14, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v14

    if-eqz v14, :cond_45

    .line 722
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    if-nez v14, :cond_45

    .line 726
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v68

    .line 727
    .local v68, "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/util/Collection;

    move-object/from16 v0, v68

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_44

    const-class v14, Ljava/util/Map;

    .line 728
    move-object/from16 v0, v68

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_45

    .line 732
    :cond_44
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v28

    check-cast v28, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 735
    .restart local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v28, :cond_46

    .line 736
    invoke-interface/range {v28 .. v28}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v41

    .local v41, "annotationName":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_46

    move-object/from16 v21, v41

    .line 740
    .end local v41    # "annotationName":Ljava/lang/String;
    .restart local v21    # "propertyName":Ljava/lang/String;
    :goto_1d
    new-instance v30, Lgza;

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    move-object/from16 v31, v21

    move-object/from16 v32, v22

    move-object/from16 v34, p0

    move-object/from16 v35, p2

    move-object/from16 v38, v28

    invoke-direct/range {v30 .. v40}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    const/4 v14, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Lgxw;->a(Ljava/util/List;Lgza;Z)Z

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 715
    .end local v21    # "propertyName":Ljava/lang/String;
    .end local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v68    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    .line 736
    .restart local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v68    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_46
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    .line 738
    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_1d

    .line 750
    .end local v22    # "method":Ljava/lang/reflect/Method;
    .end local v28    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v67    # "methodName":Ljava/lang/String;
    .end local v68    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_47
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lgza;

    move-object/from16 v17, v0

    .line 751
    .restart local v17    # "fields":[Lgza;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 753
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lgza;

    move-object/from16 v18, v0

    .line 754
    .restart local v18    # "sortedFields":[Lgza;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 757
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    .end local v19    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    check-cast v19, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 758
    .restart local v19    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v30, Lgxw;

    move-object/from16 v31, p0

    move-object/from16 v32, v54

    move-object/from16 v33, v50

    move-object/from16 v34, v16

    move-object/from16 v35, v17

    move-object/from16 v36, v18

    move-object/from16 v37, v19

    move-object/from16 v38, v51

    invoke-direct/range {v30 .. v38}, Lgxw;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lgza;[Lgza;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    move-object/from16 v12, v30

    goto/16 :goto_c

    .end local v16    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v17    # "fields":[Lgza;
    .end local v18    # "sortedFields":[Lgza;
    .end local v42    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v45    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v46    # "cls":Ljava/lang/Class;
    .end local v50    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v51    # "creatorConstructorParameters":[Ljava/lang/String;
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v63    # "isInterfaceOrAbstract":Z
    .end local v66    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v69    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;Lgza;Z)Z
    .locals 5
    .param p1, "field"    # Lgza;
    .param p2, "fieldOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgza;",
            ">;",
            "Lgza;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lgza;>;"
    if-nez p2, :cond_2

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 184
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgza;

    .line 185
    .local v1, "item":Lgza;
    iget-object v3, v1, Lgza;->a:Ljava/lang/String;

    iget-object v4, p1, Lgza;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-boolean v3, v1, Lgza;->i:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lgza;->i:Z

    if-eqz v3, :cond_1

    .line 190
    :cond_0
    const/4 v3, 0x0

    .line 197
    .end local v0    # "i":I
    .end local v1    # "item":Lgza;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 183
    .restart local v0    # "i":I
    .restart local v1    # "item":Lgza;
    .restart local v2    # "size":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .end local v1    # "item":Lgza;
    .end local v2    # "size":I
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private a([Lgza;[Lgza;)[Lgza;
    .locals 12
    .param p1, "fields"    # [Lgza;
    .param p2, "sortedFields"    # [Lgza;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 99
    iget-object v9, p0, Lgxw;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v9, :cond_1

    .line 178
    .end local p2    # "sortedFields":[Lgza;
    :cond_0
    :goto_0
    return-object p2

    .line 103
    .restart local p2    # "sortedFields":[Lgza;
    :cond_1
    iget-object v9, p0, Lgxw;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "orders":[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v9, v8

    if-eqz v9, :cond_0

    .line 105
    const/4 v1, 0x1

    .line 106
    .local v1, "containsAll":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_3

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "got":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v9, p2

    if-ge v5, v9, :cond_2

    .line 109
    aget-object v9, p2, v5

    iget-object v9, v9, Lgza;->a:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 110
    const/4 v3, 0x1

    .line 114
    :cond_2
    if-nez v3, :cond_7

    .line 115
    const/4 v1, 0x0

    .line 120
    .end local v3    # "got":Z
    .end local v5    # "j":I
    :cond_3
    if-eqz v1, :cond_0

    .line 124
    array-length v9, v8

    array-length v11, p1

    if-ne v9, v11, :cond_b

    .line 125
    const/4 v7, 0x1

    .line 126
    .local v7, "orderMatch":Z
    const/4 v4, 0x0

    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_4

    .line 127
    aget-object v9, p2, v4

    iget-object v9, v9, Lgza;->a:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 128
    const/4 v7, 0x0

    .line 133
    :cond_4
    if-nez v7, :cond_0

    .line 137
    array-length v9, p2

    new-array v6, v9, [Lgza;

    .line 138
    .local v6, "newSortedFields":[Lgza;
    const/4 v4, 0x0

    :goto_4
    array-length v9, v8

    if-ge v4, v9, :cond_a

    .line 139
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5
    array-length v9, p2

    if-ge v5, v9, :cond_5

    .line 140
    aget-object v9, p2, v5

    iget-object v9, v9, Lgza;->a:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 141
    aget-object v9, p2, v5

    aput-object v9, v6, v4

    .line 138
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 108
    .end local v6    # "newSortedFields":[Lgza;
    .end local v7    # "orderMatch":Z
    .restart local v3    # "got":Z
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 106
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    .end local v3    # "got":Z
    .end local v5    # "j":I
    .restart local v7    # "orderMatch":Z
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 139
    .restart local v5    # "j":I
    .restart local v6    # "newSortedFields":[Lgza;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 147
    .end local v5    # "j":I
    :cond_a
    iput-boolean v10, p0, Lgxw;->h:Z

    move-object p2, v6

    .line 148
    goto :goto_0

    .line 151
    .end local v6    # "newSortedFields":[Lgza;
    .end local v7    # "orderMatch":Z
    :cond_b
    array-length v9, p2

    new-array v6, v9, [Lgza;

    .line 152
    .restart local v6    # "newSortedFields":[Lgza;
    const/4 v4, 0x0

    :goto_6
    array-length v9, v8

    if-ge v4, v9, :cond_e

    .line 153
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    array-length v9, p2

    if-ge v5, v9, :cond_c

    .line 154
    aget-object v9, p2, v5

    iget-object v9, v9, Lgza;->a:Ljava/lang/String;

    aget-object v11, v8, v4

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 155
    aget-object v9, p2, v5

    aput-object v9, v6, v4

    .line 152
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 153
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 161
    .end local v5    # "j":I
    :cond_e
    array-length v2, v8

    .line 162
    .local v2, "fieldIndex":I
    const/4 v4, 0x0

    :goto_8
    array-length v9, p2

    if-ge v4, v9, :cond_14

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "contains":Z
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9
    array-length v9, v6

    if-ge v5, v9, :cond_f

    if-ge v5, v2, :cond_f

    .line 165
    aget-object v9, v6, v4

    aget-object v11, p2, v5

    .line 1336
    if-ne v11, v9, :cond_11

    move v9, v10

    .line 165
    :goto_a
    if-eqz v9, :cond_13

    .line 166
    const/4 v0, 0x1

    .line 170
    :cond_f
    if-nez v0, :cond_10

    .line 171
    aget-object v9, p2, v4

    aput-object v9, v6, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    .line 162
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1339
    :cond_11
    invoke-virtual {v9, v11}, Lgza;->a(Lgza;)I

    move-result v9

    if-nez v9, :cond_12

    move v9, v10

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    goto :goto_a

    .line 164
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 175
    .end local v0    # "contains":Z
    .end local v5    # "j":I
    :cond_14
    iput-boolean v10, p0, Lgxw;->h:Z

    goto/16 :goto_0
.end method
