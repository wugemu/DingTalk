.class public final Lfrc;
.super Landroid/widget/BaseAdapter;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfrc$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfsb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lfsb;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "contactList":Ljava/util/List;, "Ljava/util/List<Lfsb;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lfrc;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lfrc;->b:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lfrc;->c:Landroid/widget/ListView;

    .line 31
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lfrc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lfrc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v2, p0, Lfrc;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->item_verify_contact:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v1, Lfrc$a;

    invoke-direct {v1, p0, p2}, Lfrc$a;-><init>(Lfrc;Landroid/view/View;)V

    .line 54
    .local v1, "viewHolder":Lfrc$a;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v2, p0, Lfrc;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsb;

    .line 61
    .local v0, "path":Lfsb;
    iget-object v2, v1, Lfrc$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v0, Lfsb;->b:Ljava/lang/String;

    iget-object v4, v0, Lfsb;->c:Ljava/lang/String;

    iget-object v5, p0, Lfrc;->c:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 62
    iget-object v2, v1, Lfrc$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lfsb;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-boolean v2, v0, Lfsb;->d:Z

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, v1, Lfrc$a;->c:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    :goto_1
    return-object p2

    .line 56
    .end local v0    # "path":Lfsb;
    .end local v1    # "viewHolder":Lfrc$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrc$a;

    .restart local v1    # "viewHolder":Lfrc$a;
    goto :goto_0

    .line 66
    .restart local v0    # "path":Lfsb;
    :cond_1
    iget-object v2, v1, Lfrc$a;->c:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
