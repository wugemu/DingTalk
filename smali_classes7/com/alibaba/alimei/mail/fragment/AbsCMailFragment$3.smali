.class final Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;
.super Ljava/lang/Object;
.source "AbsCMailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->b:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 628
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 629
    .local v0, "action":I
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->b:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->h()Ljava/util/List;

    move-result-object v1

    .line 630
    .local v1, "mailList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    packed-switch v0, :pswitch_data_0

    .line 642
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->b:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Z)V

    .line 643
    return-void

    .line 2474
    :pswitch_0
    const-string/jumbo v2, "mail_list_edit_mark_redflag_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->b:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    const-string/jumbo v3, "1"

    invoke-static {v2, v1, v3, v4, v4}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 636
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->b:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    const-string/jumbo v3, "1"

    invoke-static {v2, v1, v3, v5, v4}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 639
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment$3;->b:Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;

    const-string/jumbo v3, "2"

    invoke-static {v2, v1, v3, v4, v4}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->a(Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;Ljava/util/List;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
