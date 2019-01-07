.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 506
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;->b:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    goto :goto_0
.end method
