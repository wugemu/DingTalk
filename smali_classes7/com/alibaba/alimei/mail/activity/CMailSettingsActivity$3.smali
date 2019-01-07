.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 769
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->C(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 770
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 750
    check-cast p1, Ljava/lang/String;

    .line 1753
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1755
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_mail_notification"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    .line 1763
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->C(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$3;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method
