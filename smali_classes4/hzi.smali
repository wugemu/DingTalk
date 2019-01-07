.class public abstract Lhzi;
.super Ljava/lang/Object;


# instance fields
.field public a:Lhzh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract a(I)[B
.end method

.method public abstract b()I
.end method

.method public abstract c()F
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v0}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Landroid/graphics/RectF;
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public final h()Lhzh;
    .locals 1

    iget-object v0, p0, Lhzi;->a:Lhzh;

    return-object v0
.end method
