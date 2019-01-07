.class final Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;
.super Ljava/lang/Object;
.source "CMailSignatureDetailConfigActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 655
    .line 1658
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->g()V

    .line 1662
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lacg;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 1663
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    .line 655
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 672
    const-string/jumbo v0, "CMailSignatureDetail"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->g()V

    .line 677
    invoke-static {p2}, Lhcn;->a(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 668
    return-void
.end method
