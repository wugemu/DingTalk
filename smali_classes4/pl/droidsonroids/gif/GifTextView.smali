.class public Lpl/droidsonroids/gif/GifTextView;
.super Landroid/widget/TextView;
.source "GifTextView.java"


# instance fields
.field private a:Llgh$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p2, v0, v0}, Lpl/droidsonroids/gif/GifTextView;->a(Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lpl/droidsonroids/gif/GifTextView;->a(Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v2, 0x0

    .line 162
    :goto_0
    return-object v2

    .line 150
    :cond_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "resourceTypeName":Ljava/lang/String;
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Llgh;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :try_start_0
    new-instance v2, Llgf;

    invoke-direct {v2, v1, p1}, Llgf;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 159
    :cond_1
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 160
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I
    .param p3, "defStyleRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 80
    if-eqz p1, :cond_7

    .line 81
    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "drawableLeft"

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 82
    .local v2, "left":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "drawableTop"

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 83
    .local v5, "top":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "drawableRight"

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 84
    .local v3, "right":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "drawableBottom"

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "bottom":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "drawableStart"

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 86
    .local v4, "start":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "drawableEnd"

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    .local v1, "end":Landroid/graphics/drawable/Drawable;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 89
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_3

    .line 90
    if-nez v4, :cond_0

    .line 91
    move-object v4, v2

    .line 93
    :cond_0
    if-nez v1, :cond_1

    .line 94
    move-object v1, v3

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v5, v1, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_2
    invoke-virtual {p0, v2, v5, v3, v0}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    const-string/jumbo v6, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "background"

    const/4 v8, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v6}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v6, Llgh$b;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, p2, v7}, Llgh$b;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    .line 1117
    iget-object v6, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    iget v6, v6, Llgh$b;->d:I

    if-ltz v6, :cond_7

    .line 1120
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_5

    aget-object v9, v7, v6

    .line 1121
    iget-object v10, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    iget v10, v10, Llgh$b;->d:I

    invoke-static {v10, v9}, Llgh;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 1120
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 97
    :cond_3
    if-nez v4, :cond_4

    .line 98
    move-object v4, v3

    .line 100
    :cond_4
    if-nez v1, :cond_1

    .line 101
    move-object v1, v2

    goto :goto_0

    .line 1123
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_6

    .line 1124
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_6

    aget-object v9, v7, v6

    .line 1125
    iget-object v10, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    iget v10, v10, Llgh$b;->d:I

    invoke-static {v10, v9}, Llgh;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 1124
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1128
    :cond_6
    iget-object v6, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    iget v6, v6, Llgh$b;->d:I

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Llgh;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 113
    .end local v0    # "bottom":Landroid/graphics/drawable/Drawable;
    .end local v1    # "end":Landroid/graphics/drawable/Drawable;
    .end local v2    # "left":Landroid/graphics/drawable/Drawable;
    .end local v3    # "right":Landroid/graphics/drawable/Drawable;
    .end local v4    # "start":Landroid/graphics/drawable/Drawable;
    .end local v5    # "top":Landroid/graphics/drawable/Drawable;
    :cond_7
    new-instance v6, Llgh$b;

    invoke-direct {v6}, Llgh$b;-><init>()V

    iput-object v6, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    .line 114
    return-void
.end method

.method private static a([Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 187
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 188
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 180
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextView;->a([Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lpl/droidsonroids/gif/GifTextView;->a([Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 213
    instance-of v3, p1, Lpl/droidsonroids/gif/GifViewSavedState;

    if-nez v3, :cond_0

    .line 214
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 231
    :goto_0
    return-void

    :cond_0
    move-object v2, p1

    .line 217
    check-cast v2, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 218
    .local v2, "ss":Lpl/droidsonroids/gif/GifViewSavedState;
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifViewSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 220
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v5

    invoke-virtual {v2, v3, v5}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 222
    aget-object v3, v0, v4

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 223
    aget-object v3, v0, v6

    invoke-virtual {v2, v3, v6}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 224
    aget-object v3, v0, v7

    invoke-virtual {v2, v3, v7}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 225
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    .line 226
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 227
    .local v1, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v1, v5

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 228
    aget-object v3, v1, v6

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    .line 230
    .end local v1    # "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lpl/droidsonroids/gif/GifViewSavedState;->restoreState(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 196
    const/4 v3, 0x7

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 197
    .local v2, "savedDrawables":[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    iget-boolean v3, v3, Llgh$b;->c:Z

    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 202
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 203
    .local v1, "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x4

    aget-object v4, v1, v5

    aput-object v4, v2, v3

    .line 204
    const/4 v3, 0x5

    const/4 v4, 0x2

    aget-object v4, v1, v4

    aput-object v4, v2, v3

    .line 206
    .end local v1    # "compoundDrawablesRelative":[Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v3, 0x6

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 208
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v3, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x11
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p3}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p4}, Lpl/droidsonroids/gif/GifTextView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lpl/droidsonroids/gif/GifTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 1
    .param p1, "freezesAnimation"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextView;->a:Llgh$b;

    iput-boolean p1, v0, Llgh$b;->c:Z

    .line 241
    return-void
.end method
