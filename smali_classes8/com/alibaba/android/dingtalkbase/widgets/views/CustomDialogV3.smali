.class public Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CustomDialogV3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;-><init>(Landroid/content/Context;I)V

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 1045
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 23131
    iput p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->b:I

    .line 84
    return-void
.end method

.method public final a(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 27117
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 27131
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->f:Ljava/lang/CharSequence;

    .line 27118
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 28131
    iput-object p2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->h:Landroid/view/View$OnClickListener;

    .line 114
    return-void
.end method

.method public final b(I)V
    .locals 2
    .param p1, "messageId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 26131
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->e:Ljava/lang/CharSequence;

    .line 105
    return-void
.end method

.method public final b(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 29127
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 29131
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->g:Ljava/lang/CharSequence;

    .line 29128
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 30131
    iput-object p2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->i:Landroid/view/View$OnClickListener;

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->requestWindowFeature(I)Z

    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcig$h;->custom_dialog_v3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->setContentView(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_1

    .line 1062
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1063
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1064
    if-eqz v1, :cond_0

    .line 1065
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1067
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1072
    :cond_1
    sget v0, Lcig$f;->iv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b:Landroid/widget/ImageView;

    .line 1073
    sget v0, Lcig$f;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->c:Landroid/widget/TextView;

    .line 1074
    sget v0, Lcig$f;->tv_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->d:Landroid/widget/TextView;

    .line 1076
    sget v0, Lcig$f;->btn_left:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 1077
    sget v0, Lcig$f;->btn_right:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 1078
    sget v0, Lcig$f;->btn_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->g:Landroid/view/View;

    .line 1079
    sget v0, Lcig$f;->btn_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->h:Landroid/view/View;

    .line 56
    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 1143
    iget v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->b:I

    if-lez v0, :cond_4

    .line 1144
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 2023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b:Landroid/widget/ImageView;

    .line 1144
    iget v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1150
    :cond_2
    :goto_0
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 4023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->c:Landroid/widget/TextView;

    .line 1150
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 5023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->d:Landroid/widget/TextView;

    .line 1151
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 6023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 1153
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 7023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 1154
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 8023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 1156
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 9023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 1157
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1159
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 10023
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 1159
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 11023
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 1160
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->g:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11166
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 12023
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 11166
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 13023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 11166
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11167
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 14023
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 11167
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 15023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 11167
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v8

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11169
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 16023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 11169
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 17023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 11169
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 11170
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 18023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->h:Landroid/view/View;

    .line 11170
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 11175
    :goto_5
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 20023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->e:Landroid/widget/TextView;

    .line 11175
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 21023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->f:Landroid/widget/TextView;

    .line 11175
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 11176
    :cond_3
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 22023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->g:Landroid/view/View;

    .line 11176
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void

    .line 1145
    :cond_4
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1146
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1147
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 3023
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->b:Landroid/widget/ImageView;

    .line 1147
    iget-object v2, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->c:Ljava/lang/String;

    iget v4, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->a:I

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 1159
    goto/16 :goto_1

    :cond_6
    move v0, v6

    .line 1160
    goto/16 :goto_2

    :cond_7
    move v0, v6

    .line 11166
    goto :goto_3

    :cond_8
    move v0, v6

    .line 11167
    goto :goto_4

    .line 11172
    :cond_9
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 19023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->h:Landroid/view/View;

    .line 11172
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 11178
    :cond_a
    iget-object v0, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;

    .line 23023
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->g:Landroid/view/View;

    .line 11178
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "titleId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 24131
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->d:Ljava/lang/CharSequence;

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;

    .line 25131
    iput-object p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialogV3$a;->d:Ljava/lang/CharSequence;

    .line 101
    return-void
.end method
