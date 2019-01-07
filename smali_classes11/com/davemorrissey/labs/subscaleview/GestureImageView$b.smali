.class public final Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;
.super Ljava/lang/Object;
.source "GestureImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/GestureImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Z

.field final synthetic d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

.field private final e:F

.field private final f:Landroid/graphics/PointF;

.field private final g:Landroid/graphics/PointF;

.field private h:J


# direct methods
.method private constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;)V
    .locals 3
    .param p1, "this$0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p2, "scale"    # F
    .param p3, "sCenter"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x1

    .line 2618
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2601
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->h:J

    .line 2602
    const/4 v0, 0x2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a:I

    .line 2603
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->b:Z

    .line 2604
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->c:Z

    .line 2619
    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->e:F

    .line 2620
    iput-object p3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->f:Landroid/graphics/PointF;

    .line 2621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    .line 2622
    return-void
.end method

.method synthetic constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;B)V
    .locals 0
    .param p1, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p2, "x1"    # F
    .param p3, "x2"    # Landroid/graphics/PointF;

    .prologue
    .line 2596
    invoke-direct {p0, p1, p2, p3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;)V

    return-void
.end method

.method private constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "this$0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p2, "scale"    # F
    .param p3, "sCenter"    # Landroid/graphics/PointF;
    .param p4, "vFocus"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x1

    .line 2624
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2601
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->h:J

    .line 2602
    const/4 v0, 0x2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a:I

    .line 2603
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->b:Z

    .line 2604
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->c:Z

    .line 2625
    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->e:F

    .line 2626
    iput-object p3, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->f:Landroid/graphics/PointF;

    .line 2627
    iput-object p4, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    .line 2628
    return-void
.end method

.method synthetic constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;B)V
    .locals 0
    .param p1, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p2, "x1"    # F
    .param p3, "x2"    # Landroid/graphics/PointF;
    .param p4, "x3"    # Landroid/graphics/PointF;

    .prologue
    .line 2596
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method private constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "this$0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p2, "sCenter"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x1

    .line 2606
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2601
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->h:J

    .line 2602
    const/4 v0, 0x2

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a:I

    .line 2603
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->b:Z

    .line 2604
    iput-boolean v2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->c:Z

    .line 2607
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)F

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->e:F

    .line 2608
    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->f:Landroid/graphics/PointF;

    .line 2609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    .line 2610
    return-void
.end method

.method synthetic constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;B)V
    .locals 0
    .param p1, "x0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;
    .param p2, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 2596
    invoke-direct {p0, p1, p2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;-><init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 2678
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v5, v7, v8

    .line 2679
    .local v5, "vxCenter":I
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v9}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 2680
    .local v6, "vyCenter":I
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->e:F

    invoke-static {v7, v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c(Lcom/davemorrissey/labs/subscaleview/GestureImageView;F)F

    move-result v2

    .line 2681
    .local v2, "targetScale":F
    iget-boolean v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->c:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->f:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->f:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    invoke-static {v7, v8, v9, v2, v10}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 2682
    .local v1, "targetSCenter":Landroid/graphics/PointF;
    :goto_0
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    new-instance v8, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    invoke-direct {v8, v11}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;-><init>(B)V

    invoke-static {v7, v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    .line 2683
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->f(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)F

    move-result v8

    .line 2850
    iput v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->a:F

    .line 2684
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    .line 3850
    iput v2, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->b:F

    .line 2685
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4850
    iput-wide v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->k:J

    .line 2686
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    .line 5850
    iput-object v1, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->e:Landroid/graphics/PointF;

    .line 2687
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v8

    .line 6850
    iput-object v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->c:Landroid/graphics/PointF;

    .line 2688
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    .line 7850
    iput-object v1, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->d:Landroid/graphics/PointF;

    .line 2689
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v8, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

    .line 8850
    iput-object v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->f:Landroid/graphics/PointF;

    .line 2690
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    new-instance v8, Landroid/graphics/PointF;

    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9850
    iput-object v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->g:Landroid/graphics/PointF;

    .line 2694
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    iget-wide v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->h:J

    .line 10850
    iput-wide v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->h:J

    .line 2695
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    iget-boolean v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->b:Z

    .line 11850
    iput-boolean v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->i:Z

    .line 2696
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    iget v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->a:I

    .line 12850
    iput v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->j:I

    .line 2697
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 13850
    iput-wide v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->k:J

    .line 2699
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    if-eqz v7, :cond_0

    .line 2701
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v8

    .line 14850
    iget-object v8, v8, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->c:Landroid/graphics/PointF;

    .line 2701
    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v2

    sub-float v3, v7, v8

    .line 2702
    .local v3, "vTranslateXEnd":F
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v8}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v8

    .line 15850
    iget-object v8, v8, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->c:Landroid/graphics/PointF;

    .line 2702
    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v2

    sub-float v4, v7, v8

    .line 2703
    .local v4, "vTranslateYEnd":F
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v2, v7, v11}, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;-><init>(FLandroid/graphics/PointF;B)V

    .line 2705
    .local v0, "satEnd":Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;ZLcom/davemorrissey/labs/subscaleview/GestureImageView$e;)V

    .line 2707
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->o(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;

    move-result-object v7

    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    .line 15866
    iget-object v10, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 2708
    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v3

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->g:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 16866
    iget-object v11, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;->b:Landroid/graphics/PointF;

    .line 2709
    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v4

    add-float/2addr v10, v11

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 17850
    iput-object v8, v7, Lcom/davemorrissey/labs/subscaleview/GestureImageView$a;->g:Landroid/graphics/PointF;

    .line 2713
    .end local v0    # "satEnd":Lcom/davemorrissey/labs/subscaleview/GestureImageView$e;
    .end local v3    # "vTranslateXEnd":F
    .end local v4    # "vTranslateYEnd":F
    :cond_0
    iget-object v7, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->d:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v7}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->invalidate()V

    .line 2714
    return-void

    .line 2681
    .end local v1    # "targetSCenter":Landroid/graphics/PointF;
    :cond_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$b;->f:Landroid/graphics/PointF;

    goto/16 :goto_0
.end method
