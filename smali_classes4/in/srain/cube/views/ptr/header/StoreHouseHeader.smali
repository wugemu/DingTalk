.class public Lin/srain/cube/views/ptr/header/StoreHouseHeader;
.super Landroid/view/View;
.source "StoreHouseHeader.java"

# interfaces
.implements Lkey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkfd;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:I

.field private e:F

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/animation/Transformation;

.field private s:Z

.field private t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    .line 22
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    .line 23
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 24
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    .line 26
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 30
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    .line 31
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    .line 32
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 33
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 34
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    .line 35
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    .line 36
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    .line 38
    iput v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 39
    iput v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 40
    const/16 v0, 0x190

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    .line 42
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 43
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 44
    new-instance v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    .line 45
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->u:I

    .line 49
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    .line 22
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    .line 23
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 24
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    .line 26
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 30
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    .line 31
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    .line 32
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 33
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 34
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    .line 35
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    .line 36
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    .line 38
    iput v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 39
    iput v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 40
    const/16 v0, 0x190

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    .line 42
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 43
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 44
    new-instance v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    .line 45
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->u:I

    .line 54
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v5, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    .line 22
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    .line 23
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 24
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 25
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    .line 26
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 30
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->h:I

    .line 31
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->i:I

    .line 32
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 33
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 34
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    .line 35
    iput v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    .line 36
    iput v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    .line 38
    iput v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 39
    iput v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 40
    const/16 v0, 0x190

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    .line 42
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    .line 43
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 44
    new-instance v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    .line 45
    iput v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->u:I

    .line 59
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a()V

    .line 60
    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    .prologue
    .line 18
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkff;->a(Landroid/content/Context;)V

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lkff;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b:I

    .line 65
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lkff;->a(F)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 66
    sget v0, Lkff;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    .line 67
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    .prologue
    .line 18
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 189
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V

    .line 190
    return-void
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    .prologue
    .line 18
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->q:I

    return v0
.end method

.method static synthetic d(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    .prologue
    .line 18
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->m:F

    return v0
.end method

.method static synthetic e(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F
    .locals 1
    .param p0, "x0"    # Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    .prologue
    .line 18
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->n:F

    return v0
.end method

.method private getBottomOffset()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 119
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getPaddingBottom()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lkff;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTopOffset()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 115
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getPaddingTop()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lkff;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 70
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 251
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b()V

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfd;

    iget v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    invoke-virtual {v1, v2}, Lkfd;->a(I)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLkfe;)V
    .locals 3
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lkfe;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 276
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p4}, Lkfe;->g()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 277
    .local v0, "currentPercent":F
    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->setProgress(F)V

    .line 278
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    .line 279
    return-void
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 261
    return-void
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 265
    .line 1182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    .line 1183
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->t:Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V

    .line 1184
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    .line 266
    return-void
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 270
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b()V

    .line 271
    return-void
.end method

.method public getLoadingAniDuration()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 194
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    move-object/from16 v0, p0

    iget v15, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->g:F

    .line 196
    .local v15, "progress":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 197
    .local v8, "c1":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 199
    .local v11, "len":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_5

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lkfd;

    .line 203
    .local v18, "storeHouseBarItem":Lkfd;
    move-object/from16 v0, p0

    iget v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float v13, v2, v3

    .line 204
    .local v13, "offsetX":F
    move-object/from16 v0, p0

    iget v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float v14, v2, v3

    .line 206
    .local v14, "offsetY":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual/range {p0 .. p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getDrawingTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->r:Landroid/view/animation/Transformation;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Lkfd;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1072
    :goto_1
    const/4 v2, 0x0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    iget v4, v2, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    iget v5, v2, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    iget v6, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v18

    iget-object v7, v0, Lkfd;->b:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 211
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-nez v2, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->f:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lkfd;->a(I)V

    goto :goto_2

    .line 216
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    sub-float/2addr v2, v3

    int-to-float v3, v10

    mul-float/2addr v2, v3

    int-to-float v3, v11

    div-float v17, v2, v3

    .line 217
    .local v17, "startPadding":F
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    sub-float/2addr v2, v3

    sub-float v9, v2, v17

    .line 220
    .local v9, "endPadding":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v9

    cmpl-float v2, v15, v2

    if-ltz v2, :cond_3

    .line 221
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lkfd;->a(F)V

    goto :goto_1

    .line 225
    :cond_3
    cmpg-float v2, v15, v17

    if-gtz v2, :cond_4

    .line 226
    const/16 v16, 0x0

    .line 230
    .local v16, "realProgress":F
    :goto_3
    move-object/from16 v0, v18

    iget v2, v0, Lkfd;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v16

    mul-float/2addr v2, v3

    add-float/2addr v13, v2

    .line 231
    move-object/from16 v0, p0

    iget v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v16

    mul-float/2addr v2, v3

    add-float/2addr v14, v2

    .line 232
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 233
    .local v12, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v2, v2, v16

    invoke-virtual {v12, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 234
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 235
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    move-object/from16 v0, p0

    iget v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->l:F

    mul-float v2, v2, v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lkfd;->a(F)V

    .line 237
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 228
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "realProgress":F
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v15, v17

    move-object/from16 v0, p0

    iget v4, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .restart local v16    # "realProgress":F
    goto :goto_3

    .line 243
    .end local v9    # "endPadding":F
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v16    # "realProgress":F
    .end local v17    # "startPadding":F
    .end local v18    # "storeHouseBarItem":Lkfd;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->s:Z

    if-eqz v2, :cond_6

    .line 244
    invoke-virtual/range {p0 .. p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->invalidate()V

    .line 246
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 247
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getBottomOffset()I

    move-result v2

    add-int v0, v1, v2

    .line 106
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 109
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->j:I

    .line 110
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->k:I

    .line 111
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d:I

    .line 112
    return-void
.end method

.method public setLoadingAniDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 78
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->o:I

    .line 79
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->p:I

    .line 80
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 150
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c:F

    .line 151
    return-void
.end method
