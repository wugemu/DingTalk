.class final Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$3;
.super Ljava/lang/Object;
.source "RemovablePicViewFragment.java"

# interfaces
.implements Lhbn$a;


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
    .line 92
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$3;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$3;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$3;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a(Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;->a()V

    .line 98
    :cond_0
    return-void
.end method
