.class public Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "DeviceStatusSettingsActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Z

.field private k:I

.field private l:Lcom/alibaba/wukong/im/StatusNotifyListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    .line 51
    const-string/jumbo v0, "delay_token_wait_kickout_push"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a:Ljava/lang/String;

    .line 52
    const/16 v0, 0x1388

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->b:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->g:Landroid/view/View$OnClickListener;

    .line 73
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->j:Z

    .line 74
    iput v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->k:I

    .line 77
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->l:Lcom/alibaba/wukong/im/StatusNotifyListener;

    return-void
.end method

.method private a(IZ)Lcjz;
    .locals 12
    .param p1, "resId"    # I
    .param p2, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v11, 0x7f10048d

    const v10, 0x7f100482

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 142
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 143
    .local v3, "normal":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 144
    .local v4, "pressed":I
    :goto_1
    new-array v1, v8, [I

    aput v4, v1, v7

    aput v3, v1, v9

    .line 145
    .local v1, "colors":[I
    new-array v5, v8, [[I

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    aput-object v6, v5, v7

    new-array v6, v7, [I

    aput-object v6, v5, v9

    .line 146
    .local v5, "states":[[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 147
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v2, Lcjz;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Lcjz;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 148
    .local v2, "drawable":Lcjz;
    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 3045
    iput v6, v2, Lcjz;->b:F

    .line 149
    return-object v2

    .line 142
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "colors":[I
    .end local v2    # "drawable":Lcjz;
    .end local v3    # "normal":I
    .end local v4    # "pressed":I
    .end local v5    # "states":[[I
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_0

    .line 143
    .restart local v3    # "normal":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_1

    .line 145
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    .line 47
    .line 3243
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-nez v0, :cond_0

    .line 3244
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 3245
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    const v1, 0x7f0905e2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09033d

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$6;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    .line 3246
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09217c

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$5;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    .line 3250
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3262
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 3263
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 47
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;Landroid/content/Context;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    .line 4188
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->e()J

    move-result-wide v0

    .line 4194
    const-wide/32 v2, 0x40d1c1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 4195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":4248001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4190
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void

    .line 4197
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "4248001"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v2, 0x7f0924bd

    .line 223
    if-eqz p1, :cond_1

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->j:Z

    .line 225
    invoke-direct {p0, v2, p1}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(IZ)Lcjz;

    move-result-object v0

    .line 226
    .local v0, "drawable":Lcjz;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020495

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 238
    .end local v0    # "drawable":Lcjz;
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->j:Z

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->j:Z

    .line 232
    invoke-direct {p0, v2, p1}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(IZ)Lcjz;

    move-result-object v0

    .line 233
    .restart local v0    # "drawable":Lcjz;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020494

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcqc;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    const/4 v1, 0x0

    .line 47
    .line 4269
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->k:I

    sget-object v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 4270
    const/4 v0, 0x3

    .line 4273
    :goto_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/alibaba/wukong/auth/AuthService;->kickout(ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 4307
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 4308
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 4309
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const v2, 0x7f0905e4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4311
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 47
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->finish()V

    .line 139
    :goto_0
    return-void

    .line 101
    :cond_0
    const v5, 0x7f0400b7

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 104
    const-string/jumbo v5, "intent_key_device_type"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->k:I

    .line 106
    :cond_1
    iget v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->k:I

    if-ne v5, v8, :cond_4

    .line 107
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v5

    .line 1072
    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1073
    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/DeviceStatus;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/DeviceStatus;->deviceType()I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->valueOf(I)Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v5

    .line 107
    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getNameRes()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->f:Ljava/lang/String;

    .line 111
    :goto_2
    const v5, 0x7f1104fc

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0905e7

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->f:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v5, 0x7f1104fb

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->c:Landroid/widget/ImageView;

    .line 114
    const v5, 0x7f1104fe

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->h:Landroid/widget/ImageView;

    .line 115
    const v5, 0x7f0924bd

    invoke-direct {p0, v5, v7}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(IZ)Lcjz;

    move-result-object v3

    .line 116
    .local v3, "noticeDrawable":Lcjz;
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    const v5, 0x7f1104ff

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->i:Landroid/widget/ImageView;

    .line 119
    const v5, 0x7f092572

    invoke-direct {p0, v5, v7}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(IZ)Lcjz;

    move-result-object v0

    .line 120
    .local v0, "fileDrawable":Lcjz;
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const v5, 0x7f110500

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, "pcLogout":Landroid/widget/TextView;
    const v5, 0x7f0905e8

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->f:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-virtual {p0, v5, v8}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v5, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->l:Lcom/alibaba/wukong/im/StatusNotifyListener;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->registerListener(Lcom/alibaba/wukong/im/IMListener;)V

    .line 131
    iget v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->k:I

    sget-object v8, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getCode()I

    move-result v8

    if-ne v5, v8, :cond_5

    .line 132
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->c:Landroid/widget/ImageView;

    const v6, 0x7f0204ad

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    const v5, 0x7f1104fd

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "llMobileNotice":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2175
    .end local v2    # "llMobileNotice":Landroid/view/View;
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->g:Landroid/view/View$OnClickListener;

    if-nez v5, :cond_2

    .line 2176
    new-instance v5, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->g:Landroid/view/View$OnClickListener;

    .line 2184
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->i:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1075
    .end local v0    # "fileDrawable":Lcjz;
    .end local v3    # "noticeDrawable":Lcjz;
    .end local v4    # "pcLogout":Landroid/widget/TextView;
    :cond_3
    sget-object v5, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_DEFAULT:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    goto/16 :goto_1

    .line 109
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    iget v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->k:I

    .line 1088
    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->valueOf(I)Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getNameRes()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->f:Ljava/lang/String;

    goto/16 :goto_2

    .line 1203
    .restart local v0    # "fileDrawable":Lcjz;
    .restart local v3    # "noticeDrawable":Lcjz;
    .restart local v4    # "pcLogout":Landroid/widget/TextView;
    :cond_5
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v8, "wk_xpn"

    const-string/jumbo v9, "switch"

    invoke-virtual {v5, v8, v9}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1205
    const-string/jumbo v8, "0"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    .line 1207
    :goto_4
    if-nez v5, :cond_7

    move v5, v6

    :goto_5
    invoke-direct {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(Z)V

    .line 1209
    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->h:Landroid/widget/ImageView;

    new-instance v6, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$4;

    invoke-direct {v6, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    move v5, v7

    .line 1205
    goto :goto_4

    :cond_7
    move v5, v7

    .line 1207
    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 154
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "delay_token_wait_kickout_push"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3171
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->l:Lcom/alibaba/wukong/im/StatusNotifyListener;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->unregisterListener(Lcom/alibaba/wukong/im/IMListener;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 163
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 164
    return-void
.end method
