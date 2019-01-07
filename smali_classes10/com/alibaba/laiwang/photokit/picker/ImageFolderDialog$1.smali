.class final Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$1;
.super Ljava/lang/Object;
.source "ImageFolderDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$1;->a:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$1;->a:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->a(Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)Lhbo;

    move-result-object v0

    .line 1042
    iput p3, v0, Lhbo;->a:I

    .line 90
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$1;->a:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b(Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$1;->a:Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;->b(Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog;)Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/alibaba/laiwang/photokit/picker/ImageFolderDialog$a;->a(I)V

    .line 93
    :cond_0
    return-void
.end method
