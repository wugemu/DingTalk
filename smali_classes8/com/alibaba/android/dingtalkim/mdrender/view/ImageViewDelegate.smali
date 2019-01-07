.class public Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;
.super Landroid/widget/ImageView;
.source "ImageViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 43
    :cond_0
    return-void
.end method

.method public setImageListener(Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;)V
    .locals 0
    .param p1, "imageListener"    # Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;

    .line 47
    return-void
.end method
