.class public final Ljti;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Ljti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljti;

    invoke-direct {v0}, Ljti;-><init>()V

    sput-object v0, Ljti;->a:Ljti;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sparse-switch p0, :sswitch_data_0

    .line 78
    const-string/jumbo v0, "-"

    :goto_0
    return-object v0

    .line 66
    :sswitch_0
    const-string/jumbo v0, "D"

    goto :goto_0

    .line 68
    :sswitch_1
    const-string/jumbo v0, "I"

    goto :goto_0

    .line 70
    :sswitch_2
    const-string/jumbo v0, "W"

    goto :goto_0

    .line 72
    :sswitch_3
    const-string/jumbo v0, "E"

    goto :goto_0

    .line 74
    :sswitch_4
    const-string/jumbo v0, "V"

    goto :goto_0

    .line 76
    :sswitch_5
    const-string/jumbo v0, "A"

    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
