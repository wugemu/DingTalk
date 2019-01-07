.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;
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
        "Ljava/util/List",
        "<",
        "Labk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1012
    check-cast p1, Ljava/util/List;

    .line 2015
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Ljava/util/List;)V

    .line 1012
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1023
    return-void
.end method
