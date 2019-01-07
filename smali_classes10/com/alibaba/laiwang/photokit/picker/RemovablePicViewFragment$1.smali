.class final Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;
.super Ljava/lang/Object;
.source "RemovablePicViewFragment.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-static {v0, p1}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;I)I

    .line 78
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$1;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;->a(II)V

    .line 81
    :cond_0
    return-void
.end method
