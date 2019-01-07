.class public Lcom/alibaba/android/user/login/ContactPermissionActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ContactPermissionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ContactPermissionActivity;

    .prologue
    const/4 v3, 0x1

    .line 22
    .line 1046
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    new-instance v1, Lcom/alibaba/android/user/login/ContactPermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/ContactPermissionActivity$3;-><init>(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 22
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ContactPermissionActivity;

    .prologue
    .line 22
    .line 1068
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/app/Activity;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v2, Lezg$j;->activity_contact_permission:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/ContactPermissionActivity;->setContentView(I)V

    .line 28
    sget v2, Lezg$h;->btn_request_contact_permission:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/ContactPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "btn":Landroid/widget/Button;
    sget v2, Lezg$h;->tvJump:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/ContactPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "jump":Landroid/widget/TextView;
    new-instance v2, Lcom/alibaba/android/user/login/ContactPermissionActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/ContactPermissionActivity$1;-><init>(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance v2, Lcom/alibaba/android/user/login/ContactPermissionActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/ContactPermissionActivity$2;-><init>(Lcom/alibaba/android/user/login/ContactPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
