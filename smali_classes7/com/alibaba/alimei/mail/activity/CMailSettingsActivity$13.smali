.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 538
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 539
    .local v0, "isChecked":Z
    if-nez v0, :cond_0

    move v0, v3

    .line 540
    :goto_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->x(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 541
    if-eqz v0, :cond_1

    move v2, v4

    .line 542
    .local v2, "shownType":I
    :goto_1
    const/4 v3, 0x0

    invoke-static {v3}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v1

    .line 543
    .local v1, "settingApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    if-eqz v1, :cond_2

    .line 544
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$13;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/SettingApi;->setShownType(ILxv;)V

    .line 564
    :goto_2
    return-void

    .end local v1    # "settingApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    .end local v2    # "shownType":I
    :cond_0
    move v0, v4

    .line 539
    goto :goto_0

    :cond_1
    move v2, v3

    .line 541
    goto :goto_1

    .line 562
    .restart local v1    # "settingApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    .restart local v2    # "shownType":I
    :cond_2
    const-string/jumbo v3, "CMailAccountsActivity"

    const-string/jumbo v4, "setting conversation model fail for settingApi is null"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
