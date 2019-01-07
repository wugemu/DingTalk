.class final Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$3;
.super Ljava/lang/Object;
.source "PreviewFragment.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$3;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$3;->a:Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    invoke-static {v0, p1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;I)V

    .line 217
    return-void
.end method
