.class final Lcom/alipay/mobile/security/faceauth/widget/Circle$a;
.super Ljava/lang/Object;
.source "Circle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/widget/Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field final synthetic j:Lcom/alipay/mobile/security/faceauth/widget/Circle;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/faceauth/widget/Circle;)V
    .locals 3
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/widget/Circle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 257
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->j:Lcom/alipay/mobile/security/faceauth/widget/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a:Landroid/graphics/RectF;

    .line 259
    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->b:Z

    .line 260
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->c:I

    .line 261
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    .line 262
    const/16 v0, -0x100

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->e:I

    .line 263
    const/16 v0, -0x5a

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->f:I

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    const-string/jumbo v1, "#2881ac"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->i:Landroid/graphics/Paint;

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->i:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->k:I

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->l:I

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a(II)V

    .line 336
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "width"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 281
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->h:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->i:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    return-void
.end method

.method public final a(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->k:I

    .line 318
    iput p2, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->l:I

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/widget/Circle$a;->d:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 332
    return-void
.end method
