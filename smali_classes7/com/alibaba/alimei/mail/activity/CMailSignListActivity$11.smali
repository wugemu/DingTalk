.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b()V
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 314
    .line 1317
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g()V

    .line 1321
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    .line 314
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string/jumbo v0, "CMailSignListActivity"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->g()V

    .line 335
    invoke-static {p2}, Lhcn;->a(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$11;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 326
    return-void
.end method
