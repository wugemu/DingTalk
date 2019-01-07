.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->c:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->a:Z

    iput p3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 523
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 524
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->a:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->c:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->c:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)J

    move-result-wide v2

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->b:I

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;JI)V

    .line 2189
    const-string/jumbo v0, "mail_signatureV2_OpenAllConfirm"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->c:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->c:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)J

    move-result-wide v2

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$2;->b:I

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;JI)V

    .line 2197
    const-string/jumbo v0, "mail_signatureV2_CloseAllConfirm"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
