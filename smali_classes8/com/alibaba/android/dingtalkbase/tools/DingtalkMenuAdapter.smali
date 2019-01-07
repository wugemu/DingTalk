.class public final Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "DingtalkMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcng;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->b:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcng;Z)V
    .locals 1
    .param p1, "menu"    # Lcng;
    .param p2, "isNotifyDataChanged"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    .line 40
    :cond_1
    return-void
.end method

.method public final a(Lcng;ZI)V
    .locals 1
    .param p1, "menu"    # Lcng;
    .param p2, "isNotifyDataChanged"    # Z
    .param p3, "index"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcng;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcng;>;"
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcng;

    .line 65
    .local v0, "menu":Lcng;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    .end local v0    # "menu":Lcng;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcng;

    .line 100
    .local v1, "object":Lcng;
    if-nez p2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcig$h;->item_menu:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 102
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;-><init>()V

    .line 103
    .local v0, "holder":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;
    sget v2, Lcig$f;->text1:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;->a:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_0
    if-nez v1, :cond_1

    .line 109
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->b:Landroid/content/Context;

    sget v4, Lcig$j;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;->a:Landroid/widget/TextView;

    return-object v2

    .line 106
    .end local v0    # "holder":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;

    .restart local v0    # "holder":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;
    goto :goto_0

    .line 1033
    :cond_1
    iget v2, v1, Lcng;->b:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    .line 111
    :goto_2
    if-eqz v2, :cond_3

    .line 112
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;->a:Landroid/widget/TextView;

    iget v3, v1, Lcng;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1033
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 114
    :cond_3
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter$a;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lcng;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
