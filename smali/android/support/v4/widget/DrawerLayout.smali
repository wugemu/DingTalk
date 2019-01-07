.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$b;,
        Landroid/support/v4/widget/DrawerLayout$a;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$d;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$c;,
        Landroid/support/v4/widget/DrawerLayout$EdgeGravity;,
        Landroid/support/v4/widget/DrawerLayout$LockMode;,
        Landroid/support/v4/widget/DrawerLayout$State;
    }
.end annotation


# static fields
.field static final a:[I

.field static final b:Z

.field private static final f:[I

.field private static final g:Z


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/widget/DrawerLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private B:F

.field private C:F

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Landroid/graphics/drawable/Drawable;

.field private final K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Ljava/lang/Object;

.field e:Z

.field private final h:Landroid/support/v4/widget/DrawerLayout$b;

.field private i:F

.field private j:I

.field private k:I

.field private l:F

.field private m:Landroid/graphics/Paint;

.field private final n:Lhu;

.field private final o:Lhu;

.field private final p:Landroid/support/v4/widget/DrawerLayout$d;

.field private final q:Landroid/support/v4/widget/DrawerLayout$d;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Landroid/support/v4/widget/DrawerLayout$c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    new-array v0, v1, [I

    const v3, 0x1010434

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->f:[I

    .line 181
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->a:[I

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->g:Z

    return-void

    :cond_0
    move v0, v2

    .line 186
    goto :goto_0

    :cond_1
    move v1, v2

    .line 189
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 308
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$b;

    invoke-direct {v3}, Landroid/support/v4/widget/DrawerLayout$b;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/DrawerLayout$b;

    .line 198
    const/high16 v3, -0x67000000

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:I

    .line 200
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/graphics/Paint;

    .line 208
    iput-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->t:Z

    .line 210
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 211
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->v:I

    .line 212
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->w:I

    .line 213
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->x:I

    .line 235
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    .line 236
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->H:Landroid/graphics/drawable/Drawable;

    .line 237
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 238
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->J:Landroid/graphics/drawable/Drawable;

    .line 309
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 310
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 311
    .local v1, "density":F
    const/high16 v3, 0x42800000    # 64.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->j:I

    .line 312
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v2, v3, v1

    .line 314
    .local v2, "minVel":F
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$d;

    invoke-direct {v3, p0, v5}, Landroid/support/v4/widget/DrawerLayout$d;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->p:Landroid/support/v4/widget/DrawerLayout$d;

    .line 315
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$d;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Landroid/support/v4/widget/DrawerLayout$d;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->q:Landroid/support/v4/widget/DrawerLayout$d;

    .line 317
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->p:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-static {p0, v8, v3}, Lhu;->a(Landroid/view/ViewGroup;FLhu$a;)Lhu;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 318
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 2439
    iput v7, v3, Lhu;->i:I

    .line 319
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 3403
    iput v2, v3, Lhu;->g:F

    .line 320
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->p:Landroid/support/v4/widget/DrawerLayout$d;

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 4060
    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout$d;->b:Lhu;

    .line 322
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->q:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-static {p0, v8, v3}, Lhu;->a(Landroid/view/ViewGroup;FLhu$a;)Lhu;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    .line 323
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    const/4 v4, 0x2

    .line 4439
    iput v4, v3, Lhu;->i:I

    .line 324
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    .line 5403
    iput v2, v3, Lhu;->g:F

    .line 325
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->q:Landroid/support/v4/widget/DrawerLayout$d;

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    .line 6060
    iput-object v4, v3, Landroid/support/v4/widget/DrawerLayout$d;->b:Lhu;

    .line 328
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 330
    invoke-static {p0, v7}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 333
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$a;

    invoke-direct {v3, p0}, Landroid/support/v4/widget/DrawerLayout$a;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lfz;)V

    .line 334
    invoke-static {p0, v9}, Lgp;->a(Landroid/view/ViewGroup;Z)V

    .line 335
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 337
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$1;

    invoke-direct {v3, p0}, Landroid/support/v4/widget/DrawerLayout$1;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 346
    const/16 v3, 0x500

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 348
    sget-object v3, Landroid/support/v4/widget/DrawerLayout;->f:[I

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    .line 361
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->K:Ljava/util/ArrayList;

    .line 362
    return-void

    .line 352
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3

    .line 355
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 9
    .param p1, "peekingOnly"    # Z

    .prologue
    .line 1544
    const/4 v5, 0x0

    .line 1545
    .local v5, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1546
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1547
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1548
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1550
    .local v4, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    if-eqz v6, :cond_1

    .line 1554
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1556
    .local v2, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1557
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    neg-int v7, v2

    .line 1558
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1557
    invoke-virtual {v6, v0, v7, v8}, Lhu;->a(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 1564
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    .line 1546
    .end local v2    # "childWidth":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1560
    .restart local v2    # "childWidth":I
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    .line 1561
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1560
    invoke-virtual {v6, v0, v7, v8}, Lhu;->a(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_1

    .line 1567
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v4    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->p:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$d;->a()V

    .line 1568
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->q:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$d;->a()V

    .line 1570
    if-eqz v5, :cond_4

    .line 1571
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1573
    :cond_4
    return-void
.end method

.method static b(Landroid/view/View;)F
    .locals 1
    .param p0, "drawerView"    # Landroid/view/View;

    .prologue
    .line 879
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    return v0
.end method

.method private b()Landroid/view/View;
    .locals 6

    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 898
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 899
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 900
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 901
    .local v2, "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 905
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 898
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 905
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 909
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)F

    move-result v2

    .line 910
    .local v2, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 911
    .local v4, "width":I
    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 912
    .local v3, "oldPos":I
    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v1, v5

    .line 913
    .local v1, "newPos":I
    sub-int v0, v1, v3

    .line 915
    .local v0, "dx":I
    const/4 v5, 0x3

    .line 916
    invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 915
    .end local v0    # "dx":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 917
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 918
    return-void

    .line 916
    .restart local v0    # "dx":I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .prologue
    .line 842
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 843
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 844
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 845
    .local v0, "child":Landroid/view/View;
    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v0, p1, :cond_2

    .line 848
    :cond_1
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 843
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    :cond_2
    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_1

    .line 855
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1591
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1592
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1595
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1596
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->t:Z

    if-eqz v1, :cond_1

    .line 1597
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 1598
    iput v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1600
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    .line 1615
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1616
    return-void

    .line 1601
    :cond_1
    if-eqz p2, :cond_3

    .line 1602
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1604
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1605
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Lhu;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1607
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1608
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1607
    invoke-virtual {v1, p1, v2, v3}, Lhu;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1611
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1612
    invoke-virtual {p0, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->a(ILandroid/view/View;)V

    .line 1613
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static d(Landroid/view/View;)Z
    .locals 4
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1408
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 1410
    .local v1, "gravity":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v2

    .line 1409
    invoke-static {v1, v2}, Lgb;->a(II)I

    move-result v0

    .line 1411
    .local v0, "absGravity":I
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    move v2, v3

    .line 1419
    :goto_0
    return v2

    .line 1415
    :cond_0
    and-int/lit8 v2, v0, 0x5

    if-eqz v2, :cond_1

    move v2, v3

    .line 1417
    goto :goto_0

    .line 1419
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .prologue
    .line 947
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 948
    const-string/jumbo v0, "LEFT"

    .line 953
    :goto_0
    return-object v0

    .line 950
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 951
    const-string/jumbo v0, "RIGHT"

    goto :goto_0

    .line 953
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static f(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1988
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1990
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 1404
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Landroid/view/View;)Z
    .locals 4
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1722
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1723
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1725
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1726
    .local v0, "drawerLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 7
    .param p1, "edgeGravity"    # I

    .prologue
    const/4 v6, 0x3

    .line 647
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v1

    .line 649
    .local v1, "layoutDirection":I
    sparse-switch p1, :sswitch_data_0

    .line 692
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 651
    :sswitch_0
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    if-eq v5, v6, :cond_1

    .line 652
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_0

    .line 654
    :cond_1
    if-nez v1, :cond_2

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:I

    .line 656
    .local v2, "leftLockMode":I
    :goto_1
    if-eq v2, v6, :cond_0

    goto :goto_0

    .line 654
    .end local v2    # "leftLockMode":I
    :cond_2
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->x:I

    goto :goto_1

    .line 661
    :sswitch_1
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->v:I

    if-eq v5, v6, :cond_3

    .line 662
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->v:I

    goto :goto_0

    .line 664
    :cond_3
    if-nez v1, :cond_4

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->x:I

    .line 666
    .local v3, "rightLockMode":I
    :goto_2
    if-eq v3, v6, :cond_0

    move v2, v3

    .line 667
    goto :goto_0

    .line 664
    .end local v3    # "rightLockMode":I
    :cond_4
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->w:I

    goto :goto_2

    .line 671
    :sswitch_2
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->w:I

    if-eq v5, v6, :cond_5

    .line 672
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->w:I

    goto :goto_0

    .line 674
    :cond_5
    if-nez v1, :cond_6

    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    .line 676
    .local v4, "startLockMode":I
    :goto_3
    if-eq v4, v6, :cond_0

    move v2, v4

    .line 677
    goto :goto_0

    .line 674
    .end local v4    # "startLockMode":I
    :cond_6
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->v:I

    goto :goto_3

    .line 681
    :sswitch_3
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->x:I

    if-eq v5, v6, :cond_7

    .line 682
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->x:I

    goto :goto_0

    .line 684
    :cond_7
    if-nez v1, :cond_8

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:I

    .line 686
    .local v0, "endLockMode":I
    :goto_4
    if-eq v0, v6, :cond_0

    move v2, v0

    .line 687
    goto :goto_0

    .line 684
    .end local v0    # "endLockMode":I
    :cond_8
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_4

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;)I
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 704
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 708
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v1

    return v1
.end method

.method final a()Landroid/view/View;
    .locals 4

    .prologue
    .line 1852
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1853
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1854
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1855
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1859
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1853
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1859
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(II)V
    .locals 6
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .prologue
    const/4 v5, 0x1

    .line 571
    .line 572
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v4

    .line 571
    invoke-static {p2, v4}, Lgb;->a(II)I

    move-result v0

    .line 574
    .local v0, "absGravity":I
    sparse-switch p2, :sswitch_data_0

    .line 589
    :goto_0
    if-eqz p1, :cond_0

    .line 591
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 592
    .local v1, "helper":Lhu;
    :goto_1
    invoke-virtual {v1}, Lhu;->a()V

    .line 594
    .end local v1    # "helper":Lhu;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 609
    :cond_1
    :goto_2
    return-void

    .line 576
    :sswitch_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    goto :goto_0

    .line 579
    :sswitch_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->v:I

    goto :goto_0

    .line 582
    :sswitch_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->w:I

    goto :goto_0

    .line 585
    :sswitch_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->x:I

    goto :goto_0

    .line 591
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    goto :goto_1

    .line 596
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v3

    .line 597
    .local v3, "toOpen":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 6581
    invoke-direct {p0, v3, v5}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    goto :goto_2

    .line 602
    .end local v3    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v2

    .line 603
    .local v2, "toClose":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 6650
    invoke-virtual {p0, v2, v5}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    goto :goto_2

    .line 574
    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(ILandroid/view/View;)V
    .locals 11
    .param p1, "activeState"    # I
    .param p2, "activeDrawer"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x20

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 756
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 7423
    iget v1, v6, Lhu;->a:I

    .line 757
    .local v1, "leftState":I
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    .line 8423
    iget v4, v6, Lhu;->a:I

    .line 760
    .local v4, "rightState":I
    if-eq v1, v8, :cond_0

    if-ne v4, v8, :cond_1

    .line 761
    :cond_0
    const/4 v5, 0x1

    .line 768
    .local v5, "state":I
    :goto_0
    if-eqz p2, :cond_5

    if-nez p1, :cond_5

    .line 769
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 770
    .local v3, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 8792
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 8793
    iget v7, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_5

    .line 8794
    iput v9, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 8796
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 8799
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 8800
    add-int/lit8 v6, v6, -0x1

    move v7, v6

    :goto_1
    if-ltz v7, :cond_4

    .line 8801
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v6, p2}, Landroid/support/v4/widget/DrawerLayout$c;->onDrawerClosed(Landroid/view/View;)V

    .line 8800
    add-int/lit8 v6, v7, -0x1

    move v7, v6

    goto :goto_1

    .line 762
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v5    # "state":I
    :cond_1
    if-eq v1, v7, :cond_2

    if-ne v4, v7, :cond_3

    .line 763
    :cond_2
    const/4 v5, 0x2

    .restart local v5    # "state":I
    goto :goto_0

    .line 765
    .end local v5    # "state":I
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "state":I
    goto :goto_0

    .line 8805
    .restart local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_4
    invoke-direct {p0, p2, v9}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    .line 8810
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8811
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 8812
    if-eqz v6, :cond_5

    .line 8813
    invoke-virtual {v6, v10}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 777
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_5
    :goto_2
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    if-eq v5, v6, :cond_8

    .line 778
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    .line 780
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    if-eqz v6, :cond_8

    .line 783
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 784
    .local v2, "listenerCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_8

    .line 785
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v6, v5}, Landroid/support/v4/widget/DrawerLayout$c;->onDrawerStateChanged(I)V

    .line 784
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 772
    .end local v0    # "i":I
    .end local v2    # "listenerCount":I
    .restart local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_6
    iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 8820
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 8821
    iget v7, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_5

    .line 8822
    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 8823
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    if-eqz v6, :cond_7

    .line 8826
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 8827
    add-int/lit8 v6, v6, -0x1

    move v7, v6

    :goto_4
    if-ltz v7, :cond_7

    .line 8828
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v6, p2}, Landroid/support/v4/widget/DrawerLayout$c;->onDrawerOpened(Landroid/view/View;)V

    .line 8827
    add-int/lit8 v6, v7, -0x1

    move v7, v6

    goto :goto_4

    .line 8832
    :cond_7
    invoke-direct {p0, p2, v8}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    .line 8835
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8836
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    goto :goto_2

    .line 789
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_8
    return-void
.end method

.method public final a(Landroid/support/v4/widget/DrawerLayout$c;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    if-nez v0, :cond_1

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    .line 512
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final a(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 870
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 876
    :cond_0
    return-void

    .line 874
    :cond_1
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 8858
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 8861
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 8862
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 8863
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$c;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/widget/DrawerLayout$c;->onDrawerSlide(Landroid/view/View;F)V

    .line 8862
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1660
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1661
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1664
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1665
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->t:Z

    if-eqz v1, :cond_1

    .line 1666
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 1667
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1682
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1683
    return-void

    .line 1668
    :cond_1
    if-eqz p2, :cond_3

    .line 1669
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    .line 1671
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1672
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1673
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1672
    invoke-virtual {v1, p1, v2, v3}, Lhu;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1675
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lhu;->a(Landroid/view/View;II)Z

    goto :goto_0

    .line 1678
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 1679
    invoke-virtual {p0, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->a(ILandroid/view/View;)V

    .line 1680
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method final a(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .prologue
    .line 892
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v0

    .line 893
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1814
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-ne v5, v6, :cond_0

    .line 1845
    :goto_0
    return-void

    .line 1820
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1821
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 1822
    .local v3, "isDrawerOpen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1823
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1824
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1825
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1826
    const/4 v3, 0x1

    .line 1827
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1822
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1830
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1834
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    if-nez v3, :cond_5

    .line 1835
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1836
    .local v4, "nonDrawerViewsCount":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_5

    .line 1837
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1838
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1839
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1836
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1844
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "nonDrawerViewsCount":I
    :cond_5
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->K:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1960
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1962
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->b()Landroid/view/View;

    move-result-object v0

    .line 1963
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1966
    :cond_0
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 1977
    :goto_0
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->b:Z

    if-nez v1, :cond_1

    .line 1978
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->h:Landroid/support/v4/widget/DrawerLayout$b;

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lfz;)V

    .line 1980
    :cond_1
    return-void

    .line 1971
    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .prologue
    .line 927
    .line 928
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v5

    .line 927
    invoke-static {p1, v5}, Lgb;->a(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    .line 929
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 930
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 931
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 932
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v2

    .line 933
    .local v2, "childAbsGravity":I
    and-int/lit8 v5, v2, 0x7

    if-ne v5, v0, :cond_0

    .line 937
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :goto_1
    return-object v1

    .line 930
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 937
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childAbsGravity":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final c(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 887
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    .line 888
    .local v0, "gravity":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lgb;->a(II)I

    move-result v1

    return v1
.end method

.method public final c(I)V
    .locals 3
    .param p1, "gravity"    # I

    .prologue
    .line 1625
    .line 12636
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 12637
    if-nez v0, :cond_0

    .line 12638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12639
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12641
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 1626
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1804
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1250
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1251
    .local v0, "childCount":I
    const/4 v5, 0x0

    .line 1252
    .local v5, "scrimOpacity":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1253
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    .line 1254
    .local v3, "onscreen":F
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1256
    .end local v3    # "onscreen":F
    :cond_0
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->l:F

    .line 1258
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    invoke-virtual {v6, v7}, Lhu;->a(Z)Z

    move-result v2

    .line 1259
    .local v2, "leftDraggerSettling":Z
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    invoke-virtual {v6, v7}, Lhu;->a(Z)Z

    move-result v4

    .line 1260
    .local v4, "rightDraggerSettling":Z
    if-nez v2, :cond_1

    if-eqz v4, :cond_2

    .line 1261
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;)V

    .line 1263
    :cond_2
    return-void
.end method

.method public final d(I)V
    .locals 3
    .param p1, "gravity"    # I

    .prologue
    .line 1692
    .line 12703
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 12704
    if-nez v0, :cond_0

    .line 12705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No drawer view found with gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12706
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12708
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 1693
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1341
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v18

    .line 1342
    .local v18, "height":I
    invoke-static/range {p2 .. p2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v17

    .line 1343
    .local v17, "drawingContent":Z
    const/4 v13, 0x0

    .local v13, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v14

    .line 1345
    .local v14, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1346
    .local v21, "restoreCount":I
    if-eqz v17, :cond_5

    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v10

    .line 1348
    .local v10, "childCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    .line 1349
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 1350
    .local v25, "v":Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 9266
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9267
    if-eqz v2, :cond_2

    .line 9268
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    .line 1351
    :goto_1
    if-eqz v2, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-lt v2, v0, :cond_0

    .line 1356
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1357
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    .line 1358
    .local v27, "vright":I
    move/from16 v0, v27

    if-le v0, v13, :cond_0

    move/from16 v13, v27

    .line 1348
    .end local v27    # "vright":I
    :cond_0
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 9268
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 9270
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1360
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 1361
    .local v26, "vleft":I
    move/from16 v0, v26

    if-ge v0, v14, :cond_0

    move/from16 v14, v26

    goto :goto_2

    .line 1364
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "vleft":I
    :cond_4
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1366
    .end local v10    # "childCount":I
    .end local v19    # "i":I
    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    .line 1367
    .local v22, "result":Z
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1369
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->l:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    if-eqz v17, :cond_7

    .line 1370
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->k:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    .line 1371
    .local v9, "baseAlpha":I
    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->l:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    .line 1372
    .local v20, "imag":I
    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->k:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    .line 1373
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 1375
    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1400
    .end local v9    # "baseAlpha":I
    .end local v15    # "color":I
    .end local v20    # "imag":I
    :cond_6
    :goto_3
    return v22

    .line 1376
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    .line 1377
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1379
    .local v23, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1380
    .local v12, "childRight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 9450
    iget v0, v2, Lhu;->h:I

    move/from16 v16, v0

    .line 1381
    .local v16, "drawerPeekDistance":I
    const/4 v2, 0x0

    int-to-float v3, v12

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1382
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1383
    .local v8, "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1383
    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1387
    .end local v8    # "alpha":F
    .end local v12    # "childRight":I
    .end local v16    # "drawerPeekDistance":I
    .end local v23    # "shadowWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    .line 1388
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 1390
    .restart local v23    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1391
    .local v11, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    .line 1392
    .local v24, "showing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    .line 10450
    iget v0, v2, Lhu;->h:I

    move/from16 v16, v0

    .line 1393
    .restart local v16    # "drawerPeekDistance":I
    const/4 v2, 0x0

    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1394
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1395
    .restart local v8    # "alpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1395
    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3
.end method

.method public final e(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .prologue
    .line 1739
    const v1, 0x800003

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1740
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1741
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)Z

    move-result v1

    .line 1743
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;

    .prologue
    .line 1755
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1790
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1809
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1795
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 1

    .prologue
    .line 388
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->g:Z

    if-eqz v0, :cond_0

    .line 389
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 964
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 965
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Z

    .line 966
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 958
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:Z

    .line 960
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 1323
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1324
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1326
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    .line 1327
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    .line 1328
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 1332
    .local v0, "inset":I
    :goto_0
    if-lez v0, :cond_0

    .line 1333
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1334
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1337
    .end local v0    # "inset":I
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1328
    goto :goto_0

    .line 1330
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "inset":I
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1428
    .local v0, "action":I
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    invoke-virtual {v6, p1}, Lhu;->a(Landroid/view/MotionEvent;)Z

    move-result v6

    iget-object v9, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    .line 1429
    invoke-virtual {v9, p1}, Lhu;->a(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int v2, v6, v9

    .line 1431
    .local v2, "interceptForDrag":Z
    const/4 v3, 0x0

    .line 1433
    .local v3, "interceptForTap":Z
    packed-switch v0, :pswitch_data_0

    .line 1467
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 11778
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v10

    move v9, v7

    .line 11779
    :goto_1
    if-ge v9, v10, :cond_8

    .line 11780
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 11781
    iget-boolean v6, v6, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z

    if-eqz v6, :cond_7

    move v6, v8

    .line 1467
    :goto_2
    if-nez v6, :cond_1

    iget-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    if-eqz v6, :cond_9

    :cond_1
    move v6, v8

    :goto_3
    return v6

    .line 1435
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1436
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1437
    .local v5, "y":F
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->B:F

    .line 1438
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->C:F

    .line 1439
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->l:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_2

    .line 1440
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v6, v9, v10}, Lhu;->b(II)Landroid/view/View;

    move-result-object v1

    .line 1441
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1442
    const/4 v3, 0x1

    .line 1445
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    iput-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->y:Z

    .line 1446
    iput-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    goto :goto_0

    .line 1452
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_1
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 11323
    iget-object v6, v10, Lhu;->c:[F

    array-length v11, v6

    move v9, v7

    .line 11324
    :goto_4
    if-ge v9, v11, :cond_6

    .line 11348
    invoke-virtual {v10, v9}, Lhu;->a(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11355
    iget-object v6, v10, Lhu;->e:[F

    aget v6, v6, v9

    iget-object v12, v10, Lhu;->c:[F

    aget v12, v12, v9

    sub-float/2addr v6, v12

    .line 11356
    iget-object v12, v10, Lhu;->f:[F

    aget v12, v12, v9

    iget-object v13, v10, Lhu;->d:[F

    aget v13, v13, v9

    sub-float/2addr v12, v13

    .line 11359
    mul-float/2addr v6, v6

    mul-float/2addr v12, v12

    add-float/2addr v6, v12

    iget v12, v10, Lhu;->b:I

    iget v13, v10, Lhu;->b:I

    mul-int/2addr v12, v13

    int-to-float v12, v12

    cmpl-float v6, v6, v12

    if-lez v6, :cond_3

    move v6, v8

    .line 11325
    :goto_5
    if-eqz v6, :cond_5

    move v6, v8

    .line 1452
    :goto_6
    if-eqz v6, :cond_0

    .line 1453
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->p:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$d;->a()V

    .line 1454
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->q:Landroid/support/v4/widget/DrawerLayout$d;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$d;->a()V

    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 11359
    goto :goto_5

    :cond_4
    move v6, v7

    .line 11365
    goto :goto_5

    .line 11324
    :cond_5
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_4

    :cond_6
    move v6, v7

    .line 11329
    goto :goto_6

    .line 1461
    :pswitch_2
    invoke-direct {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1462
    iput-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->y:Z

    .line 1463
    iput-boolean v7, p0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    goto/16 :goto_0

    .line 11779
    :cond_7
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto/16 :goto_1

    :cond_8
    move v6, v7

    .line 11785
    goto/16 :goto_2

    :cond_9
    move v6, v7

    .line 1467
    goto/16 :goto_3

    .line 1433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1879
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 12848
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 1879
    :goto_0
    if-eqz v1, :cond_1

    .line 1880
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1883
    :goto_1
    return v0

    .line 12848
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1883
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 1888
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 1889
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    .line 1890
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    .line 13540
    invoke-direct {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1893
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1895
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1159
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->s:Z

    .line 1160
    sub-int v17, p4, p2

    .line 1161
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v6

    .line 1162
    .local v6, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v6, :cond_8

    .line 1163
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1165
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 1169
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1171
    .local v13, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1172
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    .line 1173
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    .line 1174
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    .line 1172
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1162
    .end local v13    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1176
    .restart local v13    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1177
    .local v10, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1181
    .local v7, "childHeight":I
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1182
    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    .line 1183
    .local v8, "childLeft":I
    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 1189
    .local v14, "newOffset":F
    :goto_2
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_4

    const/4 v4, 0x1

    .line 1191
    .local v4, "changeOffset":Z
    :goto_3
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    .line 1193
    .local v16, "vgrav":I
    sparse-switch v16, :sswitch_data_0

    .line 1196
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1227
    :goto_4
    if-eqz v4, :cond_2

    .line 1228
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 1231
    :cond_2
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_7

    const/4 v15, 0x0

    .line 1232
    .local v15, "newVisibility":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    .line 1233
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1185
    .end local v4    # "changeOffset":Z
    .end local v8    # "childLeft":I
    .end local v14    # "newOffset":F
    .end local v15    # "newVisibility":I
    .end local v16    # "vgrav":I
    :cond_3
    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->b:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    .line 1186
    .restart local v8    # "childLeft":I
    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    .restart local v14    # "newOffset":F
    goto :goto_2

    .line 1189
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 1202
    .restart local v4    # "changeOffset":Z
    .restart local v16    # "vgrav":I
    :sswitch_0
    sub-int v11, p5, p3

    .line 1203
    .local v11, "height":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    .line 1204
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    .line 1203
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1211
    .end local v11    # "height":I
    :sswitch_1
    sub-int v11, p5, p3

    .line 1212
    .restart local v11    # "height":I
    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    .line 1216
    .local v9, "childTop":I
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_6

    .line 1217
    iget v9, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1221
    :cond_5
    :goto_6
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1218
    :cond_6
    add-int v18, v9, v7

    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 1219
    iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_6

    .line 1231
    .end local v9    # "childTop":I
    .end local v11    # "height":I
    :cond_7
    const/4 v15, 0x4

    goto/16 :goto_5

    .line 1237
    .end local v4    # "changeOffset":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "newOffset":F
    .end local v16    # "vgrav":I
    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->s:Z

    .line 1238
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->t:Z

    .line 1239
    return-void

    .line 1193
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 29
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 970
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 971
    .local v23, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 972
    .local v16, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    .line 973
    .local v24, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 975
    .local v17, "heightSize":I
    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/high16 v25, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 976
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 981
    const/high16 v25, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 983
    if-nez v23, :cond_1

    .line 985
    const/16 v24, 0x12c

    .line 987
    :cond_1
    const/high16 v25, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 989
    if-nez v16, :cond_2

    .line 991
    const/16 v17, 0x12c

    .line 999
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->d:Ljava/lang/Object;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_7

    const/4 v5, 0x1

    .line 1002
    .local v5, "applyInsets":Z
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v20

    .line 1006
    .local v20, "layoutDirection":I
    const/4 v14, 0x0

    .line 1007
    .local v14, "hasDrawerOnLeftEdge":Z
    const/4 v15, 0x0

    .line 1008
    .local v15, "hasDrawerOnRightEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    .line 1009
    .local v8, "childCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v8, :cond_14

    .line 1010
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1012
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 1016
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1018
    .local v21, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    if-eqz v5, :cond_4

    .line 1019
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Lgb;->a(II)I

    move-result v6

    .line 1020
    .local v6, "cgrav":I
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1021
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->d:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/WindowInsets;

    .line 1023
    .local v22, "wi":Landroid/view/WindowInsets;
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_8

    .line 1024
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v25

    .line 1025
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    const/16 v27, 0x0

    .line 1026
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1024
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    .line 1032
    :cond_3
    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1054
    .end local v6    # "cgrav":I
    .end local v22    # "wi":Landroid/view/WindowInsets;
    :cond_4
    :goto_3
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 1056
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    sub-int v25, v24, v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1058
    .local v11, "contentWidthSpec":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    sub-int v25, v17, v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1060
    .local v10, "contentHeightSpec":I
    invoke-virtual {v7, v11, v10}, Landroid/view/View;->measure(II)V

    .line 1009
    .end local v10    # "contentHeightSpec":I
    .end local v11    # "contentWidthSpec":I
    .end local v21    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_5
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 994
    .end local v5    # "applyInsets":Z
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v14    # "hasDrawerOnLeftEdge":Z
    .end local v15    # "hasDrawerOnRightEdge":Z
    .end local v18    # "i":I
    .end local v20    # "layoutDirection":I
    :cond_6
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v26, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1001
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1027
    .restart local v5    # "applyInsets":Z
    .restart local v6    # "cgrav":I
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childCount":I
    .restart local v14    # "hasDrawerOnLeftEdge":Z
    .restart local v15    # "hasDrawerOnRightEdge":Z
    .restart local v18    # "i":I
    .restart local v20    # "layoutDirection":I
    .restart local v21    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .restart local v22    # "wi":Landroid/view/WindowInsets;
    :cond_8
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v6, v0, :cond_3

    .line 1028
    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    .line 1029
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v27

    .line 1030
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1028
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    goto :goto_2

    .line 1035
    .end local v22    # "wi":Landroid/view/WindowInsets;
    :cond_9
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->d:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/WindowInsets;

    .line 1037
    .restart local v22    # "wi":Landroid/view/WindowInsets;
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_b

    .line 1038
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v25

    .line 1039
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    const/16 v27, 0x0

    .line 1040
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1038
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    .line 1046
    :cond_a
    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1047
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1048
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 1049
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3

    .line 1041
    :cond_b
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 1042
    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v26

    .line 1043
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v27

    .line 1044
    invoke-virtual/range {v22 .. v22}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v28

    .line 1042
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v22

    goto :goto_5

    .line 1061
    .end local v6    # "cgrav":I
    .end local v22    # "wi":Landroid/view/WindowInsets;
    :cond_c
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 1062
    sget-boolean v25, Landroid/support/v4/widget/DrawerLayout;->g:Z

    if-eqz v25, :cond_d

    .line 1063
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->n(Landroid/view/View;)F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->i:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_d

    .line 1064
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->i:F

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v7, v0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 1068
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v25

    and-int/lit8 v9, v25, 0x7

    .line 1071
    .local v9, "childGravity":I
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v9, v0, :cond_10

    const/16 v19, 0x1

    .line 1072
    .local v19, "isLeftEdgeDrawer":Z
    :goto_6
    if-eqz v19, :cond_e

    if-nez v14, :cond_f

    :cond_e
    if-nez v19, :cond_11

    if-eqz v15, :cond_11

    .line 1074
    :cond_f
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "Child drawer has absolute gravity "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-static {v9}, Landroid/support/v4/widget/DrawerLayout;->f(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " but this DrawerLayout"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " already has a drawer view along that edge"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1071
    .end local v19    # "isLeftEdgeDrawer":Z
    :cond_10
    const/16 v19, 0x0

    goto :goto_6

    .line 1078
    .restart local v19    # "isLeftEdgeDrawer":Z
    :cond_11
    if-eqz v19, :cond_12

    .line 1079
    const/4 v14, 0x1

    .line 1083
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->j:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v13

    .line 1086
    .local v13, "drawerWidthSpec":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v12

    .line 1089
    .local v12, "drawerHeightSpec":I
    invoke-virtual {v7, v13, v12}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 1081
    .end local v12    # "drawerHeightSpec":I
    .end local v13    # "drawerWidthSpec":I
    :cond_12
    const/4 v15, 0x1

    goto :goto_7

    .line 1091
    .end local v9    # "childGravity":I
    .end local v19    # "isLeftEdgeDrawer":Z
    :cond_13
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "Child "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " at index "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1096
    .end local v7    # "child":Landroid/view/View;
    .end local v21    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_14
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v4, 0x3

    .line 1900
    instance-of v2, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v2, :cond_1

    .line 1901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1927
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1905
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1906
    .local v0, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1908
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v2, :cond_2

    .line 1909
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1910
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 13581
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 1915
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_2
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    if-eq v2, v4, :cond_3

    .line 1916
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 1918
    :cond_3
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v2, v4, :cond_4

    .line 1919
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 1921
    :cond_4
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v2, v4, :cond_5

    .line 1922
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 1924
    :cond_5
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v2, v4, :cond_0

    .line 1925
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v3, 0x800005

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 1318
    .line 9099
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->g:Z

    if-nez v0, :cond_0

    .line 9107
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    .line 9102
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    .line 9126
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    .line 9103
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    .line 1319
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1931
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    .line 1932
    .local v7, "superState":Landroid/os/Parcelable;
    new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v7}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1934
    .local v6, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1935
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1936
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1937
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1939
    .local v5, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    if-ne v10, v8, :cond_2

    move v4, v8

    .line 1941
    .local v4, "isOpenedAndNotClosing":Z
    :goto_1
    iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    move v3, v8

    .line 1942
    .local v3, "isClosedAndOpening":Z
    :goto_2
    if-nez v4, :cond_0

    if-eqz v3, :cond_4

    .line 1945
    :cond_0
    iget v8, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->a:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1950
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "isClosedAndOpening":Z
    .end local v4    # "isOpenedAndNotClosing":Z
    .end local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->u:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1951
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->v:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1952
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->w:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 1953
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->x:I

    iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 1955
    return-object v6

    .restart local v0    # "child":Landroid/view/View;
    .restart local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_2
    move v4, v9

    .line 1939
    goto :goto_1

    .restart local v4    # "isOpenedAndNotClosing":Z
    :cond_3
    move v3, v9

    .line 1941
    goto :goto_2

    .line 1935
    .restart local v3    # "isClosedAndOpening":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1472
    iget-object v11, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    invoke-virtual {v11, p1}, Lhu;->b(Landroid/view/MotionEvent;)V

    .line 1473
    iget-object v11, p0, Landroid/support/v4/widget/DrawerLayout;->o:Lhu;

    invoke-virtual {v11, p1}, Lhu;->b(Landroid/view/MotionEvent;)V

    .line 1475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1478
    .local v0, "action":I
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 1519
    :goto_0
    :pswitch_0
    return v9

    .line 1480
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1481
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1482
    .local v8, "y":F
    iput v7, p0, Landroid/support/v4/widget/DrawerLayout;->B:F

    .line 1483
    iput v8, p0, Landroid/support/v4/widget/DrawerLayout;->C:F

    .line 1484
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->y:Z

    .line 1485
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    goto :goto_0

    .line 1490
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1491
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1492
    .restart local v8    # "y":F
    const/4 v4, 0x1

    .line 1493
    .local v4, "peekingOnly":Z
    iget-object v11, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    float-to-int v12, v7

    float-to-int v13, v8

    invoke-virtual {v11, v12, v13}, Lhu;->b(II)Landroid/view/View;

    move-result-object v6

    .line 1494
    .local v6, "touchedView":Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1495
    iget v11, p0, Landroid/support/v4/widget/DrawerLayout;->B:F

    sub-float v1, v7, v11

    .line 1496
    .local v1, "dx":F
    iget v11, p0, Landroid/support/v4/widget/DrawerLayout;->C:F

    sub-float v2, v8, v11

    .line 1497
    .local v2, "dy":F
    iget-object v11, p0, Landroid/support/v4/widget/DrawerLayout;->n:Lhu;

    .line 12492
    iget v5, v11, Lhu;->b:I

    .line 1498
    .local v5, "slop":I
    mul-float v11, v1, v1

    mul-float v12, v2, v2

    add-float/2addr v11, v12

    mul-int v12, v5, v5

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    .line 1500
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->b()Landroid/view/View;

    move-result-object v3

    .line 1501
    .local v3, "openDrawer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1502
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    move v4, v9

    .line 1506
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v5    # "slop":I
    :cond_0
    :goto_1
    invoke-direct {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1507
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->y:Z

    goto :goto_0

    .restart local v1    # "dx":F
    .restart local v2    # "dy":F
    .restart local v3    # "openDrawer":Landroid/view/View;
    .restart local v5    # "slop":I
    :cond_1
    move v4, v10

    .line 1502
    goto :goto_1

    .line 1512
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "openDrawer":Landroid/view/View;
    .end local v4    # "peekingOnly":Z
    .end local v5    # "slop":I
    .end local v6    # "touchedView":Landroid/view/View;
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_3
    invoke-direct {p0, v9}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1513
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->y:Z

    .line 1514
    iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->c:Z

    goto :goto_0

    .line 1478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1528
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1530
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->y:Z

    .line 1531
    if-eqz p1, :cond_0

    .line 1532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    .line 1534
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1243
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    if-nez v0, :cond_0

    .line 1244
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1246
    :cond_0
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .prologue
    .line 371
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 373
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->i:F

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 372
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->z:Landroid/support/v4/widget/DrawerLayout$c;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->z:Landroid/support/v4/widget/DrawerLayout$c;

    .line 6523
    if-eqz v0, :cond_0

    .line 6526
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6530
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    if-eqz p1, :cond_1

    .line 492
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$c;)V

    .line 496
    :cond_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->z:Landroid/support/v4/widget/DrawerLayout$c;

    .line 497
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .prologue
    .line 547
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 548
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    .line 549
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 469
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->k:I

    .line 470
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 471
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1300
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldp;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    .line 1301
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1302
    return-void

    .line 1300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1280
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    .line 1281
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1282
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1312
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    .line 1313
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1314
    return-void
.end method
