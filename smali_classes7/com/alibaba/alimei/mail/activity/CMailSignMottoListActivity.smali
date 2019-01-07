.class public Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSignMottoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

.field private g:Ljava/lang/String;

.field private h:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->f:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    .line 194
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->f:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 36
    .line 6180
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6181
    :cond_0
    const-string/jumbo v0, "CMailSignMottoListActivity"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6182
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->finish()V

    .line 6183
    :goto_0
    return-void

    .line 6189
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6190
    :goto_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6191
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6189
    goto :goto_1

    :cond_3
    move v2, v1

    .line 6190
    goto :goto_2

    :cond_4
    move v1, v3

    .line 6191
    goto :goto_3
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 36
    .line 7167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "\u5feb\u4e50\u5de5\u4f5c\uff0c\u8ba4\u771f\u751f\u6d3b\uff01"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7168
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "\u68a6\u60f3\u8fd8\u662f\u8981\u6709\u7684\uff0c\u4e07\u4e00\u5b9e\u73b0\u4e86\u5462\uff1f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7169
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "If not now,when? If not me,who?"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7170
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "Stay Hungry, Stay Foolish, But be Crazy."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7171
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "GOOD GOOD STUDY! DAY DAY UP!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7172
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "\u591c\u7a7a\u4e2d\u6700\u4eae\u7684\u661f\uff0c\u8bf7\u7167\u4eae\u6211\u524d\u884c\uff01"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7173
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "\u4efb\u5c81\u6708\u5982\u68ad\uff0c\u5f52\u6765\u4ecd\u662f\u6b64\u95f4\u5c11\u5e74!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7174
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "\u4ee5\u68a6\u4e3a\u9a6c\uff0c\u4e0d\u8d1f\u97f6\u534e!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "\u4f5b\u5fc3\u5f85\u4eba\uff0c\u7985\u610f\u505a\u4e8b!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7176
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->e:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u4eec\u7684\u5f81\u9014\u662f\u661f\u8fb0\u5927\u6d77!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 4122
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a(J)V

    .line 4123
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V

    .line 4162
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4163
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    .line 4309
    const-string/jumbo v2, "MailRPC"

    const-string/jumbo v3, "getCommonMemo"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    new-instance v2, Lro$3;

    invoke-direct {v2, v1, v0}, Lro$3;-><init>(Lro;Lcma;)V

    .line 4330
    iget-object v0, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->getCommonMemo(Liyv;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v1, Laxo$g;->alm_cmail_fragment_mail_motto_select_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v1, "CMailSignMottoListActivity"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->a:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "mail_sign_motto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->g:Ljava/lang/String;

    .line 67
    iput-object p0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->d:Landroid/app/Activity;

    .line 2107
    sget v1, Laxo$f;->sign_motto_list:I

    .line 2372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2107
    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->b:Landroid/widget/ListView;

    .line 2108
    sget v1, Laxo$f;->list_empty_view:I

    .line 3372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2108
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 2109
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->f:Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2110
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 85
    sget v0, Laxo$i;->dt_mail_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->h:Landroid/view/MenuItem;

    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->h:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 5239
    :pswitch_0
    const-string/jumbo v1, "mail_signatureV3_tjsav"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_select_motto"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignMottoListActivity;->finish()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
