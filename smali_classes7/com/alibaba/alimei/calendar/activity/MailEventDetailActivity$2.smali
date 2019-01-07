.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;
.super Ljava/lang/Object;
.source "MailEventDetailActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lrh$a;->a(F)V

    .line 314
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 308
    .local p2, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-interface {v0, v1, p1, p2}, Lrh$a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 309
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "finsihAll"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a()V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->b(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lrh$a;

    move-result-object v0

    invoke-interface {v0}, Lrh$a;->a()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$i;->dt_cmail_hide_quote:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$2;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$i;->dt_cmail_show_quote:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method
