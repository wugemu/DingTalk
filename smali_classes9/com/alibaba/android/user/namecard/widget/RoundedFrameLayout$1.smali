.class final Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "RoundedFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;->a:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;->a:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->a(Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;->a:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->b(Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 125
    .local v5, "radius":F
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;->a:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout$1;->a:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;->getHeight()I

    move-result v4

    move-object v0, p2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 127
    .end local v5    # "radius":F
    :cond_0
    return-void
.end method
