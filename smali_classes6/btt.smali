.class public final Lbtt;
.super Lbtu;
.source "AnchorFloatWindowController.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field private g:Llgf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lbtu;-><init>()V

    .line 101
    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "isLivePlaying"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 106
    iget-object v2, p0, Lbtt;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getTvStatus()Landroid/widget/TextView;

    move-result-object v1

    .line 107
    .local v1, "tvStatus":Landroid/widget/TextView;
    iget-object v2, p0, Lbtt;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getIvStatus()Landroid/widget/ImageView;

    move-result-object v0

    .line 109
    .local v0, "ivStatus":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    sget v2, Lbtp$g;->dt_lv_live_status_living:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    if-eqz p1, :cond_1

    sget v2, Lbtp$d;->live_living_corner_background:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    if-eqz p1, :cond_2

    .line 115
    sget v2, Lbtp$g;->dt_lv_live_status_living:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    sget v2, Lbtp$d;->live_living_corner_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    :try_start_0
    new-instance v2, Llgf;

    iget-object v3, p0, Lbtt;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbtp$d;->live_status:I

    invoke-direct {v2, v3, v4}, Llgf;-><init>(Landroid/content/res/Resources;I)V

    iput-object v2, p0, Lbtt;->g:Llgf;

    .line 120
    iget-object v2, p0, Lbtt;->g:Llgf;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v2, p0, Lbtt;->g:Llgf;

    invoke-virtual {v2}, Llgf;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :goto_3
    iget-object v2, p0, Lbtt;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setKeepScreenOn(Z)V

    .line 134
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v2

    const/4 v3, 0x1

    .line 1073
    iput-boolean v3, v2, Lbtq;->d:Z

    .line 135
    return-void

    .line 109
    :cond_0
    sget v2, Lbtp$g;->dt_lv_live_ended:I

    goto :goto_0

    .line 111
    :cond_1
    sget v2, Lbtp$d;->live_live_over_background:I

    goto :goto_1

    .line 126
    :cond_2
    sget v2, Lbtp$g;->dt_lv_live_ended:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 127
    sget v2, Lbtp$d;->live_live_over_background:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    invoke-direct {p0}, Lbtt;->j()V

    .line 130
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private j()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lbtt;->g:Llgf;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lbtt;->g:Llgf;

    invoke-virtual {v0}, Llgf;->stop()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lbtt;->g:Llgf;

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbtt;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getContentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    sget-object v0, Lbtt$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 89
    :pswitch_0
    invoke-direct {p0, v2}, Lbtt;->a(Z)V

    .line 90
    iput-boolean v3, p0, Lbtt;->b:Z

    .line 91
    iget-object v0, p0, Lbtt;->f:Landroid/content/Context;

    sget v1, Lbtp$g;->dt_lv_live_stop_by_disbanded:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtt;->c:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-direct {p0, v2}, Lbtt;->a(Z)V

    .line 95
    iput-boolean v3, p0, Lbtt;->b:Z

    .line 96
    iget-object v0, p0, Lbtt;->f:Landroid/content/Context;

    sget v1, Lbtp$g;->dt_lv_live_stop_by_kicked_out:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtt;->c:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-direct {p0, v2}, Lbtt;->a(Z)V

    .line 100
    iput-boolean v3, p0, Lbtt;->b:Z

    .line 101
    iget-object v0, p0, Lbtt;->f:Landroid/content/Context;

    sget v1, Lbtp$g;->dt_lv_live_stop_by_quit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbtt;->c:Ljava/lang/String;

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbtt;->a(Z)V

    .line 83
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lbtu;->b()V

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbtt;->a(Z)V

    .line 52
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lbtu;->c()V

    .line 58
    invoke-direct {p0}, Lbtt;->j()V

    .line 59
    return-void
.end method

.method public final d()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 63
    iget-object v2, p0, Lbtt;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    .line 64
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lbyg;->a()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lbtt;->f:Landroid/content/Context;

    invoke-static {v2}, Lcms;->b(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lbtt;->f:Landroid/content/Context;

    .line 68
    invoke-static {v3}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 69
    .local v1, "screenWidth":I
    iget-boolean v2, p0, Lbtt;->a:Z

    if-eqz v2, :cond_1

    .line 70
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 71
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    .end local v1    # "screenWidth":I
    :cond_0
    :goto_0
    return-object v0

    .line 73
    .restart local v1    # "screenWidth":I
    :cond_1
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 74
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method
