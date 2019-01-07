.class final Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;
.super Lcmi;
.source "CMailNewOrganizationImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laak;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 214
    check-cast p1, Laak;

    .line 1217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->dismissLoadingDialog()V

    .line 1223
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;Laak;)V

    .line 214
    :cond_0
    return-void
.end method
