.class final Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$2;
.super Ljava/lang/Object;
.source "CMailNewAccountFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 83
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->F()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "accountText":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 75
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 79
    return-void
.end method
