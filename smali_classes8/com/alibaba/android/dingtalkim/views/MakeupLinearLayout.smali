.class public Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MakeupLinearLayout.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    if-eqz p2, :cond_1

    .line 36
    sget-object v2, Lctk$k;->MakeupLinearLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lctk$k;->MakeupLinearLayout_makeUpDrawable:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->b:I

    .line 40
    iget v2, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->b:I

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 44
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/MakeupLinearLayout;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    :cond_0
    return-void
.end method
