.class public final Layd;
.super Landroid/widget/ArrayAdapter;
.source "DingMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layd$a;,
        Layd$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Layd$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Layd$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "menus":Ljava/util/List;, "Ljava/util/List<Layd$a;>;"
    sget v0, Laxp$g;->ding_menu_more_list_item:I

    sget v1, Laxp$f;->tv_date:I

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Layd;->a:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 31
    .line 1036
    if-nez p2, :cond_1

    .line 1037
    iget-object v0, p0, Layd;->a:Landroid/view/LayoutInflater;

    sget v1, Laxp$g;->ding_menu_more_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1038
    .end local p2    # "convertView":Landroid/view/View;
    new-instance v0, Layd$b;

    invoke-direct {v0, p2}, Layd$b;-><init>(Landroid/view/View;)V

    .line 1039
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 1044
    :goto_0
    invoke-virtual {p0, p1}, Layd;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd$a;

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, v1, Layd$b;->a:Landroid/widget/TextView;

    .line 1076
    iget-object v0, v0, Layd$a;->b:Ljava/lang/CharSequence;

    .line 1057
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_0
    return-object p2

    .line 1041
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd$b;

    move-object v1, v0

    goto :goto_0
.end method
