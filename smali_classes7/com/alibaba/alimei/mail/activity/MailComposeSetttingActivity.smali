.class public Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailComposeSetttingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$a;,
        Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ToggleButton;

.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/Date;

.field private h:Ljava/util/Date;

.field private i:Ljava/util/Calendar;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I

.field private p:Lrz;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->h:Ljava/util/Date;

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->i:Ljava/util/Calendar;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->j:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->k:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->l:Ljava/util/List;

    .line 61
    iput v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m:I

    .line 62
    iput v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->n:I

    .line 63
    iput v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->o:I

    .line 67
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->p:Lrz;

    .line 69
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->q:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 428
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m:I

    return p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 405
    if-eqz p1, :cond_0

    .line 406
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "HH:mm"

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "00:00"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Lrz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->p:Lrz;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b()V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Date;)Z
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 295
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {p1, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 296
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 2226
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 299
    sget v4, Laxo$i;->dt_mail_timing_send_date_invalid:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2239
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 300
    sget v4, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2259
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 3230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 302
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 3275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 304
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 309
    .end local v0    # "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->n:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    return-object p1
.end method

.method private b()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v14, 0xc

    const/4 v13, 0x5

    const/4 v12, 0x0

    const/16 v11, 0xb

    .line 206
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v8, Laxo$i;->dt_mail_timing_send_option_title:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 210
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v7, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 213
    .local v0, "baseCalendar":Ljava/util/Calendar;
    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->h:Ljava/util/Date;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 215
    const/4 v8, 0x1

    invoke-virtual {v0, v11, v8}, Ljava/util/Calendar;->add(II)V

    .line 216
    sget v8, Laxo$i;->dt_mail_send_at_today:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "desc1":Ljava/lang/String;
    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;

    sget v9, Laxo$i;->dt_mail_send_1hour_later:I

    invoke-virtual {p0, v9}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v8, p0, v9, v2, v10}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/16 v8, 0x14

    invoke-virtual {v0, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 220
    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 221
    sget v8, Laxo$i;->dt_mail_send_at_tonight:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "desc2":Ljava/lang/String;
    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;

    sget v9, Laxo$i;->dt_mail_send_tonight:I

    invoke-virtual {p0, v9}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v8, p0, v9, v3, v10}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v13, v8}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/16 v8, 0x9

    invoke-virtual {v0, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 226
    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 227
    sget v8, Laxo$i;->dt_mail_send_at_tomorrow_morning:I

    invoke-virtual {p0, v8}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "desc3":Ljava/lang/String;
    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;

    sget v9, Laxo$i;->dt_mail_send_tomorrow_morning:I

    invoke-virtual {p0, v9}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v8, p0, v9, v4, v10}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;

    sget v9, Laxo$i;->dt_mail_send_custom:I

    invoke-virtual {p0, v9}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Laxo$i;->dt_mail_send_custom:I

    invoke-virtual {p0, v10}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 234
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v6, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;

    invoke-direct {v6, p0, p0, v7, v5}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V

    .line 275
    .local v6, "listAdapter":Landroid/widget/ListAdapter;
    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;

    invoke-direct {v8, p0, v6}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v6, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 291
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->o:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    .line 3314
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    .line 3343
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    .line 3364
    new-instance v2, Lcom/alibaba/alimei/component/picker/PickerView;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/alimei/component/picker/PickerView;-><init>(Landroid/content/Context;Lsj;Lsk;)V

    .line 3366
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/component/picker/PickerView;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3373
    invoke-virtual {v2}, Lcom/alibaba/alimei/component/picker/PickerView;->show()V

    .line 38
    return-void
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m:I

    return v0
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->n:I

    return v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->o:I

    return v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;

    .prologue
    .line 38
    .line 3377
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3378
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->h:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3379
    const/4 v1, 0x5

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 3380
    const/16 v1, 0xb

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->n:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3381
    const/16 v1, 0xc

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->o:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3383
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 3385
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3386
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    .line 3387
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->f:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_send_time_format:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v10, 0xb

    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v0, Laxo$g;->activity_mail_compose_settting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->setContentView(I)V

    .line 99
    sget v0, Laxo$f;->timing_send_toggle:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a:Landroid/widget/ToggleButton;

    .line 100
    sget v0, Laxo$f;->separated_send_toggle:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b:Landroid/widget/ToggleButton;

    .line 101
    sget v0, Laxo$f;->emergency_toggle:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->c:Landroid/widget/ToggleButton;

    .line 102
    sget v0, Laxo$f;->timing_setting_layout:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->e:Landroid/view/View;

    .line 103
    sget v0, Laxo$f;->timing_setting_value:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->f:Landroid/widget/TextView;

    .line 104
    sget v0, Laxo$f;->divider1:I

    invoke-static {p0, v0}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->d:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->e:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->h:Ljava/util/Date;

    .line 1136
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_0

    .line 1138
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b:Landroid/widget/ToggleButton;

    const-string/jumbo v4, "mail_separated_send"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1139
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->c:Landroid/widget/ToggleButton;

    const-string/jumbo v4, "mail_emergency"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1141
    const-string/jumbo v3, "mail_timing_send"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1142
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 1143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    .line 1144
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1145
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a(Z)V

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->f:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_mail_send_time_format:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->h:Ljava/util/Date;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1153
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->i:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->j:Ljava/util/List;

    sget v4, Laxo$i;->and_calendar_today:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 1156
    :goto_0
    const/16 v4, 0x1e

    if-gt v0, v4, :cond_1

    .line 1157
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 1158
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->j:Ljava/util/List;

    sget v5, Laxo$i;->dt_mail_send_time_format2:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1161
    :goto_1
    const/16 v3, 0x18

    if-ge v0, v3, :cond_3

    .line 1162
    if-ge v0, v9, :cond_2

    .line 1163
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->k:Ljava/util/List;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "0"

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1165
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1169
    :goto_3
    const/16 v3, 0x3c

    if-ge v0, v3, :cond_5

    .line 1170
    if-ge v0, v9, :cond_4

    .line 1171
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->l:Ljava/util/List;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "0"

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1173
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1178
    :cond_5
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m:I

    .line 1179
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->n:I

    .line 1180
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_6

    .line 1182
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->n:I

    .line 1183
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->m:I

    .line 1185
    :cond_6
    iput v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->o:I

    .line 111
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 115
    const/4 v1, 0x1

    sget v2, Laxo$i;->create_complete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .local v0, "menuItemDone":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 117
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 130
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 124
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->onBackPressed()V

    .line 125
    const/4 v0, 0x1

    goto :goto_1

    .line 1393
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1394
    const-string/jumbo v1, "mail_separated_send"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1395
    const-string/jumbo v1, "mail_emergency"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1396
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    const-string/jumbo v1, "mail_timing_send"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->g:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1399
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->setResult(ILandroid/content/Intent;)V

    .line 1401
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeSetttingActivity;->finish()V

    goto :goto_0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
