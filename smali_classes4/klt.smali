.class public final synthetic Lklt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnl/dionsegijn/konfetti/models/Shape;->values()[Lnl/dionsegijn/konfetti/models/Shape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lklt;->a:[I

    sget-object v1, Lnl/dionsegijn/konfetti/models/Shape;->CIRCLE:Lnl/dionsegijn/konfetti/models/Shape;

    invoke-virtual {v1}, Lnl/dionsegijn/konfetti/models/Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lklt;->a:[I

    sget-object v1, Lnl/dionsegijn/konfetti/models/Shape;->RECT:Lnl/dionsegijn/konfetti/models/Shape;

    invoke-virtual {v1}, Lnl/dionsegijn/konfetti/models/Shape;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
