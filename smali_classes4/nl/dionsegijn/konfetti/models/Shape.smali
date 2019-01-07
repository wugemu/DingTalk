.class public final enum Lnl/dionsegijn/konfetti/models/Shape;
.super Ljava/lang/Enum;
.source "Shape.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnl/dionsegijn/konfetti/models/Shape;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/models/Shape;",
        "",
        "(Ljava/lang/String;I)V",
        "RECT",
        "CIRCLE",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnl/dionsegijn/konfetti/models/Shape;

.field public static final enum CIRCLE:Lnl/dionsegijn/konfetti/models/Shape;

.field public static final enum RECT:Lnl/dionsegijn/konfetti/models/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lnl/dionsegijn/konfetti/models/Shape;

    new-instance v1, Lnl/dionsegijn/konfetti/models/Shape;

    const-string/jumbo v2, "RECT"

    .line 10
    invoke-direct {v1, v2, v3}, Lnl/dionsegijn/konfetti/models/Shape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnl/dionsegijn/konfetti/models/Shape;->RECT:Lnl/dionsegijn/konfetti/models/Shape;

    aput-object v1, v0, v3

    new-instance v1, Lnl/dionsegijn/konfetti/models/Shape;

    const-string/jumbo v2, "CIRCLE"

    .line 11
    invoke-direct {v1, v2, v4}, Lnl/dionsegijn/konfetti/models/Shape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnl/dionsegijn/konfetti/models/Shape;->CIRCLE:Lnl/dionsegijn/konfetti/models/Shape;

    aput-object v1, v0, v4

    sput-object v0, Lnl/dionsegijn/konfetti/models/Shape;->$VALUES:[Lnl/dionsegijn/konfetti/models/Shape;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnl/dionsegijn/konfetti/models/Shape;
    .locals 1

    const-class v0, Lnl/dionsegijn/konfetti/models/Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnl/dionsegijn/konfetti/models/Shape;

    return-object v0
.end method

.method public static values()[Lnl/dionsegijn/konfetti/models/Shape;
    .locals 1

    sget-object v0, Lnl/dionsegijn/konfetti/models/Shape;->$VALUES:[Lnl/dionsegijn/konfetti/models/Shape;

    invoke-virtual {v0}, [Lnl/dionsegijn/konfetti/models/Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnl/dionsegijn/konfetti/models/Shape;

    return-object v0
.end method
