.class final Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;
.super Ljava/lang/Object;
.source "CMailSignTemplateListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    iput-wide p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 256
    .line 1259
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    const-string/jumbo v0, "CMailSignTemplateListActivity"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g()V

    .line 1264
    sget v0, Laxo$i;->dt_mail_signaute_template_switch_success:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1265
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;J)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 274
    const-string/jumbo v0, "CMailSignTemplateListActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-string/jumbo v0, "CMailSignTemplateListActivity"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$6;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g()V

    .line 280
    sget v0, Laxo$i;->dt_mail_signature_save_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 270
    return-void
.end method
