.class final Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;
.super Landroid/view/View;
.source "Ripple2Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    .line 213
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 210
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->a:F

    .line 214
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->setVisibility(I)V

    .line 215
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 224
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->a(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->a:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 225
    .local v0, "radius":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->b(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;->c(Lcom/alibaba/android/dingtalk/guard/ui/widget/Ripple2Layout;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 226
    return-void
.end method
