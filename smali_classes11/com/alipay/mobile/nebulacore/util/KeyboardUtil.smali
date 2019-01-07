.class public Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyboardUtil"

.field public static mVisible:Z


# instance fields
.field private mHeight:I

.field private mListener:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sput-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    .line 19
    iput v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mHeight:I

    .line 20
    if-nez p1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mRootView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "KeyboardUtil"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mHeight:I

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mHeight:I

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mListener:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 54
    .local v0, "height":I
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mHeight:I

    add-int/lit8 v2, v0, 0x64

    if-le v1, v2, :cond_2

    .line 55
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mListener:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    sget-boolean v2, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;->onKeyboardVisible(Z)V

    .line 57
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mHeight:I

    goto :goto_0

    .line 58
    :cond_2
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mHeight:I

    add-int/lit8 v2, v0, -0x64

    if-ge v1, v2, :cond_0

    .line 59
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mListener:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    sget-boolean v2, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mVisible:Z

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;->onKeyboardVisible(Z)V

    .line 61
    iput v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mHeight:I

    goto :goto_0
.end method

.method public setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mListener:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mListener:Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
