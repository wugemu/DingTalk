.class final Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$b;
.super Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;
.source "FilePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$b;->c:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .line 263
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;I)V

    .line 264
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILgcy;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "dataItem"    # Lgcy;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->a(Landroid/content/Context;ILgcy;Landroid/view/ViewGroup;)V

    .line 268
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$b;->d:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->alm_filepicker_back_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    return-void
.end method
