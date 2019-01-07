.class public Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "ReplyExpressionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Laek;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    if-nez p2, :cond_1

    .line 47
    new-instance v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;-><init>(Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;)V

    .line 48
    .local v2, "viewHolder":Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;->e:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Laxo$g;->reply_expression_cell_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 49
    sget v3, Laxo$f;->expression_label:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;->a:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;->a:Laek;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;->a:Laek;

    invoke-interface {v3}, Laek;->c()Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "expression":Ljava/lang/String;
    iget-object v3, v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iput-object v1, v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;->b:Ljava/lang/String;

    .line 64
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "expression":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 52
    .end local v2    # "viewHolder":Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;

    .restart local v2    # "viewHolder":Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;
    goto :goto_0
.end method
