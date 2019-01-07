.class public final Lgcz;
.super Landroid/widget/BaseAdapter;
.source "FileFilterDropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgcz$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgcz$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lgcz$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lgcz$a;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lgcz;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lgcz;->b:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgcz;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lgcz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lgcz;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60
    if-ltz p1, :cond_0

    iget-object v0, p0, Lgcz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lgcz;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p2, :cond_1

    .line 76
    new-instance v0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;

    iget-object v2, p0, Lgcz;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "button":Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;
    :goto_0
    iget-object v2, p0, Lgcz;->c:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lgcz;->c:Landroid/util/SparseArray;

    .line 83
    :cond_0
    iget-object v2, p0, Lgcz;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lgcz;->b:Ljava/util/List;

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lgcz;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 85
    iget-object v2, p0, Lgcz;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgcz$a;

    .line 86
    .local v1, "data":Lgcz$a;
    iget v2, v1, Lgcz$a;->c:I

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->setIcon(I)V

    .line 87
    iget-object v2, v1, Lgcz$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->setText(Ljava/lang/String;)V

    .line 88
    iget v2, v1, Lgcz$a;->d:I

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->setRedCount(I)V

    .line 89
    iget-boolean v2, v1, Lgcz$a;->e:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->setRedCountNumberShow(Z)V

    .line 95
    .end local v1    # "data":Lgcz$a;
    :goto_1
    return-object v0

    .end local v0    # "button":Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;
    :cond_1
    move-object v0, p2

    .line 78
    check-cast v0, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;

    .restart local v0    # "button":Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->setIcon(I)V

    .line 92
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->setText(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FileFilterDropMenuButton;->setRedCount(I)V

    goto :goto_1
.end method
