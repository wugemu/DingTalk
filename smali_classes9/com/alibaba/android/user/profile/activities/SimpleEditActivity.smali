.class public Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SimpleEditActivity.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1037
    sget v0, Lezg$j;->activity_simple_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->setContentView(I)V

    .line 1038
    sget v0, Lezg$h;->et_profile_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a:Landroid/widget/EditText;

    .line 1039
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a:Landroid/widget/EditText;

    sget v1, Lezg$l;->modify_address_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1040
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->text_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1041
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    iget-object v1, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->b:Landroid/view/View;

    .line 1045
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->c:Landroid/widget/Button;

    .line 1046
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1047
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$1;-><init>(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity$2;-><init>(Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
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

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    sget v2, Lezg$l;->save:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/activities/SimpleEditActivity;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 85
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
