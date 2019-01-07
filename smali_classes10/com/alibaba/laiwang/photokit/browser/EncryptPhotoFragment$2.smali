.class final Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;
.super Ljava/lang/Object;
.source "EncryptPhotoFragment.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c(I)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public final a(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->a(IFI)V

    .line 231
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
    .line 245
    if-nez p1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->d(I)V

    .line 248
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c()V

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->A:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;

    invoke-interface {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager$e;->b(I)V

    .line 256
    :cond_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->d()V

    goto :goto_0
.end method
