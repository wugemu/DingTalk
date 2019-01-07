.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$12;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$12;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$12;->a:Z

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
    .line 1785
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$12;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->i(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$12;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1786
    return-void

    .line 1785
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
