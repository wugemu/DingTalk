.class final Lcom/alibaba/android/rimet/biz/NativeSlideActivity$5;
.super Lgl;
.source "NativeSlideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$5;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 227
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 214
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$5;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    if-nez p2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$5;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->c(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 220
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$5;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->d(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Llgf;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 210
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
