.class final Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;
.super Ljava/lang/Object;
.source "AbsCMailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 155
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v6, -0x1

    .line 161
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .line 1924
    iget-boolean v2, v2, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    .line 161
    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 164
    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 165
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 191
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)Lrz;

    move-result-object v2

    invoke-virtual {v2}, Lrz;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)Lrz;

    move-result-object v2

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lrz;->a:J

    .line 176
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v2, p2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->k_()V

    .line 178
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)Lrz;

    move-result-object v2

    .line 2045
    iput-wide v6, v2, Lrz;->a:J

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 183
    .restart local v1    # "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 184
    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 185
    .restart local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;)Lrz;

    move-result-object v2

    .line 3045
    iput-wide v6, v2, Lrz;->a:J

    goto :goto_0

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$6;->a:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto :goto_0
.end method
