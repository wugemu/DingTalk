.class public Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "DDScrollTextDialog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Landroid/view/View$OnClickListener;

.field public f:Landroid/os/Bundle;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->requestWindowFeature(I)Z

    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget v1, Lcig$h;->dialog_scroll_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 100
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1107
    :cond_0
    sget v1, Lcig$f;->tv_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->g:Landroid/widget/TextView;

    .line 1108
    sget v1, Lcig$f;->tv_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->h:Landroid/widget/TextView;

    .line 1109
    sget v1, Lcig$f;->tv_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->i:Landroid/widget/TextView;

    .line 1111
    sget v1, Lcig$f;->btn_right_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->k:Landroid/widget/TextView;

    .line 1112
    sget v1, Lcig$f;->btn_left_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->l:Landroid/widget/TextView;

    .line 1113
    sget v1, Lcig$f;->ll_cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->j:Landroid/view/View;

    .line 1115
    sget v1, Lcig$f;->btn_start_chat:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->m:Landroid/widget/Button;

    .line 1116
    sget v1, Lcig$f;->ll_start_chat:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->n:Landroid/view/View;

    .line 1117
    sget v1, Lcig$f;->dlg_bottom_line:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->o:Landroid/view/View;

    .line 1118
    sget v1, Lcig$f;->dlg_close:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->p:Landroid/view/View;

    .line 1125
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->m:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1126
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->n:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1135
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "subTitle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1142
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->f:Landroid/os/Bundle;

    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->j:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->c:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_8

    .line 1165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1176
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->m:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->e:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    .line 1184
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->p:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_4
    return-void

    .line 1137
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1144
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1158
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1167
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;->n:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDScrollTextDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method
