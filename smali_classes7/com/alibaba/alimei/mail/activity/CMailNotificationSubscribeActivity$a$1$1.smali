.class final Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;
.super Ljava/lang/Object;
.source "CMailNotificationSubscribeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;->b:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;->a:Ljava/lang/String;

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
    .line 259
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;->b:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;->b:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1;->a:Lrr;

    sget v1, Laxo$f;->account_tips:I

    .line 1100
    invoke-virtual {v0, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 262
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
