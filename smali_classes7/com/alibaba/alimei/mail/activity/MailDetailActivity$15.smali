.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
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
        "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 2100
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2100
    check-cast p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    .line 3103
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 3113
    :cond_0
    :goto_0
    return-void

    .line 3107
    :cond_1
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mStatus:I

    .line 3108
    packed-switch v0, :pswitch_data_0

    .line 3118
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)Z

    goto :goto_0

    .line 3112
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$15;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)Z

    goto :goto_0

    .line 3108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
