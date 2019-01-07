.class public Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "RemovablePicViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

.field public d:Lhbn;

.field public e:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->f:Ljava/util/List;

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->e:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    return-object v0
.end method

.method public static final a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;-><init>()V

    .line 26
    .local v0, "fragment":Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 27
    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string/jumbo v2, "preview_picture_objects"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 49
    .local v1, "temp":Ljava/io/Serializable;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->f:Ljava/util/List;

    check-cast v1, Ljava/util/List;

    .end local v1    # "temp":Ljava/io/Serializable;
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1
    const-string/jumbo v2, "current_preview_picture_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    sget v0, Liff$e;->fragment_layout_photo_browser:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 68
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    new-instance v1, Lhbn;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lhbn;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/doraemon/image/ImageMagician;)V

    .line 69
    .local v1, "pagerAdapter":Lhbn;
    sget v2, Liff$d;->view_pager:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    .line 70
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    invoke-virtual {v2, v1}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setAdapter(Lgl;)V

    .line 71
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setCurrentItem(IZ)V

    .line 72
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setOnPageSelectedListener(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;)V

    .line 83
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$2;-><init>(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setOnPageScrollListener(Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$a;)V

    .line 92
    new-instance v2, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$3;-><init>(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)V

    .line 1178
    iput-object v2, v1, Lhbn;->c:Lhbn$a;

    .line 101
    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->d:Lhbn;

    .line 103
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->e:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->e:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    iget v3, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;->a(II)V

    .line 106
    :cond_0
    return-void
.end method
