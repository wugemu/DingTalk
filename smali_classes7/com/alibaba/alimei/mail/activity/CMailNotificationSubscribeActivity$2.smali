.class final Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$2;
.super Ljava/lang/Object;
.source "CMailNotificationSubscribeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lajj;->a()Z

    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity;->a:Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailNotificationSubscribeActivity$a;->notifyDataSetChanged()V

    goto :goto_0
.end method
