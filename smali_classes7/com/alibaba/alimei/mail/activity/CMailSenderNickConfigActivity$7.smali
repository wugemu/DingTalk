.class final Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;
.super Ljava/lang/Object;
.source "CMailSenderNickConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;->a:Ljava/lang/String;

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
    .line 294
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;->b:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
