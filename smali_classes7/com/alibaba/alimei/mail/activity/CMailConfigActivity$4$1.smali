.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 637
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->u(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    .line 638
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->dismissLoadingDialog()V

    .line 639
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Lrz;

    move-result-object v0

    .line 1045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 640
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 625
    .line 1629
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->u(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V

    .line 1630
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->dismissLoadingDialog()V

    .line 1631
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4$1;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Lrz;

    move-result-object v0

    .line 2045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 625
    return-void
.end method
