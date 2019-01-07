.class public Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchOrgNameCenter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lccl;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/Filter;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->c:Ljava/util/List;

    .line 202
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->b:Landroid/content/Context;

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->d:Landroid/view/LayoutInflater;

    .line 204
    new-instance v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter$a;-><init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;)V

    iput-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->e:Landroid/widget/Filter;

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$f;->external_company_normal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->g:I

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$f;->external_company_first_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->h:I

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;)Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter$a;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lccl;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccl;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->f:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 222
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
            "Lccl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lccl;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 216
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->e:Landroid/widget/Filter;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(I)Lccl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 236
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 241
    if-nez p2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->d:Landroid/view/LayoutInflater;

    sget v3, Lezg$j;->user_external_search_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(I)Lccl;

    move-result-object v0

    .line 245
    .local v0, "item":Lccl;
    if-eqz v0, :cond_1

    .line 246
    sget v2, Lezg$h;->tv_content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 247
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->b:Landroid/content/Context;

    iget-object v3, v0, Lccl;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    .line 251
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->h:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->h:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 255
    :goto_0
    return-object p2

    .line 253
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->g:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->g:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
