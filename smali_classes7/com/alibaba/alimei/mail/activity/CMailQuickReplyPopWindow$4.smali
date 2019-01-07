.class final Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "CMailQuickReplyPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 512
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;->b:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;->a:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 516
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;

    .line 520
    .local v0, "option":Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;
    if-nez p2, :cond_3

    .line 521
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;->b:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;B)V

    .line 522
    .local v1, "viewHolder":Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;
    iget-boolean v2, v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;->c:Z

    if-eqz v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;->a:Landroid/view/LayoutInflater;

    sget v3, Laxo$g;->quick_reply_option2_layout:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 524
    sget v2, Laxo$f;->option_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;->a:Landroid/widget/TextView;

    .line 531
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 536
    :goto_1
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :cond_0
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 541
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :cond_1
    return-object p2

    .line 526
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;->a:Landroid/view/LayoutInflater;

    sget v3, Laxo$g;->quick_reply_option_layout:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 527
    sget v2, Laxo$f;->option_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;->a:Landroid/widget/TextView;

    .line 528
    sget v2, Laxo$f;->option_desc:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;->b:Landroid/widget/TextView;

    goto :goto_0

    .line 533
    .end local v1    # "viewHolder":Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;

    .restart local v1    # "viewHolder":Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;
    goto :goto_1
.end method
