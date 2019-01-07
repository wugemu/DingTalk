.class final Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;
.super Landroid/support/v4/view/ViewPager$g;
.source "AlbumPhotoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->b(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->c(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->c(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;->a(I)V

    .line 73
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$1;->a:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->a(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;)Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;->a(I)V

    .line 60
    :cond_0
    return-void
.end method
