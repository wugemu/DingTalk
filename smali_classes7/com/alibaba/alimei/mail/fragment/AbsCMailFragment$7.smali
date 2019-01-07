.class final Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;
.super Ljava/lang/Object;
.source "AbsCMailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 198
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .line 1924
    iget-boolean v3, v3, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    .line 198
    if-eqz v3, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v2

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v3, p2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const/4 v2, 0x0

    goto :goto_0

    .line 2341
    :cond_2
    const-string/jumbo v3, "mail_editmode"

    invoke-static {v3}, Lafe;->a(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    .line 209
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 211
    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 212
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$7;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0
.end method
