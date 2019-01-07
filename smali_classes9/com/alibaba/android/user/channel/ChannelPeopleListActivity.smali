.class public Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChannelPeopleListActivity.java"


# instance fields
.field private a:Lfbs;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ListView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcfc;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private final l:I

.field private m:I

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->i:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->j:I

    .line 53
    iput v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->k:I

    .line 54
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->l:I

    .line 55
    iput v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->n:J

    .line 58
    iput-boolean v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Lcfc;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # Lcfc;

    .prologue
    .line 38
    .line 4197
    const-class v0, Lcom/alibaba/android/user/idl/services/ExternalContactIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ExternalContactIService;

    .line 4198
    new-instance v1, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$5;-><init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Lcfc;)V

    .line 4214
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcmi;

    invoke-interface {v2, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcmi;

    .line 4215
    iget-object v2, p1, Lcfc;->b:Lcew;

    iget-object v2, v2, Lcew;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcfc;->b:Lcew;

    iget-object v3, v3, Lcew;->o:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/android/user/idl/services/ExternalContactIService;->removeContact(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 1275
    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1277
    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    sget v3, Lezg$h;->progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    sget v3, Lezg$h;->empty_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->o:Z

    if-eqz v2, :cond_1

    .line 260
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->o:Z

    .line 226
    const-class v2, Lcom/alibaba/android/user/idl/services/ExternalContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/ExternalContactIService;

    .line 227
    .local v1, "externalContactIService":Lcom/alibaba/android/user/idl/services/ExternalContactIService;
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$6;-><init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)V

    .line 259
    .local v0, "callback":Lcmi;, "Lcmi<Lcfd;>;"
    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2263
    new-instance v3, Lcdc;

    invoke-direct {v3}, Lcdc;-><init>()V

    .line 2264
    iget v4, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcdc;->a:Ljava/lang/Integer;

    .line 2265
    iget v4, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcdc;->e:Ljava/lang/Integer;

    .line 2266
    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcdc;->f:Ljava/lang/Integer;

    .line 259
    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/ExternalContactIService;->listContacts(Ljava/lang/Long;Lcdc;Liyv;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->g:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->f:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->h:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->j:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v6, 0x1

    .line 38
    .line 3157
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3158
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfc;

    .line 3166
    if-eqz v0, :cond_0

    .line 3167
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3168
    iget-object v2, v0, Lcfc;->b:Lcew;

    iget-object v2, v2, Lcew;->h:Ljava/lang/String;

    .line 3171
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 3172
    const/4 v4, 0x0

    sget v5, Lezg$l;->dt_im_join_group_list_delete:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3173
    sget v4, Lezg$l;->cancel:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 3175
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 3176
    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$4;-><init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Lcfc;)V

    .line 3177
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3187
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 3189
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3192
    :cond_0
    :goto_0
    return-void

    .line 3190
    :catch_0
    move-exception v0

    .line 3191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    .line 4141
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4142
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfc;

    .line 4143
    if-eqz v0, :cond_0

    .line 4144
    const-wide/16 v2, 0x0

    .line 4145
    iget-object v1, v0, Lcfc;->f:Lcgk;

    if-eqz v1, :cond_1

    .line 4146
    iget-object v0, v0, Lcfc;->f:Lcgk;

    iget-object v0, v0, Lcgk;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4150
    :goto_0
    invoke-static {}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 38
    :cond_0
    return-void

    .line 4147
    :cond_1
    iget-object v1, v0, Lcfc;->b:Lcew;

    if-eqz v1, :cond_2

    .line 4148
    iget-object v0, v0, Lcfc;->b:Lcew;

    iget-object v0, v0, Lcew;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->k:I

    return p1
.end method

.method static synthetic g(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Lfbs;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a:Lfbs;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    .line 4271
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_external_contact_list_total_count_android:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 38
    .line 4285
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4286
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4287
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4288
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4289
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->empty_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4290
    const/4 v0, 0x0

    .line 4291
    iget v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 4292
    sget v0, Lezg$l;->dt_channel_person_list_empty_follow_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 4296
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4297
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->second_tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_channel_person_list_empty_desc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4298
    :goto_1
    return-void

    .line 4293
    :cond_1
    iget v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 4294
    sget v0, Lezg$l;->dt_channel_person_list_empty_invited_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 4299
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4300
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lezg$j;->activity_channel_people:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->setContentView(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_channel_external_people"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    .line 1072
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->n:J

    .line 1076
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_manege_org_channel_attention_attention:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1084
    :cond_0
    :goto_0
    sget v0, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c:Landroid/view/View;

    .line 1086
    sget v0, Lezg$h;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    .line 1087
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    .line 1135
    sget v0, Lezg$j;->channel_people_header:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1136
    sget v0, Lezg$h;->people_count:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->b:Landroid/widget/TextView;

    .line 1087
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1088
    new-instance v0, Lfbs;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lfbs;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a:Lfbs;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a:Lfbs;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;-><init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$2;-><init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$3;-><init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    invoke-direct {p0, v4}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a(Z)V

    .line 68
    return-void

    .line 1078
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_manege_org_channel_attention_invited:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
