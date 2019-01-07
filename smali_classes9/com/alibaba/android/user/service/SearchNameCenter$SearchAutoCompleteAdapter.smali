.class Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;
.super Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;
.source "SearchNameCenter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchAutoCompleteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter",
        "<",
        "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;-><init>(Landroid/content/Context;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    if-nez p2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->c:Landroid/view/LayoutInflater;

    sget v3, Lezg$j;->user_external_search_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;

    .line 103
    .local v0, "item":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;
    if-eqz v0, :cond_1

    .line 104
    sget v2, Lezg$h;->tv_content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->e:Ljava/lang/String;

    invoke-static {v3, v4}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    .line 109
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->g:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->g:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    :goto_0
    return-object p2

    .line 111
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->f:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->f:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
