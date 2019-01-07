.class final Lfnr$a;
.super Landroid/widget/BaseAdapter;
.source "OrgExternalNameCenter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfnr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfnr$a$a;
    }
.end annotation


# instance fields
.field a:Lfnr$b;

.field final synthetic b:Lfnr;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/Filter;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lfnr;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lfnr$a;->b:Lfnr;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfnr$a;->d:Ljava/util/List;

    .line 128
    iput-object p2, p0, Lfnr$a;->c:Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lfnr$a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lfnr$a;->e:Landroid/view/LayoutInflater;

    .line 130
    new-instance v0, Lfnr$a$a;

    invoke-direct {v0, p0}, Lfnr$a$a;-><init>(Lfnr$a;)V

    iput-object v0, p0, Lfnr$a;->f:Landroid/widget/Filter;

    .line 131
    iget-object v0, p0, Lfnr$a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$f;->external_company_normal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lfnr$a;->h:I

    .line 132
    iget-object v0, p0, Lfnr$a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$f;->external_company_first_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lfnr$a;->i:I

    .line 133
    iget-object v0, p0, Lfnr$a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->uidic_global_color_c2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lfnr$a;->j:I

    .line 134
    return-void
.end method

.method static synthetic a(Lfnr$a;)Lfnr$b;
    .locals 1
    .param p0, "x0"    # Lfnr$a;

    .prologue
    .line 115
    iget-object v0, p0, Lfnr$a;->a:Lfnr$b;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lfnr$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lfnr$a;->g:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lfnr$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    invoke-virtual {p0}, Lfnr$a;->notifyDataSetChanged()V

    .line 149
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lfnr$a;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lfnr$a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-virtual {p0}, Lfnr$a;->notifyDataSetChanged()V

    .line 143
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lfnr$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lfnr$a;->f:Landroid/widget/Filter;

    return-object v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lfnr$a;->a(I)Ljava/lang/String;

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
    .line 163
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    iget-object v1, p0, Lfnr$a;->e:Landroid/view/LayoutInflater;

    sget v2, Lezg$j;->user_external_search_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 171
    :cond_0
    sget v1, Lezg$h;->tv_content:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lfnr$a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfnr$a;->j:I

    invoke-static {v1, v2}, Lcos;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lfnr$a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 174
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lfnr$a;->i:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lfnr$a;->i:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 178
    :goto_0
    return-object p2

    .line 176
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lfnr$a;->h:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lfnr$a;->h:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
