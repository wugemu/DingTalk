.class final Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;
.super Ljava/lang/Object;
.source "MultiMailChooserActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;
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
        "Labg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 322
    check-cast p1, Labg;

    .line 1326
    if-eqz p1, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Labg;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    const/4 v0, 0x1

    invoke-static {v0}, Lacn;->c(Z)V

    .line 2246
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1330
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->a:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    .line 322
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 355
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->dismissLoadingDialog()V

    .line 357
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;)Lrz;

    move-result-object v0

    .line 1045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 358
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 351
    return-void
.end method
