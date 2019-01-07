.class public Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ManualAddPeopleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field c:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$a;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 47
    sget v0, Lezg$m;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->c:Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$a;

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
    .line 52
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->requestWindowFeature(I)Z

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v1, Lezg$j;->manual_add_people_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 58
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1066
    :cond_0
    sget v1, Lezg$h;->et_add_people_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1067
    sget v1, Lezg$h;->et_add_people_mobile:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1069
    sget v1, Lezg$h;->btn_left_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->d:Landroid/view/View;

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->d:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$1;-><init>(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    sget v1, Lezg$h;->btn_right_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->e:Landroid/view/View;

    .line 1078
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->e:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$2;-><init>(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    sget v1, Lezg$h;->iv_close_button:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1086
    new-instance v2, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog$3;-><init>(Lcom/alibaba/android/user/contact/utils/ManualAddPeopleDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
