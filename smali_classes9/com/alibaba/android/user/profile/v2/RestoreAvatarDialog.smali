.class public Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "RestoreAvatarDialog.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nick"    # Ljava/lang/String;

    .prologue
    .line 44
    sget v0, Lezg$m;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->c:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->c:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->requestWindowFeature(I)Z

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v7, Lezg$j;->dialog_restore_avatar_layout:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 66
    .local v6, "window":Landroid/view/Window;
    if-eqz v6, :cond_0

    .line 67
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 68
    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 69
    .local v1, "manager":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 72
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 74
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 75
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 78
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v3, :cond_0

    .line 79
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const v8, 0x3f3851ec    # 0.72f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 80
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "manager":Landroid/view/WindowManager;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    sget v7, Lezg$h;->btn_right_text:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 87
    .local v4, "sureBtn":Landroid/widget/TextView;
    sget v7, Lezg$h;->btn_left_text:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->findViewById(I)Landroid/view/View;

    .line 88
    sget v7, Lezg$h;->ll_start_chat:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 90
    .local v5, "viewBottom":Landroid/view/View;
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v7, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog$1;-><init>(Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v7, Lezg$h;->restore_avatar_iv_avatar:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v7, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 103
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v8, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 104
    iget-object v7, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v8, p0, Lcom/alibaba/android/user/profile/v2/RestoreAvatarDialog;->c:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
