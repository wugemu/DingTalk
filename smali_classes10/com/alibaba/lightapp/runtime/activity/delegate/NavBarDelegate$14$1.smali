.class final Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;
.super Ljava/lang/Object;
.source "NavBarDelegate.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->a:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .param p1, "scrollY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 342
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->e(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->b:I

    if-lez v0, :cond_0

    .line 343
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->b:I

    if-lt p1, v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    .line 345
    iput-boolean v4, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->a:Z

    .line 346
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->d(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->d(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->f(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 358
    :cond_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    mul-int/lit16 v1, p1, 0xff

    iget v2, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->b:I

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;I)I

    .line 349
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->a:Z

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->c:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14;->a:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    invoke-static {v0, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;Z)V

    .line 352
    :cond_2
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate$14$1;->a:Z

    goto :goto_0
.end method
