.class public final Lkmd;
.super Ljava/lang/Object;
.source "VelocityModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010 \u001a\u00020\u0006J\u0006\u0010!\u001a\u00020\rJ\u0006\u0010\"\u001a\u00020#R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR*\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/modules/VelocityModule;",
        "",
        "random",
        "Ljava/util/Random;",
        "(Ljava/util/Random;)V",
        "maxAngle",
        "",
        "getMaxAngle",
        "()Ljava/lang/Double;",
        "setMaxAngle",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "value",
        "",
        "maxSpeed",
        "getMaxSpeed",
        "()Ljava/lang/Float;",
        "setMaxSpeed",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "minAngle",
        "getMinAngle",
        "()D",
        "setMinAngle",
        "(D)V",
        "minSpeed",
        "getMinSpeed",
        "()F",
        "setMinSpeed",
        "(F)V",
        "getRandom",
        "()Ljava/util/Random;",
        "getRadian",
        "getSpeed",
        "getVelocity",
        "Lnl/dionsegijn/konfetti/models/Vector;",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field public a:D

.field public b:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:F

.field public d:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string/jumbo v0, "random"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkmd;->e:Ljava/util/Random;

    return-void
.end method
