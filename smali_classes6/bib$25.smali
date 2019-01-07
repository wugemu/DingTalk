.class final Lbib$25;
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
    .line 791
    iput-object p1, p0, Lbib$25;->a:Lbib;

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
    const/4 v4, 0x0

    .line 794
    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->f:Lbiz;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->d:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 797
    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->f:Lbiz;

    iget-object v1, p0, Lbib$25;->a:Lbib;

    iget-object v1, v1, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-interface {v0, v1}, Lbiz;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 800
    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->a:Landroid/app/Activity;

    sget v1, Laxp$i;->ding_choose_max:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "100"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_2
    iget-object v0, p0, Lbib$25;->a:Lbib;

    iget-object v0, v0, Lbib;->f:Lbiz;

    iget-object v1, p0, Lbib$25;->a:Lbib;

    iget-object v1, v1, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-interface {v0, v1}, Lbiz;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0
.end method
