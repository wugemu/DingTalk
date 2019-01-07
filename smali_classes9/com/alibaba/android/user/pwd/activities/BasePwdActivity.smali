.class public Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "BasePwdActivity.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:[Landroid/view/View;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$1;-><init>(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;

    .prologue
    const/4 v1, 0x0

    .line 14
    .line 2096
    iget-boolean v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->b:Z

    if-nez v0, :cond_2

    .line 2119
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2120
    if-lez v0, :cond_2

    .line 2121
    iget-object v2, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    .line 2122
    add-int/lit8 v2, v0, -0x1

    move v0, v1

    .line 2123
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2124
    if-ge v0, v2, :cond_0

    .line 2125
    iget-object v3, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 2123
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2127
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 2130
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d(Ljava/lang/String;)V

    .line 14
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v1, 0x0

    .line 14
    .line 1089
    iget-boolean v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->b:Z

    if-nez v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1104
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    .line 1106
    add-int/lit8 v2, v0, 0x1

    move v0, v1

    .line 1107
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1108
    if-ge v0, v2, :cond_0

    .line 1109
    iget-object v3, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1107
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1111
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d(Ljava/lang/String;)V

    .line 14
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->b:Z

    return v0
.end method


# virtual methods
.method protected final a(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->b:Z

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity$2;-><init>(Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    sget v1, Lezg$h;->pwd_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorTip"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    sget v1, Lezg$h;->pwd_error_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 156
    sget v2, Lezg$h;->pwd_input_container:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "v":Landroid/view/View;
    sget v2, Lezg$a;->shake:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 158
    .local v0, "shake":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 182
    sget v1, Lezg$h;->pwd_other_action:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 192
    sget v0, Lezg$h;->pwd_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 201
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

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
    sget v0, Lezg$j;->activity_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lezg$g;->pwd_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->a:Landroid/os/Handler;

    .line 1035
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    sget v2, Lezg$h;->pwd_input_0:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lezg$h;->pwd_input_1:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lezg$h;->pwd_input_2:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lezg$h;->pwd_input_3:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->d:[Landroid/view/View;

    .line 1039
    sget v0, Lezg$h;->pwd_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    sget v0, Lezg$h;->pwd_kb_0:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    sget v0, Lezg$h;->pwd_kb_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    sget v0, Lezg$h;->pwd_kb_2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    sget v0, Lezg$h;->pwd_kb_3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    sget v0, Lezg$h;->pwd_kb_4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    sget v0, Lezg$h;->pwd_kb_5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    sget v0, Lezg$h;->pwd_kb_6:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    sget v0, Lezg$h;->pwd_kb_7:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    sget v0, Lezg$h;->pwd_kb_8:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    sget v0, Lezg$h;->pwd_kb_9:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    sget v0, Lezg$h;->pwd_kb_delete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    sget v0, Lezg$h;->pwd_other_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
