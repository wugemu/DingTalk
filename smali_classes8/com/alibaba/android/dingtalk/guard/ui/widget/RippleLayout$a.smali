.class public final Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;
.super Landroid/view/View;
.source "RippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .line 248
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 249
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;->setVisibility(I)V

    .line 250
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
    .line 254
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->c(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 255
    .local v0, "radius":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->d(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->e(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    return-void
.end method
