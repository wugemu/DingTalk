.class final Lbib$22;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 614
    iput-object p1, p0, Lbib$22;->a:Lbib;

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
    .line 617
    iget-object v1, p0, Lbib$22;->a:Lbib;

    iget-object v1, v1, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lbib$22;->a:Lbib;

    iget v1, v1, Lbib;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 619
    iget-object v1, p0, Lbib$22;->a:Lbib;

    invoke-static {v1}, Lbib;->r(Lbib;)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 622
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_unread_comment_count"

    iget-object v2, p0, Lbib$22;->a:Lbib;

    iget-object v2, v2, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->X()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    iget-object v1, p0, Lbib$22;->a:Lbib;

    iget-object v1, v1, Lbib;->a:Landroid/app/Activity;

    iget-object v2, p0, Lbib$22;->a:Lbib;

    iget-object v2, v2, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbib$22;->a:Lbib;

    iget-object v3, v3, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1681
    iget v3, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 623
    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 2342
    const-string/jumbo v1, "ding_detail_entry_item_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
