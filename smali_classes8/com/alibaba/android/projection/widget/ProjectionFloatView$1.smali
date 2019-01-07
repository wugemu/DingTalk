.class public final Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;
.super Ljava/lang/Object;
.source "ProjectionFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/widget/ProjectionFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->a(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->a(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 98
    .local v0, "alpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    .line 99
    const v0, 0x3f7d70a4    # 0.99f

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->a(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 106
    .end local v0    # "alpha":F
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    .local v2, "now":J
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->b(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    sget-object v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;->RECTANGLE:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    iget-object v4, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .line 108
    invoke-static {v4}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->c(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->d(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)V

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->e(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, p0, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_2
    return-void

    .line 101
    .end local v2    # "now":J
    .restart local v0    # "alpha":F
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
