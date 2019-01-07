.class final Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;
.super Ljava/lang/Object;
.source "MailSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->b(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 140
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->b(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->b(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
