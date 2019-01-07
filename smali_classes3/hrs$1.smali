.class final Lhrs$1;
.super Ljava/lang/Object;
.source "SoftKeyboardUtil.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$OnKeyboardEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhrs;->a(Landroid/app/Activity;Lhrs$a;)Lcom/taobao/weex/ui/component/helper/SoftKeyboardDetector$Unregister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lhrs$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lhrs$a;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lhrs$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lhrs$1;->b:Lhrs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyboardEvent(Z)V
    .locals 4
    .param p1, "isShowKeyboard"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "height":I
    if-eqz p1, :cond_0

    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 24
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lhrs$1;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 27
    iget-object v3, p0, Lhrs$1;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 29
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 31
    .end local v1    # "r":Landroid/graphics/Rect;
    .end local v2    # "screenHeight":I
    :cond_0
    iget-object v3, p0, Lhrs$1;->b:Lhrs$a;

    invoke-interface {v3, p1, v0}, Lhrs$a;->onKeyboardEvent(ZI)V

    .line 32
    return-void
.end method
