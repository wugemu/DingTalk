.class public abstract Lete;
.super Ljava/lang/Object;
.source "AbsSearchViewHolder.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/view/View;

.field protected c:I

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTabCode;->getValue()I

    move-result v0

    iput v0, p0, Lete;->c:I

    .line 50
    iput-object p1, p0, Lete;->a:Landroid/app/Activity;

    .line 51
    iput p2, p0, Lete;->e:I

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lete;->a:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lete;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1076
    iget v2, p0, Lete;->e:I

    .line 60
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lete;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lete;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lete;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method protected final a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lete;->a:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "expandableTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "keyUsedInAdapter"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lete;->a:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lete;->d:Ljava/util/Map;

    invoke-virtual {p1, v0, v1, p3}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->a(Ljava/lang/CharSequence;Ljava/util/Map;Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "collapsedStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lete;->d:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public final b(I)V
    .locals 0
    .param p1, "searchTabCode"    # I

    .prologue
    .line 113
    iput p1, p0, Lete;->c:I

    .line 114
    return-void
.end method
