.class final Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;
.super Ljava/lang/Object;
.source "ShimmerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 0
    .param p1, "fromX"    # I
    .param p2, "fromY"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->a:I

    .line 111
    iput p2, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->b:I

    .line 112
    iput p3, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->c:I

    .line 113
    iput p4, p0, Lcom/alibaba/android/teleconf/widget/ShimmerFrameLayout$b;->d:I

    .line 114
    return-void
.end method
