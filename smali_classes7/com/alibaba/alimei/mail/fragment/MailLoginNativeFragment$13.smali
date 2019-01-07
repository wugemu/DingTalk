.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1, p2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;I)I

    .line 1368
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, p2

    .line 1369
    .local v0, "newMail":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;)V

    .line 1370
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 1371
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labf;

    invoke-static {v2, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Labf;)V

    .line 1375
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1376
    return-void

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->l(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->m(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V

    goto :goto_0
.end method
