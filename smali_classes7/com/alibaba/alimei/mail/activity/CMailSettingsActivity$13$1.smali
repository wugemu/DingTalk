.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13$1;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 558
    const-string/jumbo v0, "CMailAccountsActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 559
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 544
    check-cast p1, Ljava/lang/Boolean;

    .line 1547
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2022
    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 1550
    if-nez v1, :cond_1

    .line 1551
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1552
    sget v0, Laxo$i;->set_import_errer:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 544
    :cond_1
    return-void
.end method
