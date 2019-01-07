.class public Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;
.super Landroid/widget/LinearLayout;
.source "FpsFrameView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1036
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->setOrientation(I)V

    .line 1037
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcig$h;->layout_fps_frame:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1038
    sget v0, Lcig$f;->tv_fps:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->a:Landroid/widget/TextView;

    .line 1039
    sget v0, Lcig$f;->tv_fps_min:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/fps/FpsFrameView;->b:Landroid/widget/TextView;

    .line 33
    return-void
.end method
