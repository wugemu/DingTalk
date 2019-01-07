.class Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;
.super Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
.source "FilePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field final synthetic f:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->f:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
    .param p2, "type"    # I

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->f:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .line 232
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;I)V

    .line 233
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    sget v1, Lfzs$g;->alm_filepicker_dir_list_item:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "convertView":Landroid/view/View;
    sget v1, Lfzs$f;->icon_token:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->d:Landroid/widget/ImageView;

    .line 242
    sget v1, Lfzs$f;->file_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->e:Landroid/widget/TextView;

    .line 243
    sget v1, Lfzs$e;->cspace_list_item_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    return-object v0
.end method

.method public a(Landroid/content/Context;ILgcy;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "dataItem"    # Lgcy;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 250
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->d:Landroid/widget/ImageView;

    instance-of v3, p4, Landroid/widget/AbsListView;

    if-eqz v3, :cond_0

    check-cast p4, Landroid/widget/AbsListView;

    .end local p4    # "parent":Landroid/view/ViewGroup;
    :goto_0
    invoke-interface {v0, v2, v1, p4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 252
    if-eqz p3, :cond_1

    .line 253
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->e:Landroid/widget/TextView;

    iget-object v2, p3, Lgcy;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->d:Landroid/widget/ImageView;

    sget v2, Lfzs$e;->cspace_folder_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    return-void

    .restart local p4    # "parent":Landroid/view/ViewGroup;
    :cond_0
    move-object p4, v1

    .line 250
    goto :goto_0

    .line 255
    .end local p4    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$c;->e:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
