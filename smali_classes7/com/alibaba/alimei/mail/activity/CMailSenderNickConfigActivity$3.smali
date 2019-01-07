.class final Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$3;
.super Ljava/lang/Object;
.source "CMailSenderNickConfigActivity.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 3
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string/jumbo v0, "basic_UpdateUserSelf"

    iget-object v1, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget v0, p1, Lyc;->c:I

    if-eqz v0, :cond_0

    .line 174
    iget v0, p1, Lyc;->c:I

    if-ne v0, v2, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    invoke-static {v0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Z)V

    goto :goto_0

    .line 176
    :cond_2
    iget v0, p1, Lyc;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Z)V

    goto :goto_0
.end method
