.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 10
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 955
    if-eqz p1, :cond_0

    .line 956
    iget v8, p1, Lcjo$b;->b:I

    packed-switch v8, :pswitch_data_0

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 958
    :pswitch_0
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    .line 959
    .local v0, "alias":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v8, v0, Labh;

    if-eqz v8, :cond_0

    move-object v7, v0

    .line 960
    check-cast v7, Labh;

    .line 961
    .local v7, "pushModel":Labh;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "action_dingtalk_mail_changed"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "account_name"

    iget-object v9, v7, Labh;->b:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    iget-object v8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v8}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v4}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 967
    .end local v0    # "alias":Ljava/lang/Object;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "pushModel":Labh;
    :pswitch_1
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    .line 968
    .local v2, "data":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v8, v2, Labl;

    if-eqz v8, :cond_0

    move-object v7, v2

    .line 969
    check-cast v7, Labl;

    .line 970
    .local v7, "pushModel":Labl;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "mail_new_org_mail"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "account_name"

    iget-object v9, v7, Labl;->b:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    iget-object v8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v8}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v4}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 976
    .end local v2    # "data":Ljava/lang/Object;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "pushModel":Labl;
    :pswitch_2
    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    .line 977
    .local v1, "content":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v8, v1, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 978
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "action_mail_has_increment"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "mail_increment_payload"

    check-cast v1, Ljava/lang/String;

    .end local v1    # "content":Ljava/lang/Object;
    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    iget-object v8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v8}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v4}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 984
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p1, Lcjo$b;->a:Ljava/lang/Object;

    .line 986
    .local v3, "data2":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v8, v3, Labm;

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v7, v3

    .line 987
    check-cast v7, Labm;

    .line 988
    .local v7, "pushModel":Labm;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "mail_remove_org_mail"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "account_name"

    iget-object v9, v7, Labm;->b:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    iget-object v8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v8}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v4}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 994
    .end local v3    # "data2":Ljava/lang/Object;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "pushModel":Labm;
    :pswitch_4
    iget-object v5, p1, Lcjo$b;->a:Ljava/lang/Object;

    .line 995
    .local v5, "msg":Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 996
    check-cast v6, Ljava/lang/String;

    .line 997
    .local v6, "msgJson":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "action_mail_operations"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "mail_operations_data"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    iget-object v8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-static {v8}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Ldq;

    move-result-object v8

    invoke-virtual {v8, v4}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 956
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
