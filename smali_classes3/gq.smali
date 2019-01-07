.class public final Lgq;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgq$b;,
        Lgq$a;,
        Lgq$c;
    }
.end annotation


# static fields
.field static final a:Lgq$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 193
    new-instance v0, Lgq$b;

    invoke-direct {v0}, Lgq$b;-><init>()V

    sput-object v0, Lgq;->a:Lgq$c;

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 195
    new-instance v0, Lgq$a;

    invoke-direct {v0}, Lgq$a;-><init>()V

    sput-object v0, Lgq;->a:Lgq$c;

    goto :goto_0

    .line 197
    :cond_1
    new-instance v0, Lgq$c;

    invoke-direct {v0}, Lgq$c;-><init>()V

    sput-object v0, Lgq;->a:Lgq$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 394
    instance-of v0, p0, Lgi;

    if-eqz v0, :cond_1

    .line 396
    check-cast p0, Lgi;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2}, Lgi;->onStopNestedScroll(Landroid/view/View;I)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :cond_1
    if-nez p2, :cond_0

    .line 399
    sget-object v0, Lgq;->a:Lgq$c;

    invoke-virtual {v0, p0, p1}, Lgq$c;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 7
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .prologue
    .line 427
    instance-of v0, p0, Lgi;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 429
    check-cast v0, Lgi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lgi;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    if-nez p6, :cond_0

    .line 433
    sget-object v0, Lgq;->a:Lgq$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lgq$c;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .prologue
    .line 460
    instance-of v0, p0, Lgi;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 462
    check-cast v0, Lgi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lgi;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    if-nez p5, :cond_0

    .line 465
    sget-object v0, Lgq;->a:Lgq$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lgq$c;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 515
    sget-object v0, Lgq;->a:Lgq$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgq$c;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 490
    sget-object v0, Lgq;->a:Lgq$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lgq$c;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lgq;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .prologue
    .line 341
    instance-of v0, p0, Lgi;

    if-eqz v0, :cond_0

    .line 343
    check-cast p0, Lgi;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3, p4}, Lgi;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    .line 349
    :goto_0
    return v0

    .line 345
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :cond_0
    if-nez p4, :cond_1

    .line 347
    sget-object v0, Lgq;->a:Lgq$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgq$c;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewParent;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .prologue
    .line 371
    instance-of v0, p0, Lgi;

    if-eqz v0, :cond_1

    .line 373
    check-cast p0, Lgi;

    .end local p0    # "parent":Landroid/view/ViewParent;
    invoke-interface {p0, p1, p2, p3, p4}, Lgi;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local p0    # "parent":Landroid/view/ViewParent;
    :cond_1
    if-nez p4, :cond_0

    .line 377
    sget-object v0, Lgq;->a:Lgq$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgq$c;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method
