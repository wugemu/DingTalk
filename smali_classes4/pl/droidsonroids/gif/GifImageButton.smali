.class public Lpl/droidsonroids/gif/GifImageButton;
.super Landroid/widget/ImageButton;
.source "GifImageButton.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {p0, p2, v0, v0}, Llgh;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Llgh$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifImageButton;->a(Llgh$a;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0}, Llgh;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Llgh$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifImageButton;->a(Llgh$a;)V

    .line 56
    return-void
.end method

.method private a(Llgh$a;)V
    .locals 1
    .param p1, "result"    # Llgh$a;

    .prologue
    .line 75
    iget-boolean v0, p1, Llgh$a;->c:Z

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    .line 76
    iget v0, p1, Llgh$a;->a:I

    if-lez v0, :cond_0

    .line 77
    iget v0, p1, Llgh$a;->a:I

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 79
    :cond_0
    iget v0, p1, Llgh$a;->b:I

    if-lez v0, :cond_1

    .line 80
    iget v0, p1, Llgh$a;->b:I

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    instance-of v1, p1, Lpl/droidsonroids/gif/GifViewSavedState;

    if-nez v1, :cond_0

    .line 123
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 130
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 126
    check-cast v0, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 127
    .local v0, "ss":Lpl/droidsonroids/gif/GifViewSavedState;
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 129
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-boolean v3, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    .local v1, "source":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v3, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v2, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "source":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, v2

    .line 115
    goto :goto_0

    .restart local v1    # "source":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v0, v2

    .line 116
    goto :goto_1
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Llgh;->a(Landroid/widget/ImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    .line 140
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Llgh;->a(Landroid/widget/ImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 94
    invoke-static {p0, p1}, Llgh;->a(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 97
    :cond_0
    return-void
.end method
