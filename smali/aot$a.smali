.class final Laot$a;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field private e:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p1, p0, Laot$a;->a:F

    .line 659
    iput p2, p0, Laot$a;->b:F

    .line 660
    iput p3, p0, Laot$a;->c:F

    .line 661
    iput p4, p0, Laot$a;->d:F

    .line 662
    invoke-static {p1, p2, p3, p4}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Laot$a;->e:Landroid/view/animation/Interpolator;

    .line 663
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 667
    iget-object v0, p0, Laot$a;->e:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
