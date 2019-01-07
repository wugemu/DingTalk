.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;
.super Landroid/widget/RelativeLayout;
.source "SoftKeyboardSizeWatchLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

.field private d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected h:Landroid/content/Context;

.field protected i:I

.field protected j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a:I

    .line 16
    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b:I

    .line 17
    iput v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->i:I

    .line 18
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->j:Z

    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a:I

    .line 16
    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b:I

    .line 17
    iput v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->i:I

    .line 18
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->j:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    .prologue
    .line 11
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->h:Landroid/content/Context;

    .line 42
    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    .prologue
    .line 11
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->b:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->a:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_1

    .line 85
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 94
    :cond_1
    iput-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->h:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 97
    iput-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->h:Landroid/content/Context;

    .line 99
    :cond_2
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->j:Z

    return v0
.end method

.method public setOnResizeListener(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->c:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;

    .line 107
    return-void
.end method
