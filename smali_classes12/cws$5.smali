.class final Lcws$5;
.super Ljava/lang/Object;
.source "QuickReplyItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcws;


# direct methods
.method constructor <init>(Lcws;)V
    .locals 0
    .param p1, "this$0"    # Lcws;

    .prologue
    .line 372
    iput-object p1, p0, Lcws$5;->a:Lcws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 376
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcws$a;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 377
    check-cast v0, Lcws$a;

    .line 378
    .local v0, "data":Lcws$a;
    iget-object v2, p0, Lcws$5;->a:Lcws;

    iget v3, v0, Lcws$a;->c:I

    invoke-static {v2, v3}, Lcws;->a(Lcws;I)V

    .line 379
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    iget-object v3, v0, Lcws$a;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 381
    iget-boolean v2, v0, Lcws$a;->d:Z

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcws$5;->a:Lcws;

    iget v3, v0, Lcws$a;->c:I

    invoke-static {v2, v3}, Lcws;->b(Lcws;I)V

    .line 385
    .end local v0    # "data":Lcws$a;
    :cond_0
    return-void
.end method
