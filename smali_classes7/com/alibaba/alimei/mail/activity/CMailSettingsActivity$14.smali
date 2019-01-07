.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$14;
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
    .line 574
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 577
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$14;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    const-string/jumbo v1, "/mail/downladDetailConfig.html"

    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dingtalk://qr.dingtalk.com"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2111
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lafu;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 578
    return-void
.end method
