.class public Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "DeveloperOptionsActivity.java"


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/widget/Button;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x3e8

    sput v0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b:Landroid/widget/ToggleButton;

    .line 46
    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->c:Landroid/widget/ToggleButton;

    .line 101
    new-instance v0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->e:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->a:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lfwe;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    sget v2, Lezg$j;->developer_options_settings:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->setContentView(I)V

    .line 56
    sget v2, Lezg$h;->setting_developer_options_debugging:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b:Landroid/widget/ToggleButton;

    .line 58
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_settings_developer_options_smartapp_debugging"

    invoke-static {v2, v3}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, "isChecked":Z
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->b:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    sget v2, Lezg$h;->setting_developer_options_cache:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->c:Landroid/widget/ToggleButton;

    .line 71
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_settings_developer_options_smartapp_cache"

    invoke-static {v2, v3}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 72
    .local v1, "isCheckedCache":Z
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 74
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->c:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    sget v2, Lezg$h;->setting_developer_options_thread:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->d:Landroid/widget/Button;

    .line 85
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;->d:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/DeveloperOptionsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .end local v0    # "isChecked":Z
    .end local v1    # "isCheckedCache":Z
    :cond_0
    return-void
.end method
