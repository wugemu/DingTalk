.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;
.super Ljava/lang/Object;
.source "CMailSettingsMySubscribeActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;
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
        "Laeg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Laeg;

    .line 1072
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Laeg;)V

    .line 69
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsMySubscribeActivity;Laeg;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 82
    return-void
.end method
