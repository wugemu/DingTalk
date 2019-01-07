.class public final Lgzd;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field public static a:Z

.field private static b:Z

.field private static volatile c:Ljava/lang/Class;

.field private static volatile d:Z

.field private static volatile e:Z

.field private static volatile f:Ljava/lang/reflect/Constructor;

.field private static volatile g:Ljava/lang/reflect/Method;

.field private static volatile h:Ljava/lang/reflect/Method;

.field private static volatile i:Ljava/lang/reflect/Method;

.field private static volatile j:Z

.field private static volatile k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile l:Z

.field private static final m:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lgzd;->a:Z

    .line 47
    sput-boolean v3, Lgzd;->b:Z

    .line 865
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x24

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 868
    sput-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[B"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[S"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[I"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[J"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[F"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[D"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[C"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "[Z"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "java.util.HashMap"

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "java.util.TreeMap"

    const-class v2, Ljava/util/TreeMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "java.util.Date"

    const-class v2, Ljava/util/Date;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "com.alibaba.fastjson.JSONObject"

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "java.util.concurrent.ConcurrentHashMap"

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "java.text.SimpleDateFormat"

    const-class v2, Ljava/text/SimpleDateFormat;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "java.lang.StackTraceElement"

    const-class v2, Ljava/lang/StackTraceElement;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    const-string/jumbo v1, "java.lang.RuntimeException"

    const-class v2, Ljava/lang/RuntimeException;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 20
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v14

    array-length v15, v14

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v4, v14, v13

    .line 1396
    .local v4, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    aget-object v5, v16, v12

    .line 1397
    .local v5, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1401
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1402
    .local v6, "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 1403
    .local v9, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1407
    const/4 v8, 0x1

    .line 1408
    .local v8, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_0

    .line 1409
    aget-object v18, v6, v3

    aget-object v19, v9, v3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1410
    const/4 v8, 0x0

    .line 1415
    :cond_0
    if-eqz v8, :cond_3

    .line 1419
    const-class v18, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1420
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v2, :cond_3

    .line 1461
    .end local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "i":I
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_3
    return-object v2

    .line 1408
    .restart local v3    # "i":I
    .restart local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "match":Z
    .restart local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1396
    .end local v3    # "i":I
    .end local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1395
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    :cond_4
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 1426
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 1427
    .local v10, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_6

    .line 1428
    const/4 v2, 0x0

    goto :goto_3

    .line 1431
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Class;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1432
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 1434
    .local v11, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_a

    aget-object v5, v13, v12

    .line 1435
    .restart local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1436
    .local v7, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v15, v7

    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1439
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1442
    const/4 v8, 0x1

    .line 1443
    .restart local v8    # "match":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    array-length v15, v11

    if-ge v3, v15, :cond_7

    .line 1444
    aget-object v15, v7, v3

    aget-object v16, v11, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 1445
    const/4 v8, 0x0

    .line 1450
    :cond_7
    if-eqz v8, :cond_8

    .line 1454
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1455
    .restart local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v2, :cond_1

    .line 1434
    .end local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "i":I
    .end local v8    # "match":Z
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1443
    .restart local v3    # "i":I
    .restart local v8    # "match":Z
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1461
    .end local v3    # "i":I
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v11    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 906
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 914
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 984
    :cond_1
    :goto_1
    return-object v0

    .line 918
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-lt v5, v6, :cond_3

    .line 919
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "className too long. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 922
    :cond_3
    sget-object v5, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 924
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 928
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_5

    .line 929
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v7}, Lgzd;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 930
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_4

    move-object v0, v4

    .line 931
    goto :goto_1

    .line 933
    :cond_4
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 936
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-string/jumbo v5, "L"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 937
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, "newClassName":Ljava/lang/String;
    const/4 p2, 0x0

    move-object p0, v3

    goto :goto_0

    .line 942
    .end local v3    # "newClassName":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_7

    .line 943
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 949
    goto :goto_1

    :catch_0
    move-exception v4

    .line 957
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 959
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_8

    if-eq v2, p1, :cond_8

    .line 960
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 966
    goto/16 :goto_1

    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v4

    .line 974
    :cond_8
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 976
    sget-object v4, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 984
    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lgyb;->a:Lgyb;

    .line 2511
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;

    move-result-object v0

    .line 507
    return-object v0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lgyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lgyb;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;
    .locals 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lgyb;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lgyb;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_1

    .line 517
    const/4 p0, 0x0

    .line 647
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 520
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    .line 521
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "clazz is null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 524
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq p1, v10, :cond_0

    .line 528
    instance-of v10, p0, Ljava/util/Map;

    if-eqz v10, :cond_4

    .line 529
    const-class v10, Ljava/util/Map;

    if-eq p1, v10, :cond_0

    move-object v7, p0

    .line 533
    check-cast v7, Ljava/util/Map;

    .line 534
    .local v7, "map":Ljava/util/Map;
    const-class v10, Ljava/lang/Object;

    if-ne p1, v10, :cond_3

    const-string/jumbo v10, "@type"

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 538
    :cond_3
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static/range {p0 .. p3}, Lgzd;->a(Ljava/util/Map;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 541
    .end local v7    # "map":Ljava/util/Map;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 542
    instance-of v10, p0, Ljava/util/Collection;

    if-eqz v10, :cond_6

    move-object v2, p0

    .line 544
    check-cast v2, Ljava/util/Collection;

    .line 545
    .local v2, "collection":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 546
    .local v5, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 547
    .local v0, "array":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 548
    .local v6, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    .line 3511
    const/4 v12, 0x0

    invoke-static {v6, v11, p2, v12}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;

    move-result-object v9

    .line 549
    .local v9, "value":Ljava/lang/Object;
    invoke-static {v0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 550
    add-int/lit8 v5, v5, 0x1

    .line 551
    goto :goto_1

    .end local v6    # "item":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    move-object p0, v0

    .line 553
    goto :goto_0

    .line 556
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v5    # "index":I
    :cond_6
    const-class v10, [B

    if-ne p1, v10, :cond_7

    .line 557
    invoke-static {p0}, Lgzd;->l(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    .line 561
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 565
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_8

    const-class v10, Ljava/lang/Boolean;

    if-ne p1, v10, :cond_9

    .line 566
    :cond_8
    invoke-static {p0}, Lgzd;->m(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    .line 569
    :cond_9
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_a

    const-class v10, Ljava/lang/Byte;

    if-ne p1, v10, :cond_b

    .line 570
    :cond_a
    invoke-static {p0}, Lgzd;->b(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 573
    :cond_b
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_c

    const-class v10, Ljava/lang/Character;

    if-ne p1, v10, :cond_d

    .line 575
    :cond_c
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_d

    move-object v8, p0

    .line 576
    check-cast v8, Ljava/lang/String;

    .line 577
    .local v8, "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 578
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    .line 583
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_d
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_e

    const-class v10, Ljava/lang/Short;

    if-ne p1, v10, :cond_f

    .line 584
    :cond_e
    invoke-static {p0}, Lgzd;->d(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    .line 587
    :cond_f
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_10

    const-class v10, Ljava/lang/Integer;

    if-ne p1, v10, :cond_11

    .line 588
    :cond_10
    invoke-static {p0}, Lgzd;->k(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 591
    :cond_11
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_12

    const-class v10, Ljava/lang/Long;

    if-ne p1, v10, :cond_13

    .line 592
    :cond_12
    invoke-static {p0}, Lgzd;->j(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    .line 595
    :cond_13
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_14

    const-class v10, Ljava/lang/Float;

    if-ne p1, v10, :cond_15

    .line 596
    :cond_14
    invoke-static {p0}, Lgzd;->g(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    .line 599
    :cond_15
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_16

    const-class v10, Ljava/lang/Double;

    if-ne p1, v10, :cond_17

    .line 600
    :cond_16
    invoke-static {p0}, Lgzd;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    .line 603
    :cond_17
    const-class v10, Ljava/lang/String;

    if-ne p1, v10, :cond_18

    .line 604
    invoke-static {p0}, Lgzd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 607
    :cond_18
    const-class v10, Ljava/math/BigDecimal;

    if-ne p1, v10, :cond_19

    .line 608
    invoke-static {p0}, Lgzd;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    .line 611
    :cond_19
    const-class v10, Ljava/math/BigInteger;

    if-ne p1, v10, :cond_1a

    .line 612
    invoke-static {p0}, Lgzd;->f(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 615
    :cond_1a
    const-class v10, Ljava/util/Date;

    if-ne p1, v10, :cond_1b

    .line 616
    invoke-static {p0}, Lgzd;->i(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 619
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 620
    invoke-static {p0, p1}, Lgzd;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 623
    :cond_1c
    const-class v10, Ljava/util/Calendar;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 624
    invoke-static {p0}, Lgzd;->i(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    .line 626
    .local v3, "date":Ljava/util/Date;
    const-class v10, Ljava/util/Calendar;

    if-ne p1, v10, :cond_1d

    .line 627
    sget-object v10, Lgxk;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v11, Lgxk;->defaultLocale:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 635
    .local v1, "calendar":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v1

    .line 636
    goto/16 :goto_0

    .line 630
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_1d
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "calendar":Ljava/util/Calendar;
    goto :goto_2

    .line 631
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v4

    .line 632
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "can not cast to : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 639
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1e
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_21

    move-object v8, p0

    .line 640
    check-cast v8, Ljava/lang/String;

    .line 641
    .restart local v8    # "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1f

    const-string/jumbo v10, "null"

    .line 642
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 643
    :cond_1f
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 646
    :cond_20
    const-class v10, Ljava/util/Currency;

    if-ne p1, v10, :cond_21

    .line 647
    invoke-static {v8}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    goto/16 :goto_0

    .line 651
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_21
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "can not cast to : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lgyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lgyb;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 680
    if-nez p0, :cond_1

    move-object v1, v2

    .line 4766
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object v1

    .line 684
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 685
    check-cast p1, Ljava/lang/Class;

    .line 4511
    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2, v6}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 688
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_e

    .line 689
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 4709
    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 4711
    const-class v1, Ljava/util/Set;

    if-eq v3, v1, :cond_3

    const-class v1, Ljava/util/HashSet;

    if-eq v3, v1, :cond_3

    const-class v1, Ljava/util/TreeSet;

    if-eq v3, v1, :cond_3

    const-class v1, Ljava/util/List;

    if-eq v3, v1, :cond_3

    const-class v1, Ljava/util/ArrayList;

    if-ne v3, v1, :cond_7

    .line 4716
    :cond_3
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v6

    .line 4718
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_7

    .line 4720
    const-class v1, Ljava/util/Set;

    if-eq v3, v1, :cond_4

    const-class v1, Ljava/util/HashSet;

    if-ne v3, v1, :cond_5

    .line 4721
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4728
    :goto_1
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4729
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4730
    invoke-static {v3, v4, p2}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4722
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    const-class v1, Ljava/util/TreeSet;

    if-ne v3, v1, :cond_6

    .line 4723
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 4725
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 4737
    :cond_7
    const-class v1, Ljava/util/Map;

    if-eq v3, v1, :cond_8

    const-class v1, Ljava/util/HashMap;

    if-ne v3, v1, :cond_a

    .line 4738
    :cond_8
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v6

    .line 4739
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v5, v1, v7

    .line 4741
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 4742
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4744
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4745
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4, p2}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v6

    .line 4746
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5, p2}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v1

    .line 4748
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    move-object v1, v2

    .line 4751
    goto/16 :goto_0

    .line 4755
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v1, p0

    .line 4756
    check-cast v1, Ljava/lang/String;

    .line 4757
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "null"

    .line 4758
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    move-object v1, v2

    .line 4759
    goto/16 :goto_0

    .line 4763
    :cond_c
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v7, :cond_d

    .line 4764
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v6

    .line 4765
    instance-of v1, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_d

    .line 4766
    invoke-static {p0, v3, p2}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lgyb;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 4770
    :cond_d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_e
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_10

    move-object v0, p0

    .line 693
    check-cast v0, Ljava/lang/String;

    .line 694
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "null"

    .line 695
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    move-object v1, v2

    .line 696
    goto/16 :goto_0

    .line 700
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_10
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_11

    move-object v1, p0

    .line 701
    goto/16 :goto_0

    .line 704
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;
    .locals 20
    .param p2, "config"    # Lgyb;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lgyb;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v17, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 781
    const-string/jumbo v17, "className"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 782
    .local v4, "declaringClass":Ljava/lang/String;
    const-string/jumbo v17, "methodName"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 783
    .local v14, "methodName":Ljava/lang/String;
    const-string/jumbo v17, "fileName"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 786
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v17, "lineNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    .line 787
    .local v16, "value":Ljava/lang/Number;
    if-nez v16, :cond_0

    .line 788
    const/4 v12, 0x0

    .line 794
    .local v12, "lineNumber":I
    :goto_0
    new-instance v17, Ljava/lang/StackTraceElement;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v14, v8, v12}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 859
    .end local v4    # "declaringClass":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "lineNumber":I
    .end local v14    # "methodName":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Number;
    :goto_1
    return-object v17

    .line 790
    .restart local v4    # "declaringClass":Ljava/lang/String;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v14    # "methodName":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/Number;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v12

    .restart local v12    # "lineNumber":I
    goto :goto_0

    .line 798
    .end local v4    # "declaringClass":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "lineNumber":I
    .end local v14    # "methodName":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Number;
    :cond_1
    const-string/jumbo v17, "@type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 799
    .local v9, "iClassObject":Ljava/lang/Object;
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 800
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 802
    .local v3, "className":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 803
    sget-object p2, Lgyb;->a:Lgyb;

    .line 806
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Lgyb;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v13

    .line 808
    .local v13, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_3

    .line 809
    new-instance v17, Ljava/lang/ClassNotFoundException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v3    # "className":Ljava/lang/String;
    .end local v9    # "iClassObject":Ljava/lang/Object;
    .end local v13    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 861
    .local v7, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 812
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v9    # "iClassObject":Ljava/lang/Object;
    .restart local v13    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lgzd;->a(Ljava/util/Map;Ljava/lang/Class;Lgyb;I)Ljava/lang/Object;

    move-result-object v17

    goto :goto_1

    .line 818
    .end local v3    # "className":Ljava/lang/String;
    .end local v13    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 821
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 822
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v15, v0

    .line 827
    .local v15, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    if-nez p2, :cond_5

    .line 828
    invoke-static {}, Lgyb;->a()Lgyb;

    move-result-object p2

    .line 831
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v5

    .line 832
    .local v5, "deserializer":Lgyk;
    if-eqz v5, :cond_7

    .line 833
    invoke-static {v15}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 834
    .local v11, "json":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_1

    .line 824
    .end local v5    # "deserializer":Lgyk;
    .end local v11    # "json":Ljava/lang/String;
    .end local v15    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    new-instance v15, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v15    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 837
    .restart local v5    # "deserializer":Lgyk;
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_1

    .line 841
    .end local v5    # "deserializer":Lgyk;
    .end local v15    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 842
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 845
    :cond_9
    if-nez p2, :cond_a

    .line 846
    sget-object p2, Lgyb;->a:Lgyb;

    .line 849
    :cond_a
    const/4 v10, 0x0

    .line 850
    .local v10, "javaBeanDeser":Lgxv;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v6

    .line 851
    .local v6, "deserizer":Lgyk;
    instance-of v0, v6, Lgxv;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 852
    move-object v0, v6

    check-cast v0, Lgxv;

    move-object v10, v0

    .line 855
    :cond_b
    if-nez v10, :cond_c

    .line 856
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "can not get javaBeanDeserializer"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 859
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lgxv;->a(Ljava/util/Map;Lgyb;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto/16 :goto_1
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    const/4 v4, 0x1

    .line 1570
    invoke-static {p0, p1, p2, p3}, Lgzd;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1571
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 1572
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lgzd;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1575
    :cond_0
    if-nez v0, :cond_1

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "m_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lgzd;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1579
    :cond_1
    if-nez v0, :cond_2

    .line 1580
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "m"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1581
    .local v1, "mName":Ljava/lang/String;
    invoke-static {p0, v1, p2, p3}, Lgzd;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1584
    .end local v1    # "mName":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "genericArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 1722
    move-object v1, p0

    .line 1723
    .local v1, "clz":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1725
    .local v2, "genericComponentType":Ljava/lang/reflect/Type;
    const-string/jumbo v3, "["

    .line 1726
    .local v3, "prefix":Ljava/lang/String;
    :goto_0
    instance-of v4, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_0

    .line 1727
    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    .line 1728
    .end local v2    # "genericComponentType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1729
    .restart local v2    # "genericComponentType":Ljava/lang/reflect/Type;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1732
    :cond_0
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 1733
    check-cast v0, Ljava/lang/Class;

    .line 1734
    .local v0, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1736
    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    .line 1737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1758
    .end local v0    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return-object v1

    .line 1738
    .restart local v0    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_3

    .line 1739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1740
    :cond_3
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_4

    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1742
    :cond_4
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_5

    .line 1743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1744
    :cond_5
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_6

    .line 1745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "I"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1746
    :cond_6
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_7

    .line 1747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "J"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_1

    .line 1748
    :cond_7
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_8

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_1

    .line 1750
    :cond_8
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_1

    .line 1751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 55
    .param p1, "modifiers"    # I
    .param p2, "fieldOnly"    # Z
    .param p3, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p5, "sorted"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IZ",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lgza;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v39, Ljava/util/LinkedHashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/LinkedHashMap;-><init>()V

    .line 997
    .local v39, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lgza;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 999
    .local v28, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v33

    .line 1000
    .local v33, "declaredFields":[Ljava/lang/reflect/Field;
    if-nez p2, :cond_1f

    .line 1001
    invoke-static/range {p0 .. p0}, Lgzd;->a(Ljava/lang/Class;)Z

    move-result v43

    .line 1003
    .local v43, "kotlin":Z
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v44, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v30, p0

    .local v30, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v30, :cond_2

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_2

    .line 1006
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v34

    .line 1007
    .local v34, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v34

    array-length v8, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v6, v34, v4

    .line 1008
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v46

    .line 1010
    .local v46, "modifier":I
    and-int/lit8 v9, v46, 0x8

    if-nez v9, :cond_0

    and-int/lit8 v9, v46, 0x2

    if-nez v9, :cond_0

    move/from16 v0, v46

    and-int/lit16 v9, v0, 0x100

    if-nez v9, :cond_0

    and-int/lit8 v9, v46, 0x4

    if-nez v9, :cond_0

    .line 1017
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1018
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 1019
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v14, Ljava/lang/ClassLoader;

    if-eq v9, v14, :cond_0

    .line 1020
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v14, Ljava/lang/Object;

    if-eq v9, v14, :cond_0

    .line 1025
    move-object/from16 v0, v44

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1005
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v46    # "modifier":I
    :cond_1
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v30

    goto :goto_0

    .line 1030
    .end local v34    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_2
    const/16 v31, 0x0

    .line 1031
    .local v31, "constructors":[Ljava/lang/reflect/Constructor;
    const/16 v50, 0x0

    .line 1032
    .local v50, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v53, 0x0

    .line 1033
    .local v53, "paramNames":[Ljava/lang/String;
    const/16 v52, 0x0

    .line 1035
    .local v52, "paramNameMapping":[S
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 1036
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v45

    .line 1037
    .local v45, "methodName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ordinal":I
    const/4 v11, 0x0

    .line 1039
    .local v11, "serialzeFeatures":I
    const-string/jumbo v4, "getMetaClass"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1040
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "groovy.lang.MetaClass"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1044
    :cond_4
    if-eqz p6, :cond_7

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v12, v4

    .line 1046
    .local v12, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_3
    if-nez v12, :cond_5

    if-eqz p6, :cond_5

    .line 1047
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v12

    .line 1050
    :cond_5
    if-eqz v43, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1054
    :cond_6
    if-nez v12, :cond_b

    if-eqz v43, :cond_b

    .line 1055
    if-nez v31, :cond_9

    .line 1056
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v31

    .line 1057
    move-object/from16 v0, v31

    array-length v4, v0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_9

    .line 1058
    const/4 v4, 0x0

    aget-object v4, v31, v4

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v50

    .line 1059
    invoke-static/range {p0 .. p0}, Lgzd;->b(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v53

    .line 1061
    if-eqz v53, :cond_9

    .line 1062
    move-object/from16 v0, v53

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v54, v0

    .line 1063
    .local v54, "paramNames_sorted":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v53

    array-length v9, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-static {v0, v4, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1064
    invoke-static/range {v54 .. v54}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1066
    move-object/from16 v0, v53

    array-length v4, v0

    new-array v0, v4, [S

    move-object/from16 v52, v0

    .line 1067
    const/16 v48, 0x0

    .local v48, "p":S
    :goto_4
    move-object/from16 v0, v53

    array-length v4, v0

    move/from16 v0, v48

    if-ge v0, v4, :cond_8

    .line 1068
    aget-object v4, v53, v48

    move-object/from16 v0, v54

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v41

    .line 1069
    .local v41, "index":I
    aput-short v48, v52, v41

    .line 1067
    add-int/lit8 v4, v48, 0x1

    int-to-short v0, v4

    move/from16 v48, v0

    goto :goto_4

    .line 1044
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v41    # "index":I
    .end local v48    # "p":S
    .end local v54    # "paramNames_sorted":[Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 1071
    .restart local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v48    # "p":S
    .restart local v54    # "paramNames_sorted":[Ljava/lang/String;
    :cond_8
    move-object/from16 v53, v54

    .line 1076
    .end local v48    # "p":S
    .end local v54    # "paramNames_sorted":[Ljava/lang/String;
    :cond_9
    if-eqz v53, :cond_b

    if-eqz v52, :cond_b

    const-string/jumbo v4, "get"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1077
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgzd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1078
    .local v5, "propertyName":Ljava/lang/String;
    move-object/from16 v0, v53

    invoke-static {v0, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v48

    .line 1079
    .local v48, "p":I
    if-gez v48, :cond_a

    .line 1080
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_5
    move-object/from16 v0, v53

    array-length v4, v0

    move/from16 v0, v40

    if-ge v0, v4, :cond_a

    .line 1081
    aget-object v4, v53, v40

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1082
    move/from16 v48, v40

    .line 1087
    .end local v40    # "i":I
    :cond_a
    if-ltz v48, :cond_b

    .line 1088
    aget-short v41, v52, v48

    .line 1089
    .local v41, "index":S
    aget-object v51, v50, v41

    .line 1090
    .local v51, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v51, :cond_b

    .line 1091
    move-object/from16 v0, v51

    array-length v8, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v8, :cond_b

    aget-object v49, v51, v4

    .line 1092
    .local v49, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v49

    instance-of v9, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v9, :cond_e

    move-object/from16 v12, v49

    .line 1093
    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1102
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v41    # "index":S
    .end local v48    # "p":I
    .end local v49    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v51    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_b
    const/16 v36, 0x0

    .line 1103
    .local v36, "fieldAnnotationExists":Z
    if-eqz v12, :cond_f

    .line 1104
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1108
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1109
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1111
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f

    .line 1112
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1115
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz p4, :cond_c

    .line 1116
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1117
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1122
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1123
    new-instance v4, Lgza;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v14}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1080
    .end local v36    # "fieldAnnotationExists":Z
    .restart local v40    # "i":I
    .restart local v48    # "p":I
    :cond_d
    add-int/lit8 v40, v40, 0x1

    goto :goto_5

    .line 1091
    .end local v40    # "i":I
    .restart local v41    # "index":S
    .restart local v49    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v51    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1129
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v41    # "index":S
    .end local v48    # "p":I
    .end local v49    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v51    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v36    # "fieldAnnotationExists":Z
    :cond_f
    const-string/jumbo v4, "get"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1130
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x4

    if-lt v4, v8, :cond_3

    const-string/jumbo v4, "getClass"

    .line 1131
    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1136
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v27

    .line 1139
    .local v27, "c3":C
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x4

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1155
    .restart local v5    # "propertyName":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lgzd;->a(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1159
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-static {v0, v5, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1160
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    .line 1161
    .local v13, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v7, :cond_10

    .line 1162
    if-eqz p6, :cond_1b

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    .line 1164
    :goto_8
    if-eqz v13, :cond_10

    .line 1165
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1169
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1170
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1172
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    .line 1173
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1174
    const/16 v36, 0x1

    .line 1176
    if-eqz p4, :cond_10

    .line 1177
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1178
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1186
    :cond_10
    if-eqz p8, :cond_11

    if-nez v36, :cond_11

    .line 1187
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1190
    :cond_11
    if-eqz p4, :cond_12

    .line 1191
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1192
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1197
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1198
    new-instance v4, Lgza;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v14, p7

    invoke-direct/range {v4 .. v14}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "c3":C
    :cond_13
    const-string/jumbo v4, "is"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1204
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x3

    if-lt v4, v8, :cond_3

    .line 1208
    const/4 v4, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v26

    .line 1211
    .local v26, "c2":C
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1225
    .restart local v5    # "propertyName":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lgzd;->a(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1229
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-static {v0, v5, v1, v2}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1231
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    if-nez v7, :cond_14

    .line 1232
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v33

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1235
    :cond_14
    const/4 v13, 0x0

    .line 1236
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v7, :cond_15

    .line 1237
    if-eqz p6, :cond_1e

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    .line 1239
    :goto_a
    if-eqz v13, :cond_15

    .line 1240
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1244
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1245
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1247
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15

    .line 1248
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1250
    if-eqz p4, :cond_15

    .line 1251
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1252
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1260
    :cond_15
    if-eqz p8, :cond_16

    .line 1261
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1264
    :cond_16
    if-eqz p4, :cond_17

    .line 1265
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1266
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1271
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v7, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1272
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1273
    new-instance v4, Lgza;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v14, p7

    invoke-direct/range {v4 .. v14}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1145
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "c2":C
    .restart local v27    # "c3":C
    :cond_18
    const/16 v4, 0x5f

    move/from16 v0, v27

    if-ne v0, v4, :cond_19

    .line 1146
    const/4 v4, 0x4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1147
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_19
    const/16 v4, 0x66

    move/from16 v0, v27

    if-ne v0, v4, :cond_1a

    .line 1148
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1149
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x5

    if-lt v4, v8, :cond_3

    const/4 v4, 0x4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1150
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgzd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_7

    .line 1162
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 1217
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "c3":C
    .restart local v26    # "c2":C
    :cond_1c
    const/16 v4, 0x5f

    move/from16 v0, v26

    if-ne v0, v4, :cond_1d

    .line 1218
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_9

    .line 1219
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_1d
    const/16 v4, 0x66

    move/from16 v0, v26

    if-ne v0, v4, :cond_3

    .line 1220
    const/4 v4, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_9

    .line 1237
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 1282
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "c2":C
    .end local v30    # "cls":Ljava/lang/Class;
    .end local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v36    # "fieldAnnotationExists":Z
    .end local v43    # "kotlin":Z
    .end local v44    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v45    # "methodName":Ljava/lang/String;
    .end local v50    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v52    # "paramNameMapping":[S
    .end local v53    # "paramNames":[Ljava/lang/String;
    :cond_1f
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    array-length v4, v0

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1283
    .local v29, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v33

    array-length v8, v0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v8, :cond_21

    aget-object v35, v33, v4

    .line 1284
    .local v35, "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_20

    .line 1288
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "this$0"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 1292
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_20

    .line 1293
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1297
    .end local v35    # "f":Ljava/lang/reflect/Field;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v25

    .local v25, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    if-eqz v25, :cond_24

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_24

    .line 1298
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v9, :cond_23

    aget-object v35, v8, v4

    .line 1299
    .restart local v35    # "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x8

    if-nez v14, :cond_22

    .line 1303
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_22

    .line 1304
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1297
    .end local v35    # "f":Ljava/lang/reflect/Field;
    :cond_23
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v25

    goto :goto_c

    .line 1310
    :cond_24
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_25
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 1311
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    if-eqz p6, :cond_29

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    .line 1313
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_f
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 1314
    .restart local v11    # "serialzeFeatures":I
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1315
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v13, :cond_26

    .line 1316
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1320
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1321
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1323
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_26

    .line 1324
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1328
    :cond_26
    if-eqz p4, :cond_27

    .line 1329
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1330
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_25

    .line 1335
    :cond_27
    if-eqz p8, :cond_28

    .line 1336
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1339
    :cond_28
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1340
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v7, v1}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1341
    new-instance v14, Lgza;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v23, v13

    move/from16 v24, p7

    invoke-direct/range {v14 .. v24}, Lgza;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1311
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_29
    const/4 v13, 0x0

    goto :goto_f

    .line 1355
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :cond_2a
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v38, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lgza;>;"
    const/16 v32, 0x0

    .line 1358
    .local v32, "containsAll":Z
    const/16 v47, 0x0

    .line 1360
    .local v47, "orders":[Ljava/lang/String;
    if-eqz p3, :cond_2b

    .line 1361
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v47

    .line 1363
    if-eqz v47, :cond_2d

    move-object/from16 v0, v47

    array-length v4, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v4, v8, :cond_2d

    .line 1364
    const/16 v32, 0x1

    .line 1365
    move-object/from16 v0, v47

    array-length v8, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v8, :cond_2b

    aget-object v42, v47, v4

    .line 1366
    .local v42, "item":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 1367
    const/16 v32, 0x0

    .line 1376
    .end local v42    # "item":Ljava/lang/String;
    :cond_2b
    :goto_11
    if-eqz v32, :cond_2e

    .line 1377
    move-object/from16 v0, v47

    array-length v8, v0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v8, :cond_30

    aget-object v42, v47, v4

    .line 1378
    .restart local v42    # "item":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lgza;

    .line 1379
    .local v37, "fieldInfo":Lgza;
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1365
    .end local v37    # "fieldInfo":Lgza;
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1372
    .end local v42    # "item":Ljava/lang/String;
    :cond_2d
    const/16 v32, 0x0

    goto :goto_11

    .line 1382
    :cond_2e
    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lgza;

    .line 1383
    .restart local v37    # "fieldInfo":Lgza;
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1386
    .end local v37    # "fieldInfo":Lgza;
    :cond_2f
    if-eqz p5, :cond_30

    .line 1387
    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1391
    :cond_30
    return-object v38
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1718
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lgzd;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 64
    sget-object v0, Lgzd;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lgzd;->d:Z

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    const-string/jumbo v0, "kotlin.Metadata"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgzd;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    sget-object v0, Lgzd;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_1
    return v0

    .line 68
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    sput-boolean v0, Lgzd;->d:Z

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lgzd;->c:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z
    .locals 8
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1465
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1466
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v0, v5, v2

    .line 1467
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v3

    .line 1476
    .end local v0    # "item":Ljava/lang/String;
    :goto_1
    return v2

    .line 1466
    .restart local v0    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1473
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1474
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1477
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1476
    invoke-static {v1, v2, p2}, Lgzd;->a(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 1474
    goto :goto_1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 12
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 80
    sget-object v9, Lgzd;->k:Ljava/util/Map;

    if-nez v9, :cond_0

    sget-boolean v9, Lgzd;->l:Z

    if-nez v9, :cond_0

    .line 82
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    const-string/jumbo v9, "kim"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "charRangeClass":Ljava/lang/Class;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getEndInclusive"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "isEmpty"

    aput-object v11, v9, v10

    invoke-interface {v6, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v9, "kir"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 88
    .local v4, "intRangeClass":Ljava/lang/Class;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getEndInclusive"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "isEmpty"

    aput-object v11, v9, v10

    invoke-interface {v6, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v9, "kiu"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 91
    .local v5, "longRangeClass":Ljava/lang/Class;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getEndInclusive"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "isEmpty"

    aput-object v11, v9, v10

    invoke-interface {v6, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v9, "kio"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 94
    .local v2, "floatRangeClass":Ljava/lang/Class;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getEndInclusive"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "isEmpty"

    aput-object v11, v9, v10

    invoke-interface {v6, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v9, "kin"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "doubleRangeClass":Ljava/lang/Class;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "getEndInclusive"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "isEmpty"

    aput-object v11, v9, v10

    invoke-interface {v6, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sput-object v6, Lgzd;->k:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "charRangeClass":Ljava/lang/Class;
    .end local v1    # "doubleRangeClass":Ljava/lang/Class;
    .end local v2    # "floatRangeClass":Ljava/lang/Class;
    .end local v4    # "intRangeClass":Ljava/lang/Class;
    .end local v5    # "longRangeClass":Ljava/lang/Class;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    :cond_0
    :goto_0
    sget-object v9, Lgzd;->k:Ljava/util/Map;

    if-nez v9, :cond_2

    .line 114
    :cond_1
    :goto_1
    return v7

    .line 101
    :catch_0
    move-exception v9

    sput-boolean v8, Lgzd;->l:Z

    goto :goto_0

    .line 109
    :cond_2
    sget-object v9, Lgzd;->k:Ljava/util/Map;

    invoke-interface {v9, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 110
    .local v3, "ignores":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 114
    invoke-static {v3, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_1

    move v7, v8

    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z
    .locals 5
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "classMofifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Member;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1539
    if-eqz p1, :cond_0

    sget-boolean v4, Lgzd;->b:Z

    if-nez v4, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return v2

    .line 1545
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1547
    .local v1, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    const-class v4, Ljava/lang/Object;

    if-ne v1, v4, :cond_3

    .line 1548
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_0

    :cond_3
    move-object v0, p1

    .line 1554
    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    .line 1557
    .local v0, "obj":Ljava/lang/reflect/AccessibleObject;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 1558
    goto :goto_0

    .line 1560
    :catch_0
    move-exception v3

    sput-boolean v2, Lgzd;->b:Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1482
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 1492
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v0, "superType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v1

    .line 1486
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_3

    .line 1487
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1488
    .restart local v0    # "superType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    .line 1489
    invoke-static {v0}, Lgzd;->a(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 1488
    goto :goto_0

    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    move v1, v2

    .line 1492
    goto :goto_0
.end method

.method public static a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 10
    .param p0, "typeArgs"    # [Ljava/lang/reflect/Type;
    .param p1, "typeVariables"    # [Ljava/lang/reflect/TypeVariable;
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 1670
    if-eqz p2, :cond_0

    array-length v7, p1

    if-nez v7, :cond_2

    .line 1671
    :cond_0
    const/4 v0, 0x0

    .line 1695
    :cond_1
    return v0

    .line 1674
    :cond_2
    const/4 v0, 0x0

    .line 1675
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_1

    .line 1676
    aget-object v6, p0, v1

    .line 1677
    .local v6, "typeArg":Ljava/lang/reflect/Type;
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_4

    move-object v4, v6

    .line 1678
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1679
    .local v4, "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1680
    .local v5, "p_typeArg_args":[Ljava/lang/reflect/Type;
    invoke-static {v5, p1, p2}, Lgzd;->a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v3

    .line 1681
    .local v3, "p_changed":Z
    if-eqz v3, :cond_3

    .line 1682
    new-instance v7, Lgzc;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lgzc;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v7, p0, v1

    .line 1683
    const/4 v0, 0x1

    .line 1675
    .end local v3    # "p_changed":Z
    .end local v4    # "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "p_typeArg_args":[Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1685
    :cond_4
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_3

    .line 1686
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_3

    .line 1687
    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1688
    aget-object v7, p2, v2

    aput-object v7, p0, v1

    .line 1689
    const/4 v0, 0x1

    .line 1686
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 178
    if-nez p0, :cond_1

    .line 193
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 182
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 183
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 186
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 196
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to byte, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 658
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 659
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 660
    const/4 v5, 0x0

    .line 668
    .end local v2    # "name":Ljava/lang/String;
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 662
    .restart local v2    # "name":Ljava/lang/String;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    goto :goto_0

    .line 664
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 665
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 666
    .local v3, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 667
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 668
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    .end local v3    # "ordinal":I
    .end local v4    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 672
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "can not cast to : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 675
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "can not cast to : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1525
    if-eqz p0, :cond_0

    .line 1526
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1528
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1535
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1533
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1534
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1535
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 12
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1588
    array-length v9, p2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v2, p2, v7

    .line 1589
    .local v2, "item":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1590
    .local v3, "itemName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1617
    .end local v2    # "item":Ljava/lang/reflect/Field;
    .end local v3    # "itemName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 1595
    .restart local v2    # "item":Ljava/lang/reflect/Field;
    .restart local v3    # "itemName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_2

    .line 1596
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c0":C
    const/16 v10, 0x61

    if-lt v0, v10, :cond_2

    const/16 v10, 0x7a

    if-gt v0, v10, :cond_2

    const/4 v10, 0x1

    .line 1597
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c1":C
    const/16 v10, 0x41

    if-lt v1, v10, :cond_2

    const/16 v10, 0x5a

    if-gt v1, v10, :cond_2

    .line 1598
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1588
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1603
    .end local v2    # "item":Ljava/lang/reflect/Field;
    .end local v3    # "itemName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 1605
    .local v4, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_4

    const-class v7, Ljava/lang/Object;

    if-ne v4, v7, :cond_5

    :cond_4
    move-object v2, v6

    .line 1606
    goto :goto_1

    .line 1609
    :cond_5
    if-eqz p3, :cond_7

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Field;

    move-object v5, v6

    .line 1610
    .local v5, "superClassFields":[Ljava/lang/reflect/Field;
    :goto_2
    if-nez v5, :cond_6

    .line 1611
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1612
    if-eqz p3, :cond_6

    .line 1613
    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    :cond_6
    invoke-static {v4, p1, v5, p3}, Lgzd;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_1

    .end local v5    # "superClassFields":[Ljava/lang/reflect/Field;
    :cond_7
    move-object v5, v6

    .line 1609
    goto :goto_2
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1496
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .line 1497
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lgzd;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 15
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 118
    sget-object v12, Lgzd;->f:Ljava/lang/reflect/Constructor;

    if-nez v12, :cond_0

    sget-boolean v12, Lgzd;->e:Z

    if-nez v12, :cond_0

    .line 120
    :try_start_0
    const-string/jumbo v12, "kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    sput-object v12, Lgzd;->f:Ljava/lang/reflect/Constructor;

    .line 122
    const-string/jumbo v12, "getConstructors"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lgzd;->g:Ljava/lang/reflect/Method;

    .line 124
    const-string/jumbo v12, "kjc"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 125
    .local v1, "class_kotlin_kfunction":Ljava/lang/Class;
    const-string/jumbo v12, "getParameters"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v1, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lgzd;->h:Ljava/lang/reflect/Method;

    .line 127
    const-string/jumbo v12, "kotlin.reflect.KParameter"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 128
    .local v2, "class_kotlinn_kparameter":Ljava/lang/Class;
    const-string/jumbo v12, "getName"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    sput-object v12, Lgzd;->i:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    .end local v1    # "class_kotlin_kfunction":Ljava/lang/Class;
    .end local v2    # "class_kotlinn_kparameter":Ljava/lang/Class;
    :cond_0
    :goto_0
    sget-object v12, Lgzd;->f:Ljava/lang/reflect/Constructor;

    if-nez v12, :cond_2

    .line 135
    const/4 v9, 0x0

    .line 166
    :cond_1
    :goto_1
    return-object v9

    .line 130
    :catch_0
    move-exception v12

    const/4 v12, 0x1

    sput-boolean v12, Lgzd;->e:Z

    goto :goto_0

    .line 138
    :cond_2
    sget-boolean v12, Lgzd;->j:Z

    if-eqz v12, :cond_3

    .line 139
    const/4 v9, 0x0

    goto :goto_1

    .line 143
    :cond_3
    const/4 v3, 0x0

    .line 144
    .local v3, "constructor":Ljava/lang/Object;
    :try_start_1
    sget-object v12, Lgzd;->f:Ljava/lang/reflect/Constructor;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 145
    .local v8, "kclassImpl":Ljava/lang/Object;
    sget-object v12, Lgzd;->g:Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 146
    .local v5, "it":Ljava/lang/Iterable;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v3    # "constructor":Ljava/lang/Object;
    .local v7, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 147
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 148
    .local v6, "item":Ljava/lang/Object;
    sget-object v12, Lgzd;->h:Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 149
    .local v11, "parameters":Ljava/util/List;
    if-eqz v3, :cond_4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_5

    .line 152
    :cond_4
    move-object v3, v6

    .line 146
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 163
    .end local v5    # "it":Ljava/lang/Iterable;
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "iterator":Ljava/util/Iterator;
    .end local v8    # "kclassImpl":Ljava/lang/Object;
    .end local v11    # "parameters":Ljava/util/List;
    :catch_1
    move-exception v12

    const/4 v12, 0x1

    sput-boolean v12, Lgzd;->j:Z

    .line 166
    const/4 v9, 0x0

    goto :goto_1

    .line 155
    .restart local v5    # "it":Ljava/lang/Iterable;
    .restart local v7    # "iterator":Ljava/util/Iterator;
    .restart local v8    # "kclassImpl":Ljava/lang/Object;
    :cond_6
    :try_start_2
    sget-object v12, Lgzd;->h:Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 156
    .restart local v11    # "parameters":Ljava/util/List;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    new-array v9, v12, [Ljava/lang/String;

    .line 157
    .local v9, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_1

    .line 158
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 159
    .local v10, "param":Ljava/lang/Object;
    sget-object v12, Lgzd;->i:Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v9, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static c(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1699
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1700
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1701
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1702
    .local v0, "ch":C
    const/16 v4, 0x5f

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_1

    .line 1706
    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_0

    .line 1707
    add-int/lit8 v4, v0, 0x20

    int-to-char v0, v4

    .line 1710
    :cond_0
    int-to-long v4, v0

    xor-long/2addr v2, v4

    .line 1711
    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    .line 1700
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1714
    .end local v0    # "ch":C
    :cond_2
    return-wide v2
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p0, :cond_0

    move-object p0, v1

    .line 219
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 204
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 205
    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    .line 208
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 209
    check-cast v0, Ljava/lang/String;

    .line 211
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 216
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to byte, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 222
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to byte, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1502
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 1503
    check-cast p0, Ljava/lang/Class;

    .line 1521
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_1
    return-object p0

    .line 1506
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 1507
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 1510
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_2

    .line 1511
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Class;

    move-object p0, v1

    goto :goto_1

    .line 1514
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_3

    .line 1515
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1516
    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1517
    aget-object p0, v0, v3

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 1521
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    const-class p0, Ljava/lang/Object;

    goto :goto_1
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1649
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 1650
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1666
    :goto_0
    return-object v0

    .line 1651
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 1652
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 1653
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 1654
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1655
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 1656
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1657
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 1658
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1659
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 1660
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1661
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 1662
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1663
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 1664
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 1666
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final d(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 226
    if-nez p0, :cond_1

    .line 241
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 230
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 231
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 234
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 235
    check-cast v0, Ljava/lang/String;

    .line 236
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 244
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to short, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x0

    .line 1621
    const/4 v2, 0x0

    .line 1623
    .local v2, "itemType":Ljava/lang/reflect/Type;
    instance-of v6, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    .line 1624
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v0, v6, v8

    .line 1626
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v6, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 1627
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 1628
    .local v5, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1629
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1630
    aget-object v0, v4, v8

    .line 1634
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_0
    move-object v2, v0

    .line 1641
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 1642
    const-class v2, Ljava/lang/Object;

    .line 1645
    :cond_2
    return-object v2

    .line 1635
    .restart local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v6, p0, Ljava/lang/Class;

    if-eqz v6, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    .line 1636
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1637
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1638
    .local v3, "superClass":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lgzd;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0
.end method

.method public static final e(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 248
    if-nez p0, :cond_0

    move-object p0, v1

    .line 266
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 252
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 253
    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    .line 256
    :cond_1
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 257
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v1

    goto :goto_0

    .line 260
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "null"

    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_4
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final f(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 270
    if-nez p0, :cond_0

    move-object p0, v1

    .line 288
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 274
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 275
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    .line 278
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 279
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 282
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "null"

    .line 284
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 285
    goto :goto_0

    .line 288
    :cond_5
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 292
    if-nez p0, :cond_1

    .line 307
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 296
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 297
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 300
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 303
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 310
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to float, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 314
    if-nez p0, :cond_1

    .line 330
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 318
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 319
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 322
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "null"

    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "NULL"

    .line 326
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 333
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to double, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final i(Ljava/lang/Object;)Ljava/util/Date;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 337
    if-nez p0, :cond_0

    move-object p0, v6

    .line 395
    .end local p0    # "value":Ljava/lang/Object;
    .local v2, "longValue":J
    :goto_0
    return-object p0

    .line 341
    .end local v2    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, p0, Ljava/util/Calendar;

    if-eqz v5, :cond_1

    .line 342
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 345
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, p0, Ljava/util/Date;

    if-eqz v5, :cond_2

    .line 346
    check-cast p0, Ljava/util/Date;

    goto :goto_0

    .line 349
    :cond_2
    const-wide/16 v2, -0x1

    .line 351
    .restart local v2    # "longValue":J
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_3

    move-object v5, p0

    .line 352
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 355
    :cond_3
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object v4, p0

    .line 356
    check-cast v4, Ljava/lang/String;

    .line 358
    .local v4, "strVal":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_8

    .line 360
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Lgxk;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 361
    sget-object v1, Lgxk;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 374
    .local v1, "format":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v5, Lgxk;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 375
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v5, Lgxk;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 377
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 362
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "format":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 363
    const-string/jumbo v1, "yyyy-MM-dd"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 364
    .end local v1    # "format":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_6

    .line 365
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 366
    .end local v1    # "format":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1d

    if-ne v5, v6, :cond_7

    const/16 v5, 0x1a

    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_7

    const/16 v5, 0x1c

    .line 368
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_7

    .line 369
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 371
    .end local v1    # "format":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 379
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "can not cast to Date, value : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "format":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "null"

    .line 384
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move-object p0, v6

    .line 385
    goto/16 :goto_0

    .line 388
    :cond_a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 391
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_c

    .line 392
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "can not cast to Date, value : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 395
    :cond_c
    new-instance p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static final j(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 399
    if-nez p0, :cond_1

    .line 428
    .local v2, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 403
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 404
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 407
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v2, p0

    .line 408
    check-cast v2, Ljava/lang/String;

    .line 409
    .restart local v2    # "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "null"

    .line 410
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 415
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 420
    :catch_0
    move-exception v3

    new-instance v1, Lgxt;

    invoke-direct {v1, v2}, Lgxt;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "dateParser":Lgxt;
    const/4 v0, 0x0

    .line 422
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgxt;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    iget-object v0, v1, Lgxt;->n:Ljava/util/Calendar;

    .line 425
    :cond_3
    invoke-virtual {v1}, Lgxt;->b()V

    .line 427
    if-eqz v0, :cond_4

    .line 428
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 432
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateParser":Lgxt;
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "can not cast to long, value : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final k(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 436
    if-nez p0, :cond_0

    move-object p0, v1

    .line 455
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 440
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 441
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 444
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 445
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 448
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 449
    check-cast v0, Ljava/lang/String;

    .line 450
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "null"

    .line 451
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p0, v1

    .line 452
    goto :goto_0

    .line 455
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 458
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to int, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final l(Ljava/lang/Object;)[B
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 462
    instance-of v1, p0, [B

    if-eqz v1, :cond_0

    .line 463
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    .line 468
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 466
    .end local v0    # "string":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 467
    check-cast v0, Ljava/lang/String;

    .line 468
    .restart local v0    # "string":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lgxt;->a(Ljava/lang/String;II)[B

    move-result-object p0

    goto :goto_0

    .line 470
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to int, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final m(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 474
    if-nez p0, :cond_0

    move-object p0, v2

    .line 499
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 478
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 479
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 482
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 483
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 486
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v0, p0

    .line 487
    check-cast v0, Ljava/lang/String;

    .line 488
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "null"

    .line 489
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object p0, v2

    .line 490
    goto :goto_0

    .line 493
    :cond_5
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "1"

    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 495
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 497
    :cond_7
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "0"

    .line 498
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 499
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 503
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "can not cast to int, value : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
