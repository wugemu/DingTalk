.class final Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(IFI)V

    .line 240
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    if-nez p1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d(I)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->c()V

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->b(I)V

    .line 265
    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->d()V

    goto :goto_0
.end method
