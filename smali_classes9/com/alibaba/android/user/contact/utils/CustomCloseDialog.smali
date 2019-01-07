.class public Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CustomCloseDialog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 45
    sget v0, Lezg$m;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->g:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->j:Landroid/view/View$OnClickListener;

    .line 122
    return-object p0
.end method

.method public final b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->h:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->i:Landroid/view/View$OnClickListener;

    .line 128
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->requestWindowFeature(I)Z

    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v1, Lezg$j;->custom_close_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 55
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 56
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1063
    :cond_0
    sget v1, Lezg$h;->tv_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->f:Landroid/widget/TextView;

    .line 1064
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1065
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1072
    :goto_0
    sget v1, Lezg$h;->tv_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->e:Landroid/widget/TextView;

    .line 1073
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1074
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1080
    :goto_1
    sget v1, Lezg$h;->btn_left_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->d:Landroid/widget/TextView;

    .line 1081
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->i:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_5

    .line 1085
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    :goto_2
    sget v1, Lezg$h;->btn_right_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->c:Landroid/widget/TextView;

    .line 1096
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1097
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->j:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_6

    .line 1100
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    :goto_3
    sget v1, Lezg$h;->iv_close_button:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1111
    new-instance v2, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$3;-><init>(Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void

    .line 1067
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1076
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1087
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$1;-><init>(Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1102
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog$2;-><init>(Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method
