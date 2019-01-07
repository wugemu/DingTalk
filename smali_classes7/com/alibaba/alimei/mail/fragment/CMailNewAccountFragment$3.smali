.class final Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$3;
.super Ljava/lang/Object;
.source "CMailNewAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;
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
    .line 114
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->b(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment;Ljava/lang/String;)V

    .line 118
    return-void
.end method
