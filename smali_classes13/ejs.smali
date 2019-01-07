.class public final Lejs;
.super Landroid/widget/BaseAdapter;
.source "HomeDropMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lejs$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lejs$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;",
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
            "Lejs$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lejs$a;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lejs;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lejs;->b:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lejs;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lejs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 63
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
    .line 68
    iget-object v0, p0, Lejs;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 69
    if-ltz p1, :cond_0

    iget-object v0, p0, Lejs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lejs;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 84
    if-nez p2, :cond_1

    .line 85
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;

    iget-object v2, p0, Lejs;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "button":Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;
    :goto_0
    iget-object v2, p0, Lejs;->c:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lejs;->c:Landroid/util/SparseArray;

    .line 92
    :cond_0
    iget-object v2, p0, Lejs;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lejs;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    if-ltz p1, :cond_3

    iget-object v2, p0, Lejs;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 94
    iget-object v2, p0, Lejs;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lejs$a;

    .line 95
    .local v1, "data":Lejs$a;
    iget v2, v1, Lejs$a;->c:I

    if-lez v2, :cond_2

    .line 96
    iget v2, v1, Lejs$a;->c:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setIcon(I)V

    .line 100
    :goto_1
    iget-object v2, v1, Lejs$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setText(Ljava/lang/String;)V

    .line 101
    iget v2, v1, Lejs$a;->e:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setRedCount(I)V

    .line 102
    iget-boolean v2, v1, Lejs$a;->f:Z

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setRedCountNumberShow(Z)V

    .line 108
    .end local v1    # "data":Lejs$a;
    :goto_2
    return-object v0

    .end local v0    # "button":Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;
    :cond_1
    move-object v0, p2

    .line 87
    check-cast v0, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;

    .restart local v0    # "button":Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;
    goto :goto_0

    .line 98
    .restart local v1    # "data":Lejs$a;
    :cond_2
    iget-object v2, v1, Lejs$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setIconFont(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    .end local v1    # "data":Lejs$a;
    :cond_3
    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setIcon(I)V

    .line 105
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setText(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeDropMenuButton;->setRedCount(I)V

    goto :goto_2
.end method
