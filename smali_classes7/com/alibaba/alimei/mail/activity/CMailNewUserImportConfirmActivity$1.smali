.class final Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;
.super Lcmi;
.source "CMailNewUserImportConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

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
    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    check-cast p1, Laan;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->dismissLoadingDialog()V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;

    iget-object v1, p1, Laan;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method
