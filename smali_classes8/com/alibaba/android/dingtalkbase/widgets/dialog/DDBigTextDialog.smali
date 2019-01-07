.class public Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "DDBigTextDialog.java"


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
    .line 51
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 202
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->requestWindowFeature(I)Z

    .line 97
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget v1, Lcig$h;->dialog_big_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 101
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 102
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1109
    :cond_0
    sget v1, Lcig$f;->tv_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->g:Landroid/widget/TextView;

    .line 1110
    sget v1, Lcig$f;->tv_sub_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->h:Landroid/widget/TextView;

    .line 1111
    sget v1, Lcig$f;->tv_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->i:Landroid/widget/TextView;

    .line 1113
    sget v1, Lcig$f;->btn_right_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->k:Landroid/widget/TextView;

    .line 1114
    sget v1, Lcig$f;->btn_left_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->l:Landroid/widget/TextView;

    .line 1115
    sget v1, Lcig$f;->ll_cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->j:Landroid/view/View;

    .line 1117
    sget v1, Lcig$f;->btn_start_chat:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->m:Landroid/widget/Button;

    .line 1118
    sget v1, Lcig$f;->ll_start_chat:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->n:Landroid/view/View;

    .line 1119
    sget v1, Lcig$f;->dlg_bottom_line:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->o:Landroid/view/View;

    .line 1120
    sget v1, Lcig$f;->dlg_close:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->p:Landroid/view/View;

    .line 1127
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->m:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1128
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->n:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 1135
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1137
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "subTitle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->f:Landroid/os/Bundle;

    const-string/jumbo v2, "bigFont"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->i:Landroid/widget/TextView;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1158
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1159
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->j:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->c:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_9

    .line 1173
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1184
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->m:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->e:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    .line 1192
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->p:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_4
    return-void

    .line 1139
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1146
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1154
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->i:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 1166
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1168
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1175
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;->n:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDBigTextDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method
