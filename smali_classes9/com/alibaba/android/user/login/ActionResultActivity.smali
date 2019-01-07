.class public Lcom/alibaba/android/user/login/ActionResultActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ActionResultActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Intent;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/login/ActionResultActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/ActionResultActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ActionResultActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->c:Landroid/content/Intent;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->e:Z

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->finish()V

    goto :goto_0

    .line 126
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->d:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/login/ActionResultActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/ActionResultActivity$2;-><init>(Lcom/alibaba/android/user/login/ActionResultActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->b()V

    .line 117
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->finish()V

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->b:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/user/login/ActionResultActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/ActionResultActivity$1;-><init>(Lcom/alibaba/android/user/login/ActionResultActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lezg$j;->activity_report_loss_result:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ActionResultActivity;->setContentView(I)V

    .line 1042
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1043
    sget-object v0, Lcom/alibaba/android/user/login/ActionResultActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "get intent null"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->finish()V

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "icon_font"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/IconFontParams;

    .line 1047
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "icon_resource_id"

    sget v3, Lezg$g;->actionbar_icon:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1048
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "action_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "action_content"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "action_hint"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "next_action"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1052
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "action_scheme"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->b:Ljava/lang/String;

    .line 1053
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "action_params"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->c:Landroid/content/Intent;

    .line 1054
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "back_action_scheme"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->d:Ljava/lang/String;

    .line 1055
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "support_back"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->e:Z

    .line 1056
    sget v1, Lezg$h;->action_result_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/ActionResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1057
    if-eqz v0, :cond_3

    .line 1059
    :try_start_0
    iget v7, v0, Lcom/alibaba/android/user/model/IconFontParams;->iconId:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/login/ActionResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v0, Lcom/alibaba/android/user/model/IconFontParams;->colorId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 1061
    new-instance v9, Lcjz;

    invoke-direct {v9, v7, v8}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1062
    iget v0, v0, Lcom/alibaba/android/user/model/IconFontParams;->size:I

    int-to-float v0, v0

    .line 2045
    iput v0, v9, Lcjz;->b:F

    .line 1063
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/ActionResultActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1074
    :cond_1
    sget v0, Lezg$h;->action_result:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ActionResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    sget v0, Lezg$h;->action_result_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ActionResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ActionResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->e:Z

    if-nez v0, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1081
    const/16 v0, 0x12

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    iget-object v0, p0, Lcom/alibaba/android/user/login/ActionResultActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$g;->small_home_up_indicator:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 39
    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 1068
    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/alibaba/android/user/login/ActionResultActivity;->b()V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
