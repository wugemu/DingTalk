.class public final Lafj$3;
.super Ljava/lang/Object;
.source "DragControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lafj;


# direct methods
.method public constructor <init>(Lafj;FF)V
    .locals 0
    .param p1, "this$0"    # Lafj;

    .prologue
    .line 302
    iput-object p1, p0, Lafj$3;->c:Lafj;

    iput p2, p0, Lafj$3;->a:F

    iput p3, p0, Lafj$3;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 308
    iget-object v1, p0, Lafj$3;->c:Lafj;

    invoke-static {v1}, Lafj;->e(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v1

    invoke-static {v1}, Lafj;->a(Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;)V

    .line 309
    iget-object v1, p0, Lafj$3;->c:Lafj;

    iget-object v2, p0, Lafj$3;->c:Lafj;

    invoke-virtual {v2}, Lafj;->e()Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v2

    invoke-static {v1, v2}, Lafj;->a(Lafj;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)I

    move-result v0

    .line 310
    .local v0, "index":I
    iget-object v1, p0, Lafj$3;->c:Lafj;

    invoke-virtual {v1}, Lafj;->e()Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v1

    iget-object v2, p0, Lafj$3;->c:Lafj;

    invoke-static {v2}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b(Lcom/alibaba/alimei/sdk/model/AddressModel;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 311
    iget-object v1, p0, Lafj$3;->c:Lafj;

    invoke-virtual {v1}, Lafj;->e()Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v1

    iget-object v2, p0, Lafj$3;->c:Lafj;

    invoke-static {v2}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 313
    :cond_0
    iget v1, p0, Lafj$3;->a:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lafj$3;->b:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 314
    iget-object v1, p0, Lafj$3;->c:Lafj;

    iget v2, p0, Lafj$3;->a:F

    iget v3, p0, Lafj$3;->b:F

    invoke-static {v1, v2, v3}, Lafj;->a(Lafj;FF)V

    .line 319
    :goto_0
    iget-object v1, p0, Lafj$3;->c:Lafj;

    invoke-static {v1}, Lafj;->d(Lafj;)V

    .line 320
    return-void

    .line 316
    :cond_1
    iget-object v1, p0, Lafj$3;->c:Lafj;

    invoke-static {v1}, Lafj;->c(Lafj;)Lcom/alibaba/alimei/mail/widget/DragContainer;

    move-result-object v1

    iget-object v2, p0, Lafj$3;->c:Lafj;

    invoke-static {v2}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/DragContainer;->removeView(Landroid/view/View;)V

    .line 317
    iget-object v1, p0, Lafj$3;->c:Lafj;

    invoke-virtual {v1}, Lafj;->e()Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    move-result-object v1

    iget-object v2, p0, Lafj$3;->c:Lafj;

    invoke-static {v2}, Lafj;->a(Lafj;)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;->getAddressModel()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;IZ)Lcom/alibaba/alimei/cmail/widget/mail/SingleAddressBar;

    goto :goto_0
.end method
