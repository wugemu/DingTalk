.class final Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;
.super Ljava/lang/Object;
.source "CMailBaseSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

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
    .line 202
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->g:Landroid/view/View;

    if-ne v0, p2, :cond_1

    .line 204
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->i()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/widget/AdapterView;Landroid/view/View;I)V

    goto :goto_0
.end method
