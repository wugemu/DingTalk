.class final Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d$1;
.super Ljava/lang/Object;
.source "MailboxListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d$1;->b:Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;

    iput p2, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 891
    iget v1, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d$1;->a:I

    .line 1923
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1924
    sget v2, Laxo$f;->switch_btn:I

    if-ne v0, v2, :cond_0

    .line 1925
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1926
    if-nez v0, :cond_1

    .line 1937
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1929
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/ExpandableListView;

    if-nez v2, :cond_2

    .line 1930
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 1932
    :cond_2
    check-cast p1, Landroid/widget/TextView;

    .line 1933
    .end local p1    # "v":Landroid/view/View;
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 1934
    if-eqz v0, :cond_0

    .line 1935
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1936
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 1937
    sget v0, Laxo$i;->icon_act_close:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1939
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1940
    sget v0, Laxo$i;->icon_act_open:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
