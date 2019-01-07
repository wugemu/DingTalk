.class public Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleBusinessConfChooseTimeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Calendar;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 123
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c:I

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c:I

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 2150
    invoke-static {v2, v3}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 2154
    invoke-static {v2, v3}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    .prologue
    .line 55
    .line 4115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.teleconf.start.time"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4116
    const-string/jumbo v1, "conf_choose_start_type"

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4117
    const-string/jumbo v1, "conf_choose_start_time"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4118
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 219
    .local v6, "id":I
    sget v0, Leuj$i;->rl_start_now:I

    if-ne v0, v6, :cond_1

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c:I

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 222
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    sget v0, Leuj$i;->rl_start_at_specified_time:I

    if-ne v0, v6, :cond_2

    .line 224
    iput v7, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c:I

    .line 225
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b()V

    goto :goto_0

    .line 226
    :cond_2
    sget v0, Leuj$i;->tv_start_date:I

    if-ne v0, v6, :cond_3

    .line 3146
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    .line 3166
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 3168
    invoke-virtual {v0, v7}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 3170
    invoke-static {v0}, Lcms;->a(Landroid/app/DatePickerDialog;)V

    .line 3171
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 228
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b()V

    goto :goto_0

    .line 229
    :cond_3
    sget v0, Leuj$i;->tv_start_time:I

    if-ne v0, v6, :cond_0

    .line 3190
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    const/16 v3, 0xb

    .line 3209
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 3211
    invoke-virtual {v0, v7}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 3212
    invoke-static {v0}, Lcms;->a(Landroid/app/TimePickerDialog;)V

    .line 3213
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 231
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v0, Leuj$j;->activity_teleconf_business_conference_choose_time_v3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->setContentView(I)V

    .line 1089
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1090
    if-eqz v0, :cond_0

    .line 1091
    const-string/jumbo v1, "conf_choose_start_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->c:I

    .line 1092
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b:Ljava/util/Calendar;

    const-string/jumbo v2, "conf_choose_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1097
    :cond_0
    sget v0, Leuj$i;->rl_start_now:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->d:Landroid/view/View;

    .line 1098
    sget v0, Leuj$i;->rl_start_at_specified_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->e:Landroid/view/View;

    .line 1099
    sget v0, Leuj$i;->rl_specified_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->f:Landroid/view/View;

    .line 1100
    sget v0, Leuj$i;->iv_start_now:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->i:Landroid/widget/ImageView;

    .line 1101
    sget v0, Leuj$i;->iv_start_later:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->j:Landroid/widget/ImageView;

    .line 1102
    sget v0, Leuj$i;->tv_start_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->l:Landroid/widget/TextView;

    .line 1103
    sget v0, Leuj$i;->tv_start_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->k:Landroid/widget/TextView;

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1176
    sget v0, Leuj$i;->btn_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->h:Landroid/widget/Button;

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->h:Landroid/widget/Button;

    sget v2, Leuj$l;->sure:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->h:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->g:Landroid/view/View;

    .line 1111
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b()V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v1, 0x1

    sget v2, Leuj$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 140
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 141
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
