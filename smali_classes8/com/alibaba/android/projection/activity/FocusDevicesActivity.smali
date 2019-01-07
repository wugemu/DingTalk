.class public Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "FocusDevicesActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Lego;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Lego;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->i:Lego;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    .prologue
    .line 39
    .line 3212
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.projection.choose.device"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3213
    const-string/jumbo v1, "choose_devices"

    iget-object v2, p1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3214
    const-string/jumbo v1, "focus_selected_position"

    iget v2, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3215
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3216
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->finish()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    .line 3221
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->i:Lego;

    if-eqz v0, :cond_0

    .line 3222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3223
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->i:Lego;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->j:Ljava/util/List;

    .line 4058
    invoke-virtual {v0, v1}, Legn;->a(Ljava/util/List;)V

    .line 3223
    :cond_0
    :goto_0
    return-void

    .line 3225
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->i:Lego;

    invoke-virtual {v0}, Lego;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "beEmptyPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->f:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_projection_device_not_bind:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->g:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_projection_device_not_bind_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->f:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_projection_device_not_found:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->g:Landroid/widget/TextView;

    sget v1, Legm$e;->dt_projection_device_not_found_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 39
    .line 4266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4267
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4269
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    move v0, v1

    .line 4270
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4271
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4273
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4274
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4275
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4270
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4278
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
    .param p1, "x1"    # Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    .prologue
    const/4 v4, 0x0

    .line 39
    .line 4079
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-nez v0, :cond_1

    .line 4080
    :cond_0
    :goto_0
    return-void

    .line 4082
    :cond_1
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4083
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4084
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sget v2, Legm$e;->dt_focus_dialog_add_extra_content:I

    .line 4085
    invoke-virtual {p0, v2}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "\u300c"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;->mFocusDeviceObject:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v3, v3, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "\u300d"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4086
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4087
    sget v1, Legm$e;->sure:I

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4093
    sget v1, Legm$e;->cancel:I

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$2;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4098
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 4099
    if-eqz v1, :cond_0

    .line 4100
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 4101
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Legm$a;->ui_common_content_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 60
    sget v0, Legm$d;->layout_activity_focus_devices_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->setContentView(I)V

    .line 1114
    invoke-virtual {p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_0

    .line 1116
    const-string/jumbo v1, "focus_devices"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->j:Ljava/util/List;

    .line 1117
    const-string/jumbo v1, "is_Extra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->k:Z

    .line 1118
    const-string/jumbo v1, "focus_selected_position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->l:I

    .line 1123
    :cond_0
    sget v0, Legm$c;->search_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->c:Landroid/view/View;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$3;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    sget v0, Legm$c;->search_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->b:Landroid/widget/EditText;

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$4;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1152
    sget v0, Legm$c;->focus_device_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d:Landroid/widget/ListView;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$5;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1170
    sget v0, Legm$c;->focus_device_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->e:Landroid/view/View;

    .line 1171
    sget v0, Legm$c;->empty_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->f:Landroid/widget/TextView;

    .line 1172
    sget v0, Legm$c;->empty_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->g:Landroid/widget/TextView;

    .line 1173
    sget v0, Legm$c;->focus_device_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->h:Landroid/view/View;

    .line 1175
    new-instance v0, Lego;

    invoke-direct {v0, p0}, Lego;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->i:Lego;

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->i:Lego;

    new-instance v1, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$6;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;)V

    .line 2041
    iput-object v1, v0, Lego;->c:Lego$a;

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->i:Lego;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    :cond_1
    invoke-direct {p0, v4}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Z)V

    .line 2232
    :cond_2
    :goto_0
    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->j:Ljava/util/List;

    .line 2231
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2234
    sget-object v1, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 2235
    new-instance v2, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$7;-><init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 111
    return-void
.end method
