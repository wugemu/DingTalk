.class final Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;
.super Ljava/lang/Object;
.source "CMailSignatureDetailConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

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
    .line 575
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->r(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->r(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Lrz;

    move-result-object v0

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 582
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->s(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .line 584
    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->t(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)Laca;

    move-result-object v2

    invoke-virtual {v2}, Laca;->d()Z

    move-result v2

    .line 583
    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
