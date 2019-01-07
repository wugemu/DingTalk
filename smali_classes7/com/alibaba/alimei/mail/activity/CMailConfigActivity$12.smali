.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 502
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->s(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 503
    .local v0, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$12;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method
