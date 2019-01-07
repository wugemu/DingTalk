.class public Lcom/alibaba/android/user/widget/UserCustomDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "UserCustomDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget v0, Lezg$m;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->g:Z

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->h:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v13, 0x11

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/widget/UserCustomDialog;->requestWindowFeature(I)Z

    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lezg$j;->setting_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 69
    .local v12, "window":Landroid/view/Window;
    if-eqz v12, :cond_0

    .line 70
    invoke-virtual {v12, v13}, Landroid/view/Window;->setGravity(I)V

    .line 73
    :cond_0
    invoke-virtual {v12}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    .line 74
    .local v9, "manager":Landroid/view/WindowManager;
    if-eqz v9, :cond_1

    .line 76
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 77
    .local v8, "display":Landroid/view/Display;
    if-eqz v8, :cond_1

    .line 79
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v8, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 83
    .local v11, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v11, :cond_1

    .line 84
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    invoke-virtual {v12, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1097
    .end local v8    # "display":Landroid/view/Display;
    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .end local v11    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    sget v0, Lezg$h;->ll_start_chat:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->e:Landroid/view/View;

    .line 1098
    sget v0, Lezg$h;->btn_right_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->b:Landroid/widget/TextView;

    .line 1099
    sget v0, Lezg$h;->tv_tip_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->a:Landroid/widget/TextView;

    .line 1100
    sget v0, Lezg$h;->img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->d:Landroid/widget/ImageView;

    .line 1101
    sget v0, Lezg$h;->btn_left_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->c:Landroid/widget/TextView;

    .line 1102
    sget v0, Lezg$h;->ll_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/UserCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->f:Landroid/view/View;

    .line 1107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->h:Z

    if-eqz v0, :cond_5

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1121
    iget-object v1, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->d:Landroid/widget/ImageView;

    .line 1158
    if-eqz v1, :cond_4

    .line 1161
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xc8

    const/16 v7, 0xc8

    invoke-direct {v0, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1162
    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1163
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1165
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v3, v2

    move-object v7, v2

    .line 1166
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1134
    :cond_4
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1135
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/widget/UserCustomDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/widget/UserCustomDialog$1;-><init>(Lcom/alibaba/android/user/widget/UserCustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void

    .line 1124
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1138
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/user/widget/UserCustomDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
