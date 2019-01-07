.class final Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$2;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$2;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 565
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 566
    .local v1, "object":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Lgcy;

    if-nez v2, :cond_1

    .line 572
    :goto_1
    return-void

    .line 565
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 569
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcy;

    .line 571
    .local v0, "dataItem":Lgcy;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$2;->a:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;Lgcy;)V

    goto :goto_1
.end method
