.class final Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;
.super Ljava/lang/Object;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 276
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x2

    aget-object v0, v2, v5

    .line 277
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v4

    .line 281
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v6, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v7}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Z)Z

    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v1, v3

    .line 284
    .local v1, "isUp":Z
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v2, v8}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Lcom/amap/api/services/core/PoiItem;)Lcom/amap/api/services/core/PoiItem;

    .line 286
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    sget v3, Lezg$e;->gray:I

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    sget v6, Lezg$l;->dt_circle_post_add_current_location:I

    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lezg$g;->connection_gray_round_3_dp_selector:I

    invoke-static {v2, v3, v5, v6}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;ILjava/lang/String;I)V

    goto :goto_0

    .end local v1    # "isUp":Z
    :cond_2
    move v2, v4

    .line 281
    goto :goto_1

    :cond_3
    move v1, v4

    .line 282
    goto :goto_2
.end method
