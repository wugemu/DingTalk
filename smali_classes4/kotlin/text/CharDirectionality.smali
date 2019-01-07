.class public final enum Lkotlin/text/CharDirectionality;
.super Ljava/lang/Enum;
.source "CharDirectionality.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/CharDirectionality$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkotlin/text/CharDirectionality;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0086\u0001\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/text/CharDirectionality;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "UNDEFINED",
        "LEFT_TO_RIGHT",
        "RIGHT_TO_LEFT",
        "RIGHT_TO_LEFT_ARABIC",
        "EUROPEAN_NUMBER",
        "EUROPEAN_NUMBER_SEPARATOR",
        "EUROPEAN_NUMBER_TERMINATOR",
        "ARABIC_NUMBER",
        "COMMON_NUMBER_SEPARATOR",
        "NONSPACING_MARK",
        "BOUNDARY_NEUTRAL",
        "PARAGRAPH_SEPARATOR",
        "SEGMENT_SEPARATOR",
        "WHITESPACE",
        "OTHER_NEUTRALS",
        "LEFT_TO_RIGHT_EMBEDDING",
        "LEFT_TO_RIGHT_OVERRIDE",
        "RIGHT_TO_LEFT_EMBEDDING",
        "RIGHT_TO_LEFT_OVERRIDE",
        "POP_DIRECTIONAL_FORMAT",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/text/CharDirectionality;

.field public static final enum ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

.field public static final enum COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final Companion:Lkotlin/text/CharDirectionality$a;

.field public static final enum EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum NONSPACING_MARK:Lkotlin/text/CharDirectionality;

.field public static final enum OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

.field public static final enum RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

.field public static final enum SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

.field public static final enum UNDEFINED:Lkotlin/text/CharDirectionality;

.field public static final enum WHITESPACE:Lkotlin/text/CharDirectionality;

.field private static final directionalityMap$delegate:Lkfo;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [Lkotlin/text/CharDirectionality;

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string/jumbo v2, "UNDEFINED"

    const/4 v3, -0x1

    .line 15
    invoke-direct {v1, v2, v6, v3}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->UNDEFINED:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v6

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string/jumbo v2, "LEFT_TO_RIGHT"

    .line 20
    invoke-direct {v1, v2, v4, v6}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string/jumbo v2, "RIGHT_TO_LEFT"

    .line 25
    invoke-direct {v1, v2, v5, v4}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string/jumbo v2, "RIGHT_TO_LEFT_ARABIC"

    .line 30
    invoke-direct {v1, v2, v7, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_ARABIC:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v7

    new-instance v1, Lkotlin/text/CharDirectionality;

    const-string/jumbo v2, "EUROPEAN_NUMBER"

    .line 35
    invoke-direct {v1, v2, v8, v7}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER:Lkotlin/text/CharDirectionality;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v4, 0x5

    .line 40
    invoke-direct {v2, v3, v4, v8}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v4, 0x6

    const/4 v5, 0x5

    .line 45
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "ARABIC_NUMBER"

    const/4 v4, 0x7

    const/4 v5, 0x6

    .line 50
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->ARABIC_NUMBER:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "COMMON_NUMBER_SEPARATOR"

    const/16 v4, 0x8

    const/4 v5, 0x7

    .line 55
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->COMMON_NUMBER_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "NONSPACING_MARK"

    const/16 v4, 0x9

    const/16 v5, 0x8

    .line 60
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->NONSPACING_MARK:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "BOUNDARY_NEUTRAL"

    const/16 v4, 0xa

    const/16 v5, 0x9

    .line 65
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->BOUNDARY_NEUTRAL:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "PARAGRAPH_SEPARATOR"

    const/16 v4, 0xb

    const/16 v5, 0xa

    .line 70
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->PARAGRAPH_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "SEGMENT_SEPARATOR"

    const/16 v4, 0xc

    const/16 v5, 0xb

    .line 75
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->SEGMENT_SEPARATOR:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "WHITESPACE"

    const/16 v4, 0xd

    const/16 v5, 0xc

    .line 80
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->WHITESPACE:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "OTHER_NEUTRALS"

    const/16 v4, 0xe

    const/16 v5, 0xd

    .line 85
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->OTHER_NEUTRALS:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "LEFT_TO_RIGHT_EMBEDDING"

    const/16 v4, 0xf

    const/16 v5, 0xe

    .line 90
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "LEFT_TO_RIGHT_OVERRIDE"

    const/16 v4, 0x10

    const/16 v5, 0xf

    .line 95
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "RIGHT_TO_LEFT_EMBEDDING"

    const/16 v4, 0x11

    const/16 v5, 0x10

    .line 100
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "RIGHT_TO_LEFT_OVERRIDE"

    const/16 v4, 0x12

    const/16 v5, 0x11

    .line 105
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lkotlin/text/CharDirectionality;

    const-string/jumbo v3, "POP_DIRECTIONAL_FORMAT"

    const/16 v4, 0x13

    const/16 v5, 0x12

    .line 110
    invoke-direct {v2, v3, v4, v5}, Lkotlin/text/CharDirectionality;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkotlin/text/CharDirectionality;->POP_DIRECTIONAL_FORMAT:Lkotlin/text/CharDirectionality;

    aput-object v2, v0, v1

    sput-object v0, Lkotlin/text/CharDirectionality;->$VALUES:[Lkotlin/text/CharDirectionality;

    new-instance v0, Lkotlin/text/CharDirectionality$a;

    invoke-direct {v0, v6}, Lkotlin/text/CharDirectionality$a;-><init>(B)V

    sput-object v0, Lkotlin/text/CharDirectionality;->Companion:Lkotlin/text/CharDirectionality$a;

    .line 114
    sget-object v0, Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;->INSTANCE:Lkotlin/text/CharDirectionality$Companion$directionalityMap$2;

    check-cast v0, Lkhk;

    invoke-static {v0}, Lkfp;->a(Lkhk;)Lkfo;

    move-result-object v0

    sput-object v0, Lkotlin/text/CharDirectionality;->directionalityMap$delegate:Lkfo;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/CharDirectionality;->value:I

    return-void
.end method

.method public static final synthetic access$getDirectionalityMap$cp()Lkfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 9
    sget-object v0, Lkotlin/text/CharDirectionality;->directionalityMap$delegate:Lkfo;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/CharDirectionality;
    .locals 1

    const-class v0, Lkotlin/text/CharDirectionality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkotlin/text/CharDirectionality;

    return-object v0
.end method

.method public static values()[Lkotlin/text/CharDirectionality;
    .locals 1

    sget-object v0, Lkotlin/text/CharDirectionality;->$VALUES:[Lkotlin/text/CharDirectionality;

    invoke-virtual {v0}, [Lkotlin/text/CharDirectionality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/CharDirectionality;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lkotlin/text/CharDirectionality;->value:I

    return v0
.end method
