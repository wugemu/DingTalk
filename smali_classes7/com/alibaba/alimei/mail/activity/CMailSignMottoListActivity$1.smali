.class final Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;
.super Ljava/lang/Object;
.source "CMailSignMottoListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;->notifyDataSetChanged()V

    .line 117
    :cond_0
    return-void
.end method
