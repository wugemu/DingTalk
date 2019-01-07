.class public Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailContentSubscribeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;,
        Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;

.field private c:Landroid/view/MenuItem;

.field private d:Laeg;

.field private e:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->b:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;Lcom/alibaba/doraemon/image/ImageMagician;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;
    .param p1, "x1"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Laeg;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->d:Laeg;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v1, Laxo$g;->activity_cmail_content_subscribe:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->setContentView(I)V

    .line 50
    sget v1, Laxo$f;->item_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->a:Landroid/widget/ListView;

    .line 51
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;

    invoke-direct {v1, p0, p0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->b:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxo$g;->cmail_content_subscribe_header_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->b:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 70
    sget v0, Laxo$i;->dt_cmail_my_subscribe:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->c:Landroid/view/MenuItem;

    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->c:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 80
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lacg;->c(Landroid/content/Context;Lcma;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 63
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 1089
    invoke-static {}, Laeh;->a()Laeg;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->d:Laeg;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->d:Laeg;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)V

    invoke-interface {v0, v1}, Laeg;->a(Lcma;)V

    .line 1120
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->d:Laeg;

    invoke-interface {v0}, Laeg;->c()V

    .line 66
    return-void
.end method
