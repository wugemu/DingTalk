.class final Lbnz$1;
.super Ljava/lang/Object;
.source "LinkViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnz;-><init>(Landroid/view/View;Lboq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnz;


# direct methods
.method constructor <init>(Lbnz;)V
    .locals 0
    .param p1, "this$0"    # Lbnz;

    .prologue
    .line 44
    iput-object p1, p0, Lbnz$1;->a:Lbnz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 48
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    iget-object v3, p0, Lbnz$1;->a:Lbnz;

    .line 1211
    iget-boolean v3, v3, Lbnv;->d:Z

    .line 48
    if-eqz v3, :cond_0

    const-string/jumbo v3, "detail_click_link"

    :goto_0
    invoke-interface {v4, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lbnz$1;->a:Lbnz;

    invoke-static {v3}, Lbnz;->a(Lbnz;)Landroid/view/View;

    move-result-object v3

    sget v4, Lbpu$d;->circle_item_url:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "tag":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 58
    :goto_1
    return-void

    .line 48
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v3, "feed_click_link"

    goto :goto_0

    .restart local v1    # "tag":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "shareUrl":Ljava/lang/String;
    iget-object v3, p0, Lbnz$1;->a:Lbnz;

    invoke-static {v3}, Lbnz;->a(Lbnz;)Landroid/view/View;

    move-result-object v3

    sget v4, Lbpu$d;->ll_tag:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lbnz$1;->a:Lbnz;

    invoke-static {v3}, Lbnz;->a(Lbnz;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lbqs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
