.class public Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSettingsShowInnerPicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;

.field private c:Landroid/widget/ListView;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->a:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->d:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;)Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->d:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lajj;->b()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->d:I

    .line 30
    sget v0, Laxo$g;->alm_cmail_fragment_mail_settings_show_inner_pic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->setContentView(I)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxo$i;->dt_mail_settings_show_inner_pic:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    sget v0, Laxo$f;->list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->c:Landroid/widget/ListView;

    .line 33
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;

    .line 34
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->a:Ljava/util/ArrayList;

    sget v1, Laxo$i;->dt_mail_settings_show_inner_pic_all:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->a:Ljava/util/ArrayList;

    sget v1, Laxo$i;->dt_mail_settings_show_inner_pic_wifi:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->a:Ljava/util/ArrayList;

    sget v1, Laxo$i;->dt_mail_settings_show_inner_pic_never:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity;->a:Ljava/util/ArrayList;

    .line 1053
    iput-object v1, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->a:Ljava/util/List;

    .line 1054
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsShowInnerPicActivity$a;->notifyDataSetChanged()V

    .line 46
    return-void
.end method
