.class final Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;
.super Ljava/lang/Object;
.source "MailSessionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    move-result-object v0

    .line 1333
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v0}, Lacv;->g()Z

    move-result v0

    .line 160
    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    move-result-object v0

    .line 2329
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v0}, Lacv;->h()V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    move-result-object v0

    .line 2372
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v1}, Lacv;->i()V

    .line 2373
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    goto :goto_0
.end method
