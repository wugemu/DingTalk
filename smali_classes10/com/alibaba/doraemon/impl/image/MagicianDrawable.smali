.class public Lcom/alibaba/doraemon/impl/image/MagicianDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MagicianDrawable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32

.field private static sPool:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

.field private static sPoolSize:I


# instance fields
.field private mBindedView:Landroid/view/View;

.field private mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

.field private mDisplayMode:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mKey:Ljava/lang/String;

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field protected mNext:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

.field private mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

.field protected mRealDrawable:Landroid/graphics/drawable/Drawable;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "urlKey"    # Ljava/lang/String;
    .param p4, "owner"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p5, "loadingDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "view"    # Landroid/view/View;
    .param p7, "displayMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->addCallback()V

    .line 134
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicHeight:I

    .line 135
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicWidth:I

    .line 137
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 144
    :goto_0
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mKey:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .line 147
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-object p6, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    .line 149
    iput p7, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    .line 150
    return-void

    .line 139
    :cond_0
    iput v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicHeight:I

    .line 140
    iput v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicWidth:I

    .line 142
    invoke-super {p0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private addCallback()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 160
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 161
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-nez v1, :cond_2

    .line 162
    :cond_0
    new-instance v1, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    .line 163
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 164
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->addMagicianDrawable(Lcom/alibaba/doraemon/impl/image/MagicianDrawable;)V

    .line 170
    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_1
    :goto_0
    return-void

    .line 166
    .restart local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_2
    check-cast v0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    .line 167
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->addMagicianDrawable(Lcom/alibaba/doraemon/impl/image/MagicianDrawable;)V

    goto :goto_0
.end method

.method public static obtain(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;I)Lcom/alibaba/doraemon/impl/image/MagicianDrawable;
    .locals 9
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "owner"    # Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;
    .param p4, "loadingDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;
    .param p6, "displayMode"    # I

    .prologue
    .line 79
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 81
    sget-object v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPool:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    if-eqz v0, :cond_2

    .line 82
    sget-object v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPool:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 83
    .local v8, "p":Lcom/alibaba/doraemon/impl/image/MagicianDrawable;
    iget-object v0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mNext:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    sput-object v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPool:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 84
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mNext:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 85
    iput-object p1, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    .line 86
    iput-object p3, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .line 87
    iput-object p0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {v8}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->addCallback()V

    .line 90
    iget-object v0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicHeight:I

    .line 91
    iget-object v0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicWidth:I

    .line 93
    :cond_0
    iput-object p4, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object p5, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    .line 95
    iput p6, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    .line 96
    iput-object p2, v8, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mKey:Ljava/lang/String;

    .line 97
    sget v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPoolSize:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPoolSize:I

    .line 98
    if-eqz p0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 102
    .end local v8    # "p":Lcom/alibaba/doraemon/impl/image/MagicianDrawable;
    :cond_1
    :goto_0
    return-object v8

    :cond_2
    new-instance v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;Landroid/graphics/drawable/Drawable;Landroid/view/View;I)V

    move-object v8, v0

    goto :goto_0
.end method

.method private static recycle(Lcom/alibaba/doraemon/impl/image/MagicianDrawable;)V
    .locals 3
    .param p0, "drawable"    # Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 110
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThread()V

    .line 111
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    .line 112
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    .line 113
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mKey:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    .line 118
    iput v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicHeight:I

    .line 119
    iput v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicWidth:I

    .line 120
    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    .line 122
    sget v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPoolSize:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 123
    sget-object v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPool:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mNext:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 124
    sput-object p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPool:Lcom/alibaba/doraemon/impl/image/MagicianDrawable;

    .line 125
    sget v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->sPoolSize:I

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 460
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 182
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->getDrawableInMem(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 187
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    const v1, 0x19561212

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 189
    .local v8, "parent":Ljava/lang/Object;
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    const v1, 0x20120718

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 193
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :goto_1
    instance-of v0, v8, Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 226
    .end local v8    # "parent":Ljava/lang/Object;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 227
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 228
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 195
    .restart local v8    # "parent":Ljava/lang/Object;
    :cond_4
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    move-object v3, v8

    check-cast v3, Landroid/widget/AbsListView;

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_2

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    const v1, 0x19561111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    instance-of v0, v8, Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_2

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    move-object v3, v8

    check-cast v3, Landroid/widget/AbsListView;

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto/16 :goto_2

    .line 214
    .end local v8    # "parent":Ljava/lang/Object;
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->addCallback()V

    .line 215
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 222
    :cond_9
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 231
    :cond_a
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected flushImg2Cache()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 252
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 253
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    instance-of v1, v0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    .end local v0    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    .line 255
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->removeMagicianDrawable(Lcom/alibaba/doraemon/impl/image/MagicianDrawable;)V

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mOwner:Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mKey:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDisplayMode:I

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3, v4, v1}, Lcom/alibaba/doraemon/impl/image/ImageMagicianImpl;->releaseDrawable(Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 261
    :cond_1
    return-void
.end method

.method protected getBindedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getByteCount()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v2, v1

    .line 242
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 491
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 380
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicHeight:I

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 372
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mIntrinsicWidth:I

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 534
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 542
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 365
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 156
    :cond_0
    return-void
.end method

.method protected isRecycled()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method protected recycle()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->flushImg2Cache()V

    .line 286
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->setBounds(IIII)V

    .line 287
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->recycle(Lcom/alibaba/doraemon/impl/image/MagicianDrawable;)V

    .line 288
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mBindedView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 312
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 344
    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->shutoffDispatch()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->unshutoffDispatch()V

    .line 409
    :cond_3
    return-void

    .line 405
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v1, :cond_4

    .line 406
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->unshutoffDispatch()V

    :cond_4
    throw v0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->shutoffDispatch()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->unshutoffDispatch()V

    .line 428
    :cond_3
    return-void

    .line 424
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v1, :cond_4

    .line 425
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->unshutoffDispatch()V

    :cond_4
    throw v0
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 434
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->shutoffDispatch()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->unshutoffDispatch()V

    .line 453
    :cond_2
    return-void

    .line 449
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    if-eqz v1, :cond_3

    .line 450
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mDispatcher:Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/image/CallbackDispatcher;->unshutoffDispatch()V

    :cond_3
    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 350
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 475
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/image/MagicianDrawable;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 508
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method
