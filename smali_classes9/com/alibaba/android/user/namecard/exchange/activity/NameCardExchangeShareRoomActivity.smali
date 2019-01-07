.class public Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "NameCardExchangeShareRoomActivity.java"


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->a:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lezg$j;->activity_name_card_share_room:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->setContentView(I)V

    .line 1114
    sget v0, Lezg$h;->iv_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->d:Landroid/widget/ImageView;

    .line 1115
    sget v0, Lezg$h;->pb_org_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->e:Landroid/widget/ProgressBar;

    .line 1116
    sget v0, Lezg$h;->name_card_share_room_tv_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->f:Landroid/widget/TextView;

    .line 2060
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2061
    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2063
    if-eqz v0, :cond_0

    .line 2064
    const-string/jumbo v1, "qrcode"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->b:Ljava/lang/String;

    .line 2065
    const-string/jumbo v1, "address"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->c:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->e:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->b:Ljava/lang/String;

    .line 2091
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity$1;-><init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;Landroid/widget/ImageView;Ljava/lang/String;Landroid/view/View;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v4, v0, v1}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    sget v1, Lezg$l;->finish:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 74
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeShareRoomActivity;->finish()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
