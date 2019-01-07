.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;
.super Landroid/os/Handler;
.source "MailDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1007
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1040
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1012
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1014
    .local v1, "isImport":Z
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1015
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->a(Z)V

    goto :goto_1

    .line 1021
    .end local v1    # "isImport":Z
    :sswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    sget v3, Laxo$i;->set_import_errer:I

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1028
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 1029
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)V

    goto :goto_1

    .line 1031
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)V

    goto :goto_1

    .line 1035
    :sswitch_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZZ)V

    goto :goto_1

    .line 1010
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
    .end sparse-switch
.end method
