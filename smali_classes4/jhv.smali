.class public Ljhv;
.super Ljava/lang/Object;
.source "TypeName.java"


# static fields
.field private static final a:Ljhn;

.field private static final b:Ljhn;

.field private static final c:Ljhn;

.field public static final d:Ljhv;

.field public static final e:Ljhv;

.field public static final f:Ljhv;

.field public static final g:Ljhv;

.field public static final h:Ljhv;

.field public static final i:Ljhv;

.field public static final j:Ljhv;

.field public static final k:Ljhv;

.field public static final l:Ljhv;

.field public static final m:Ljhn;

.field private static final o:Ljhn;

.field private static final p:Ljhn;

.field private static final q:Ljhn;

.field private static final r:Ljhn;

.field private static final s:Ljhn;

.field private static final t:Ljhn;


# instance fields
.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v0, Ljhv;

    const-string/jumbo v1, "void"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->d:Ljhv;

    .line 70
    new-instance v0, Ljhv;

    const-string/jumbo v1, "boolean"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->e:Ljhv;

    .line 71
    new-instance v0, Ljhv;

    const-string/jumbo v1, "byte"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->f:Ljhv;

    .line 72
    new-instance v0, Ljhv;

    const-string/jumbo v1, "short"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->g:Ljhv;

    .line 73
    new-instance v0, Ljhv;

    const-string/jumbo v1, "int"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->h:Ljhv;

    .line 74
    new-instance v0, Ljhv;

    const-string/jumbo v1, "long"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->i:Ljhv;

    .line 75
    new-instance v0, Ljhv;

    const-string/jumbo v1, "char"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->j:Ljhv;

    .line 76
    new-instance v0, Ljhv;

    const-string/jumbo v1, "float"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->k:Ljhv;

    .line 77
    new-instance v0, Ljhv;

    const-string/jumbo v1, "double"

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljhv;->l:Ljhv;

    .line 78
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Object"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->m:Ljhn;

    .line 80
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Void"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->a:Ljhn;

    .line 81
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Boolean"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->b:Ljhn;

    .line 82
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Byte"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->c:Ljhn;

    .line 83
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Short"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->o:Ljhn;

    .line 84
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Integer"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->p:Ljhn;

    .line 85
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Long"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->q:Ljhn;

    .line 86
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Character"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->r:Ljhn;

    .line 87
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Float"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->s:Ljhn;

    .line 88
    const-string/jumbo v0, "java.lang"

    const-string/jumbo v1, "Double"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljhn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljhn;

    move-result-object v0

    sput-object v0, Ljhv;->t:Ljhn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Ljhv;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 99
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Ljhv;->u:Ljava/lang/String;

    .line 103
    invoke-static {p2}, Ljhx;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljhv;->n:Ljava/util/List;

    .line 104
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljhl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "annotations":Ljava/util/List;, "Ljava/util/List<Ljhl;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljhv;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 109
    return-void
.end method

.method static a([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljhw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljhv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Ljhw;>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljhv;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 361
    .local v1, "type":Ljava/lang/reflect/Type;
    invoke-static {v1, p1}, Ljhv;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljhv;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljhv;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 318
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Ljhv;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljhv;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljhv;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljhw;",
            ">;)",
            "Ljhv;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Ljhw;>;"
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_b

    move-object v0, p0

    .line 323
    check-cast v0, Ljava/lang/Class;

    .line 324
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_1

    sget-object v1, Ljhv;->d:Ljhv;

    .line 346
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object v1

    .line 325
    .restart local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2

    sget-object v1, Ljhv;->e:Ljhv;

    goto :goto_0

    .line 326
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    sget-object v1, Ljhv;->f:Ljhv;

    goto :goto_0

    .line 327
    :cond_3
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    sget-object v1, Ljhv;->g:Ljhv;

    goto :goto_0

    .line 328
    :cond_4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    sget-object v1, Ljhv;->h:Ljhv;

    goto :goto_0

    .line 329
    :cond_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    sget-object v1, Ljhv;->i:Ljhv;

    goto :goto_0

    .line 330
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    sget-object v1, Ljhv;->j:Ljhv;

    goto :goto_0

    .line 331
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    sget-object v1, Ljhv;->k:Ljhv;

    goto :goto_0

    .line 332
    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9

    sget-object v1, Ljhv;->l:Ljhv;

    goto :goto_0

    .line 333
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljhv;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljhv;

    move-result-object v1

    invoke-static {v1}, Ljhm;->a(Ljhv;)Ljhm;

    move-result-object v1

    goto :goto_0

    .line 334
    :cond_a
    invoke-static {v0}, Ljhn;->a(Ljava/lang/Class;)Ljhn;

    move-result-object v1

    goto :goto_0

    .line 336
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_c

    .line 337
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Ljhu;->a(Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Ljhu;

    move-result-object v1

    goto :goto_0

    .line 339
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_c
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_d

    .line 340
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 2125
    .end local p0    # "type":Ljava/lang/reflect/Type;
    new-instance v1, Ljhy;

    .line 2126
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2, p1}, Ljhy;->a([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 2127
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, p1}, Ljhy;->a([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljhy;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 342
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_d
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_f

    .line 343
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 2154
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljhw;

    .line 2155
    if-nez v1, :cond_0

    .line 2156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2157
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2158
    new-instance v1, Ljhw;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Ljhw;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2159
    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_e

    aget-object v6, v4, v2

    .line 2161
    invoke-static {v6, p1}, Ljhv;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljhv;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2163
    :cond_e
    sget-object v2, Ljhw;->m:Ljhn;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 345
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_f
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_10

    .line 346
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 3080
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1}, Ljhm;->a(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljhv;

    move-result-object v1

    invoke-static {v1}, Ljhm;->a(Ljhv;)Ljhm;

    move-result-object v1

    goto/16 :goto_0

    .line 349
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unexpected type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljavax/lang/model/type/TypeMirror;)Ljhv;
    .locals 2
    .param p0, "mirror"    # Ljavax/lang/model/type/TypeMirror;

    .prologue
    .line 238
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1243
    new-instance v1, Ljhv$1;

    invoke-direct {v1, v0}, Ljhv$1;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhv;

    .line 238
    return-object v0
.end method

.method static b(Ljhv;)Ljhv;
    .locals 1
    .param p0, "type"    # Ljhv;

    .prologue
    .line 368
    instance-of v0, p0, Ljhm;

    if-eqz v0, :cond_0

    .line 369
    check-cast p0, Ljhm;

    .end local p0    # "type":Ljhv;
    iget-object v0, p0, Ljhm;->a:Ljhv;

    :goto_0
    return-object v0

    .line 370
    .restart local p0    # "type":Ljhv;
    :cond_0
    const/4 v0, 0x0

    .line 368
    goto :goto_0
.end method


# virtual methods
.method a(Ljhp;)Ljhp;
    .locals 1
    .param p1, "out"    # Ljhp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Ljhv;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Ljhv;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljhv;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    new-instance v0, Ljhv;

    iget-object v1, p0, Ljhv;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljhv;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method final b(Ljhp;)Ljhp;
    .locals 3
    .param p1, "out"    # Ljhp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 229
    iget-object v1, p0, Ljhv;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhl;

    .line 230
    .local v0, "annotation":Ljhl;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Ljhl;->a(Ljhp;Z)V

    .line 231
    const-string/jumbo v2, " "

    .line 1206
    invoke-virtual {p1, v2}, Ljhp;->b(Ljava/lang/String;)Ljhp;

    goto :goto_0

    .line 233
    .end local v0    # "annotation":Ljhl;
    :cond_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 199
    invoke-virtual {p0}, Ljhv;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Ljhv;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljhv;->d:Ljhv;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Ljhv;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 207
    iget-object v1, p0, Ljhv;->v:Ljava/lang/String;

    .line 208
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 210
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v2, "resultBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljhp;

    invoke-direct {v0, v2}, Ljhp;-><init>(Ljava/lang/Appendable;)V

    .line 212
    .local v0, "codeWriter":Ljhp;
    invoke-virtual {p0, v0}, Ljhv;->b(Ljhp;)Ljhp;

    .line 213
    invoke-virtual {p0, v0}, Ljhv;->a(Ljhp;)Ljhp;

    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    iput-object v1, p0, Ljhv;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "codeWriter":Ljhp;
    .end local v2    # "resultBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-object v1

    .line 217
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method
