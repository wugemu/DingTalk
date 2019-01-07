.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "SpaceShareSuccessDialog.java"


# instance fields
.field private final a:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 34
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 35
    invoke-direct {p0, v0, v0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "jumpToChatText"    # Ljava/lang/String;
    .param p5, "stayInPageText"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 41
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 42
    invoke-direct {p0, p3, p4, p5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "jumpToChatText"    # Ljava/lang/String;
    .param p3, "stayInPageText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lfzs$g;->layout_shre_success_dialog:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 48
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcms;->a(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcms;->b(Landroid/content/Context;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v5, v6, 0x4

    .line 49
    .local v5, "width":I
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->setContentView(Landroid/view/View;)V

    .line 53
    sget v6, Lfzs$f;->tv_title:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "tvTitle":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 56
    sget v6, Lfzs$h;->dt_space_send_success:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :cond_0
    :goto_0
    sget v6, Lfzs$f;->tv_jump_to_chat:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "tvJumpToChat":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 65
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->a:Lcom/alibaba/wukong/im/Conversation;

    if-nez v6, :cond_6

    .line 68
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_2
    :goto_1
    sget v6, Lfzs$f;->tv_stay_in_ding_drive:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, "tvStayInDingDrive":Landroid/widget/TextView;
    if-eqz v2, :cond_4

    .line 94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 95
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_3
    new-instance v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$2;

    invoke-direct {v6, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_4
    return-void

    .line 58
    .end local v1    # "tvJumpToChat":Landroid/widget/TextView;
    .end local v2    # "tvStayInDingDrive":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    .restart local v1    # "tvJumpToChat":Landroid/widget/TextView;
    :cond_6
    new-instance v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;

    invoke-direct {v6, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
