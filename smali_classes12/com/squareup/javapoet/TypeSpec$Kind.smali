.class public final enum Lcom/squareup/javapoet/TypeSpec$Kind;
.super Ljava/lang/Enum;
.source "TypeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/TypeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/javapoet/TypeSpec$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/javapoet/TypeSpec$Kind;

.field public static final enum ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

.field public static final enum CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

.field public static final enum ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

.field public static final enum INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;


# instance fields
.field private final asMemberModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final implicitFieldModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final implicitMethodModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final implicitTypeModifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v0, Lcom/squareup/javapoet/TypeSpec$Kind;

    const-string/jumbo v1, "CLASS"

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/squareup/javapoet/TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v0, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 361
    new-instance v3, Lcom/squareup/javapoet/TypeSpec$Kind;

    const-string/jumbo v4, "INTERFACE"

    new-array v0, v12, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v10

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v11

    .line 362
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v6

    new-array v0, v11, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v10

    .line 363
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    new-array v0, v11, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v10

    .line 364
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v8

    new-array v0, v10, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    .line 365
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v9

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/squareup/javapoet/TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v3, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 367
    new-instance v3, Lcom/squareup/javapoet/TypeSpec$Kind;

    const-string/jumbo v4, "ENUM"

    .line 368
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    .line 369
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    .line 371
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/squareup/javapoet/TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v3, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 373
    new-instance v3, Lcom/squareup/javapoet/TypeSpec$Kind;

    const-string/jumbo v4, "ANNOTATION"

    new-array v0, v12, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v10

    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v11

    .line 374
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v6

    new-array v0, v11, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v10

    .line 375
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    new-array v0, v11, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v10

    .line 376
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v8

    new-array v0, v10, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v2

    .line 377
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljhx;->b(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v9

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/squareup/javapoet/TypeSpec$Kind;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    sput-object v3, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 354
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v1, v0, v10

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v1, v0, v11

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v1, v0, v12

    sput-object v0, Lcom/squareup/javapoet/TypeSpec$Kind;->$VALUES:[Lcom/squareup/javapoet/TypeSpec$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p3, "implicitFieldModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .local p4, "implicitMethodModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .local p5, "implicitTypeModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    .local p6, "asMemberModifiers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/Modifier;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 388
    iput-object p3, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->implicitFieldModifiers:Ljava/util/Set;

    .line 389
    iput-object p4, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->implicitMethodModifiers:Ljava/util/Set;

    .line 390
    iput-object p5, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->implicitTypeModifiers:Ljava/util/Set;

    .line 391
    iput-object p6, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->asMemberModifiers:Ljava/util/Set;

    .line 392
    return-void
.end method

.method static synthetic access$1700(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/javapoet/TypeSpec$Kind;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->asMemberModifiers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/javapoet/TypeSpec$Kind;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->implicitFieldModifiers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/javapoet/TypeSpec$Kind;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->implicitMethodModifiers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/javapoet/TypeSpec$Kind;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Kind;->implicitTypeModifiers:Ljava/util/Set;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 354
    const-class v0, Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec$Kind;

    return-object v0
.end method

.method public static values()[Lcom/squareup/javapoet/TypeSpec$Kind;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/squareup/javapoet/TypeSpec$Kind;->$VALUES:[Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-virtual {v0}, [Lcom/squareup/javapoet/TypeSpec$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/javapoet/TypeSpec$Kind;

    return-object v0
.end method
