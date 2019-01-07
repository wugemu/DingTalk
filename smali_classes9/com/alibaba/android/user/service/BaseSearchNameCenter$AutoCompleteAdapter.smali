.class public abstract Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseSearchNameCenter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/BaseSearchNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutoCompleteAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Landroid/view/LayoutInflater;

.field protected d:Landroid/widget/Filter;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:I

.field protected h:Lcom/alibaba/android/user/service/BaseSearchNameCenter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->b:Ljava/util/List;

    .line 100
    iput-object p1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->a:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->c:Landroid/view/LayoutInflater;

    .line 102
    new-instance v0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter$a;-><init>(Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;)V

    iput-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->d:Landroid/widget/Filter;

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$f;->external_company_normal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->f:I

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$f;->external_company_first_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->g:I

    .line 105
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/service/BaseSearchNameCenter$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/user/service/BaseSearchNameCenter$a;

    .prologue
    .line 168
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->h:Lcom/alibaba/android/user/service/BaseSearchNameCenter$a;

    .line 169
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 117
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->e:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 120
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->d:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .line 134
    .local p0, "this":Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;, "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method
