.class public Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CheckMemberDialog.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Lfkz;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 53
    sget v0, Lezg$m;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->d:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)Lfkz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->b:Lfkz;

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
    .line 59
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->requestWindowFeature(I)Z

    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v1, Lezg$j;->check_member_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 64
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 65
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1073
    :cond_0
    sget v1, Lezg$h;->select_avatar_grid_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    .line 1075
    sget v1, Lezg$h;->btn_left_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->f:Landroid/view/View;

    .line 1076
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->f:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    sget v1, Lezg$h;->btn_right_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->e:Landroid/view/View;

    .line 1084
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->e:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    new-instance v1, Lfkz;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->c:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lfkz;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->b:Lfkz;

    .line 1095
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->b:Lfkz;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/WrapGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method
