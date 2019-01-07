.class public Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;
.super Landroid/widget/FrameLayout;
.source "FileFilterDropMenuButton.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1035
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->file_filter_drop_menu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1036
    sget v0, Lfzs$f;->item_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->a:Landroid/widget/TextView;

    .line 1037
    sget v0, Lfzs$f;->item_text_right_padding:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->b:Landroid/view/View;

    .line 1038
    sget v0, Lfzs$f;->item_select_status_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->c:Landroid/view/View;

    .line 1039
    sget v0, Lfzs$f;->item_unread_count_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->d:Landroid/widget/TextView;

    .line 1040
    sget v0, Lfzs$f;->item_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->e:Landroid/view/View;

    .line 32
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 3
    .param p1, "iconRes"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 52
    if-lez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setRedCount(I)V
    .locals 3
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 61
    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRedCountNumberShow(Z)V
    .locals 3
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1
    .param p1, "stringRes"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
