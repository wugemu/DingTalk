.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 716
    const-string/jumbo v0, "CMailConfigActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 717
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 699
    check-cast p1, Ljava/lang/String;

    .line 1702
    const-string/jumbo v0, "CMailConfigActivity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "checkUserData result: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->dismissLoadingDialog()V

    .line 1707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1708
    const-string/jumbo v0, "check data success"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1710
    :cond_1
    const-string/jumbo v0, "check data fail"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
