.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->c(Z)V
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
        "Lcom/alibaba/alimei/sdk/model/MailTagModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/sdk/model/MailTagModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1354
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 2357
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->a:Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-nez v0, :cond_1

    .line 2358
    :cond_0
    :goto_0
    return-void

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    goto :goto_0
.end method
