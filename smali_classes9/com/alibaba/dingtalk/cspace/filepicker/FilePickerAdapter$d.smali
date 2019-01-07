.class final Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;
.super Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;
.source "FilePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/CheckBox;

.field final synthetic g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .line 161
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$a;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;I)V

    .line 162
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
    .line 171
    sget v1, Lfzs$g;->alm_filepicker_file_list_item:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "convertView":Landroid/view/View;
    sget v1, Lfzs$f;->icon_token:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->c:Landroid/widget/ImageView;

    .line 173
    sget v1, Lfzs$f;->file_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->d:Landroid/widget/TextView;

    .line 174
    sget v1, Lfzs$f;->file_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->e:Landroid/widget/TextView;

    .line 175
    sget v1, Lfzs$f;->icon_select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->f:Landroid/widget/CheckBox;

    .line 176
    sget v1, Lfzs$e;->ui_common_cell_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 177
    return-object v0
.end method

.method public final a(Landroid/content/Context;ILgcy;Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "dataItem"    # Lgcy;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 182
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->d:Landroid/widget/TextView;

    iget-object v7, p3, Lgcy;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 185
    .local v0, "ddsb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v5, p3, Lgcy;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    iget-object v5, p3, Lgcy;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 188
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 190
    invoke-virtual {p3}, Lgcy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 196
    :goto_0
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 198
    iget-wide v8, p3, Lgcy;->e:J

    .line 1046
    invoke-static {v8, v9}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 199
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 202
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->c:Landroid/widget/ImageView;

    instance-of v5, p4, Landroid/widget/AbsListView;

    if-eqz v5, :cond_1

    move-object v5, p4

    check-cast v5, Landroid/widget/AbsListView;

    :goto_1
    invoke-interface {v2, v7, v6, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 204
    iget-object v5, p3, Lgcy;->a:Ljava/lang/String;

    invoke-static {v5}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "extension":Ljava/lang/String;
    iget-object v5, p3, Lgcy;->a:Ljava/lang/String;

    invoke-static {v5, v1}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, "resId":I
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    instance-of v5, p4, Landroid/widget/AbsListView;

    if-eqz v5, :cond_2

    sget v5, Lfzs$e;->file_pic_36:I

    if-ne v3, v5, :cond_2

    .line 208
    iget-object v4, p3, Lgcy;->b:Ljava/lang/String;

    .line 209
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->c:Landroid/widget/ImageView;

    check-cast p4, Landroid/widget/AbsListView;

    .end local p4    # "parent":Landroid/view/ViewGroup;
    invoke-interface {v2, v5, v4, p4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 210
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->c:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    .end local v4    # "url":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->g:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    invoke-static {v5, p3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;Lgcy;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->f:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    :goto_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->f:Landroid/widget/CheckBox;

    iget-object v6, p3, Lgcy;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 222
    return-void

    .line 193
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v3    # "resId":I
    .restart local p4    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p3}, Lgcy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .restart local v2    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_1
    move-object v5, v6

    .line 202
    goto :goto_1

    .line 212
    .restart local v1    # "extension":Ljava/lang/String;
    .restart local v3    # "resId":I
    :cond_2
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->c:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 218
    .end local p4    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter$d;->f:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method
