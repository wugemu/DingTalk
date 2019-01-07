.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1100
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 2103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->dismissLoadingDialog()V

    .line 2107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1100
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->dismissLoadingDialog()V

    .line 1123
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1115
    return-void
.end method
