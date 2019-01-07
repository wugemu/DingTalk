.class final Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    iput p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->a:I

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
    .line 215
    check-cast p1, Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    const-string/jumbo v0, "CMailSignTemplateListActivity"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g()V

    .line 1223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    sget v0, Laxo$i;->dt_mail_signature_relief_open:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->a:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;J)V

    goto :goto_0

    .line 1227
    :cond_1
    invoke-static {p1}, Lhcn;->a(Ljava/lang/String;)V

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
    .line 237
    const-string/jumbo v0, "CMailSignTemplateListActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "CMailSignTemplateListActivity"

    const-string/jumbo v1, "mActivity.isDestroyed()"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignTemplateListActivity;->g()V

    .line 243
    sget v0, Laxo$i;->dt_mail_signature_save_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 233
    return-void
.end method
