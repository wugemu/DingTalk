.class final Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;
.super Ljava/lang/Object;
.source "IMRobotTemplateActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 164
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 165
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 167
    .local v0, "bottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v4, "rectEmpty":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->a:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 169
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 171
    .local v1, "bottomEmpty":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 172
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 173
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int v6, v0, v1

    add-int/2addr v5, v6

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 174
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->a:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Z)Z

    .line 179
    .end local v0    # "bottom":I
    .end local v1    # "bottomEmpty":I
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "rectEmpty":Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->a(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;I)I

    .line 180
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->c(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I

    move-result v6

    neg-int v6, v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->d(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;I)I

    .line 181
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->e(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .line 182
    invoke-static {v7}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->f(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$1;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->f(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;)Lcom/alibaba/android/user/contact/view/NotifyingScrollView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/alibaba/android/user/contact/view/NotifyingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 181
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;->b(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;I)I

    .line 183
    return-void
.end method
