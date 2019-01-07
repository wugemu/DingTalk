.class public final Lklu;
.super Ljava/lang/Object;
.source "ParticleSystem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010 \u001a\u00020\u00002\n\u0010\u0005\u001a\u00020\u0006\"\u00020\u001fJ\u001f\u0010!\u001a\u00020\u00002\u0012\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00170\u0016\"\u00020\u0017\u00a2\u0006\u0002\u0010\"J\u001f\u0010#\u001a\u00020\u00002\u0012\u0010$\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001a0\u0016\"\u00020\u001a\u00a2\u0006\u0002\u0010%J\u000e\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u001fJ\u0006\u0010)\u001a\u00020*J\u000e\u0010+\u001a\u00020\'2\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/J\u0016\u0010-\u001a\u00020\u00002\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020/J\u000e\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u00020*J\u0016\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000206J3\u00104\u001a\u00020\u00002\u0006\u00108\u001a\u0002062\n\u0008\u0002\u00109\u001a\u0004\u0018\u0001062\u0006\u0010:\u001a\u0002062\n\u0008\u0002\u0010;\u001a\u0004\u0018\u000106\u00a2\u0006\u0002\u0010<J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u000206J\u0016\u0010=\u001a\u00020\u00002\u0006\u0010?\u001a\u0002062\u0006\u0010@\u001a\u000206J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020CJ\u0008\u0010D\u001a\u00020\'H\u0002J\u0010\u0010E\u001a\u00020\'2\u0006\u0010+\u001a\u00020,H\u0002J\u0016\u0010F\u001a\u00020\'2\u0006\u0010G\u001a\u00020\u001f2\u0006\u0010H\u001a\u00020\u001fJ\u0016\u0010F\u001a\u00020\'2\u0006\u0010G\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020CR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0016X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006J"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/ParticleSystem;",
        "",
        "konfettiView",
        "Lnl/dionsegijn/konfetti/KonfettiView;",
        "(Lnl/dionsegijn/konfetti/KonfettiView;)V",
        "colors",
        "",
        "confettiConfig",
        "Lnl/dionsegijn/konfetti/models/ConfettiConfig;",
        "getKonfettiView",
        "()Lnl/dionsegijn/konfetti/KonfettiView;",
        "location",
        "Lnl/dionsegijn/konfetti/models/LocationModule;",
        "random",
        "Ljava/util/Random;",
        "renderSystem",
        "Lnl/dionsegijn/konfetti/emitters/RenderSystem;",
        "getRenderSystem$konfetti_release",
        "()Lnl/dionsegijn/konfetti/emitters/RenderSystem;",
        "setRenderSystem$konfetti_release",
        "(Lnl/dionsegijn/konfetti/emitters/RenderSystem;)V",
        "shapes",
        "",
        "Lnl/dionsegijn/konfetti/models/Shape;",
        "[Lnl/dionsegijn/konfetti/models/Shape;",
        "sizes",
        "Lnl/dionsegijn/konfetti/models/Size;",
        "[Lnl/dionsegijn/konfetti/models/Size;",
        "velocity",
        "Lnl/dionsegijn/konfetti/modules/VelocityModule;",
        "activeParticles",
        "",
        "addColors",
        "addShapes",
        "([Lnl/dionsegijn/konfetti/models/Shape;)Lnl/dionsegijn/konfetti/ParticleSystem;",
        "addSizes",
        "possibleSizes",
        "([Lnl/dionsegijn/konfetti/models/Size;)Lnl/dionsegijn/konfetti/ParticleSystem;",
        "burst",
        "",
        "amount",
        "doneEmitting",
        "",
        "emitter",
        "Lnl/dionsegijn/konfetti/emitters/Emitter;",
        "setDirection",
        "direction",
        "",
        "minDirection",
        "maxDirection",
        "setFadeOutEnabled",
        "fade",
        "setPosition",
        "x",
        "",
        "y",
        "minX",
        "maxX",
        "minY",
        "maxY",
        "(FLjava/lang/Float;FLjava/lang/Float;)Lnl/dionsegijn/konfetti/ParticleSystem;",
        "setSpeed",
        "speed",
        "minSpeed",
        "maxSpeed",
        "setTimeToLive",
        "timeInMs",
        "",
        "start",
        "startRenderSystem",
        "stream",
        "particlesPerSecond",
        "maxParticles",
        "emittingTime",
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
.field public a:Lkma;

.field public b:Lkmd;

.field public c:[I

.field public d:[Lkmb;

.field public e:[Lnl/dionsegijn/konfetti/models/Shape;

.field public f:Lklz;

.field public g:Lklw;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lnl/dionsegijn/konfetti/KonfettiView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lnl/dionsegijn/konfetti/KonfettiView;)V
    .locals 7
    .param p1, "konfettiView"    # Lnl/dionsegijn/konfetti/KonfettiView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "konfettiView"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lklu;->h:Lnl/dionsegijn/konfetti/KonfettiView;

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lklu;->i:Ljava/util/Random;

    .line 23
    new-instance v0, Lkma;

    iget-object v1, p0, Lklu;->i:Ljava/util/Random;

    invoke-direct {v0, v1}, Lkma;-><init>(Ljava/util/Random;)V

    iput-object v0, p0, Lklu;->a:Lkma;

    .line 24
    new-instance v0, Lkmd;

    iget-object v1, p0, Lklu;->i:Ljava/util/Random;

    invoke-direct {v0, v1}, Lkmd;-><init>(Ljava/util/Random;)V

    iput-object v0, p0, Lklu;->b:Lkmd;

    .line 27
    new-array v0, v6, [I

    const/high16 v1, -0x10000

    aput v1, v0, v5

    iput-object v0, p0, Lklu;->c:[I

    .line 28
    new-array v0, v6, [Lkmb;

    new-instance v1, Lkmb;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lkmb;-><init>(IFI)V

    aput-object v1, v0, v5

    .line 234
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Lkmb;

    iput-object v0, p0, Lklu;->d:[Lkmb;

    .line 29
    new-array v0, v6, [Lnl/dionsegijn/konfetti/models/Shape;

    sget-object v1, Lnl/dionsegijn/konfetti/models/Shape;->RECT:Lnl/dionsegijn/konfetti/models/Shape;

    aput-object v1, v0, v5

    .line 235
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Lnl/dionsegijn/konfetti/models/Shape;

    iput-object v0, p0, Lklu;->e:[Lnl/dionsegijn/konfetti/models/Shape;

    .line 30
    new-instance v0, Lklz;

    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    invoke-direct {v0, v5, v2, v3, v1}, Lklz;-><init>(ZJI)V

    iput-object v0, p0, Lklu;->f:Lklz;

    return-void
.end method


# virtual methods
.method public final varargs a([Lkmb;)Lklu;
    .locals 5
    .param p1, "possibleSizes"    # [Lkmb;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-string/jumbo v3, "possibleSizes"

    invoke-static {p1, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast p1, [Ljava/lang/Object;

    .line 212
    .end local p1    # "possibleSizes":[Lkmb;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 219
    .local v0, "destination$iv$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v1, p1, v3

    .local v1, "element$iv$iv":Ljava/lang/Object;
    instance-of v4, v1, Lkmb;

    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .line 221
    check-cast v2, Ljava/util/Collection;

    .line 222
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lkmb;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lkotlin/TypeCastException;

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Lkmb;

    iput-object v3, p0, Lklu;->d:[Lkmb;

    .line 74
    return-object p0
.end method
