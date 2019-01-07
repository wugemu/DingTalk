.class final Lcom/alibaba/alimei/mail/activity/MailSessionActivity$4;
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
    .line 169
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSessionActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailSessionActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSessionActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSessionActivity;)Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->k()V

    goto :goto_0
.end method
