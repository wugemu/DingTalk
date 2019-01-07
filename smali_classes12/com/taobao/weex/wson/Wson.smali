.class public Lcom/taobao/weex/wson/Wson;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/wson/Wson$Builder;,
        Lcom/taobao/weex/wson/Wson$Parser;
    }
.end annotation


# static fields
.field private static final ARRAY_TYPE:B = 0x5bt

.field private static final BOOLEAN_TYPE_FALSE:B = 0x66t

.field private static final BOOLEAN_TYPE_TRUE:B = 0x74t

.field private static final GLOBAL_STRING_CACHE_SIZE:I = 0x800

.field private static final IS_NATIVE_LITTLE_ENDIAN:Z

.field private static final MAP_TYPE:B = 0x7bt

.field private static final METHOD_PREFIX_GET:Ljava/lang/String; = "get"

.field private static final METHOD_PREFIX_IS:Ljava/lang/String; = "is"

.field private static final NULL_TYPE:B = 0x30t

.field private static final NUMBER_BIG_DECIMAL_TYPE:B = 0x65t

.field private static final NUMBER_BIG_INTEGER_TYPE:B = 0x67t

.field private static final NUMBER_DOUBLE_TYPE:B = 0x64t

.field private static final NUMBER_FLOAT_TYPE:B = 0x46t

.field private static final NUMBER_INT_TYPE:B = 0x69t

.field private static final NUMBER_LONG_TYPE:B = 0x6ct

.field private static final STRING_TYPE:B = 0x73t

.field public static final WriteMapNullValue:Z

.field private static fieldsCache:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final globalStringBytesCache:[Ljava/lang/String;

.field private static final localCharsBufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static methodsCache:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static specialClass:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    .line 757
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    .line 758
    const/16 v0, 0x800

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    .line 768
    new-instance v0, Lfq;

    invoke-direct {v0, v2}, Lfq;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->methodsCache:Lfq;

    .line 769
    new-instance v0, Lfq;

    invoke-direct {v0, v2}, Lfq;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->fieldsCache:Lfq;

    .line 770
    new-instance v0, Lfq;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Lfq;

    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    return v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Lfq;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Lfq;

    return-object v0
.end method

.method private static final getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "targetClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    sget-object v3, Lcom/taobao/weex/wson/Wson;->fieldsCache:Lfq;

    invoke-virtual {v3, p0}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 803
    .local v1, "fieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-nez v1, :cond_3

    .line 804
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 805
    .local v2, "fields":[Ljava/lang/reflect/Field;
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 806
    .restart local v1    # "fieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 807
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_1

    .line 810
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 811
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 813
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 815
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_2
    sget-object v3, Lcom/taobao/weex/wson/Wson;->fieldsCache:Lfq;

    invoke-virtual {v3, p0, v1}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_3
    return-object v1
.end method

.method private static final getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "targetClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 774
    sget-object v4, Lcom/taobao/weex/wson/Wson;->methodsCache:Lfq;

    invoke-virtual {v4, p0}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 775
    .local v3, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_4

    .line 776
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .restart local v3    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 778
    .local v0, "allMethods":[Ljava/lang/reflect/Method;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 779
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_2

    .line 782
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_2

    .line 785
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, "methodName":Ljava/lang/String;
    const-string/jumbo v6, "get"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "is"

    .line 787
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 788
    :cond_0
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 789
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 791
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 794
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_3
    sget-object v4, Lcom/taobao/weex/wson/Wson;->methodsCache:Lfq;

    invoke-virtual {v4, p0, v3}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .end local v0    # "allMethods":[Ljava/lang/reflect/Method;
    :cond_4
    return-object v3
.end method

.method public static final parse([B)Ljava/lang/Object;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 94
    if-nez p0, :cond_0

    move-object v1, v3

    .line 104
    :goto_0
    return-object v1

    .line 98
    :cond_0
    :try_start_0
    new-instance v2, Lcom/taobao/weex/wson/Wson$Parser;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([BLcom/taobao/weex/wson/Wson$1;)V

    .line 99
    .local v2, "parser":Lcom/taobao/weex/wson/Wson$Parser;
    invoke-static {v2}, Lcom/taobao/weex/wson/Wson$Parser;->access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v2}, Lcom/taobao/weex/wson/Wson$Parser;->access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "parser":Lcom/taobao/weex/wson/Wson$Parser;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "parseWson"

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 104
    goto :goto_0
.end method

.method public static final toWson(Ljava/lang/Object;)[B
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 113
    if-nez p0, :cond_0

    .line 119
    :goto_0
    return-object v0

    .line 116
    :cond_0
    new-instance v1, Lcom/taobao/weex/wson/Wson$Builder;

    invoke-direct {v1, v0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>(Lcom/taobao/weex/wson/Wson$1;)V

    .line 117
    .local v1, "builder":Lcom/taobao/weex/wson/Wson$Builder;
    invoke-static {v1, p0}, Lcom/taobao/weex/wson/Wson$Builder;->access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B

    move-result-object v0

    .line 118
    .local v0, "bts":[B
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Builder;->access$500(Lcom/taobao/weex/wson/Wson$Builder;)V

    goto :goto_0
.end method
