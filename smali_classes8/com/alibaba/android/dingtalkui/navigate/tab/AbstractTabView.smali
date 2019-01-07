.class public abstract Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;
.super Landroid/widget/FrameLayout;
.source "AbstractTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;,
        Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;

.field protected c:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Landroid/view/View;

.field protected f:[Ljava/lang/String;

.field protected g:I

.field protected h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    .line 34
    iput v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    .line 35
    iput v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->h:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->i:Z

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    .line 34
    iput v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    .line 35
    iput v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->h:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->i:Z

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    .line 34
    iput v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    .line 35
    iput v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->h:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->i:Z

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d()V

    .line 54
    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    .line 1078
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a()V

    .line 69
    return-void
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    iget v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->h:I

    .line 138
    .local v1, "oldIndex":I
    iget v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    .line 139
    .local v0, "newIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchItem: oldIndex=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], newIndex=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;

    .line 1113
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->a()V

    .line 2107
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;

    .line 3088
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lecj$b;->ui_common_theme_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setTextColor(I)V

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->b:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->b:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d:Landroid/view/ViewGroup;

    .line 147
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d:Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 146
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;->a(II)V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(I)V
.end method

.method protected abstract b()V
.end method

.method protected abstract b(I)V
.end method

.method protected abstract c()V
.end method

.method protected final c(I)V
    .locals 1
    .param p1, "newIndex"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    if-eq v0, p1, :cond_0

    .line 220
    iget v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->h:I

    .line 221
    iput p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    .line 222
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->e()V

    .line 223
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->b(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public getAnimationDurationInMillis()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    return v0
.end method

.method public getItemSelected()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    const/4 v0, -0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    goto :goto_0
.end method

.method protected abstract getLayoutId()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 60
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->i:Z

    if-nez v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->b()V

    .line 1073
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->e()V

    .line 1074
    iget v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a(I)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->i:Z

    .line 64
    :cond_0
    return-void
.end method

.method public setAnimationDurationInMillis(I)V
    .locals 0
    .param p1, "durationInMillis"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
            to = 0x7d0L
        .end annotation
    .end param

    .prologue
    .line 257
    iput p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    .line 258
    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 233
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 234
    :cond_0
    const-string/jumbo v0, "AbstractTabView"

    const-string/jumbo v1, "setItems() returned: There must be at least one item!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 236
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->f:[Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->c()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->i:Z

    .line 241
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->requestLayout()V

    goto :goto_0
.end method

.method public setOnAnimatingListener(Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;

    .line 202
    return-void
.end method

.method public setOnTabSwitchListener(Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->b:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;

    .line 211
    return-void
.end method

.method public setSelect(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->f:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 167
    iget v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->h:I

    .line 168
    iput p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->g:I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->i:Z

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->requestLayout()V

    .line 173
    :cond_0
    return-void
.end method
