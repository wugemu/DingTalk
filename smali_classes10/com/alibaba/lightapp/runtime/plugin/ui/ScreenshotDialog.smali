.class public Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ScreenshotDialog.java"


# instance fields
.field private mCloseBt:Landroid/widget/Button;

.field private mCloseButtonClickListener:Landroid/view/View$OnClickListener;

.field private mIconUrl:Ljava/lang/String;

.field private mIconUrlIv:Landroid/widget/ImageView;

.field private mSendButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTipAction:Ljava/lang/String;

.field private mTipActionBt:Landroid/widget/Button;

.field private mTipContent:Ljava/lang/String;

.field private mTipContentTv:Landroid/widget/TextView;

.field private mTipTitle:Ljava/lang/String;

.field private mTipTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 173
    sget v1, Lhdn$h;->tv_screenshot_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipTitleTv:Landroid/widget/TextView;

    .line 174
    sget v1, Lhdn$h;->tv_screenshot_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipContentTv:Landroid/widget/TextView;

    .line 175
    sget v1, Lhdn$h;->bt_screenshot_send:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipActionBt:Landroid/widget/Button;

    .line 176
    sget v1, Lhdn$h;->bt_screenshot_close:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseBt:Landroid/widget/Button;

    .line 177
    sget v1, Lhdn$h;->iv_screenshot_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mIconUrlIv:Landroid/widget/ImageView;

    .line 179
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipTitleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipContentTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipActionBt:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipActionBt:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseBt:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_4
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mIconUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 200
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 202
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mIconUrlIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mIconUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setLocalImageDrawalbe(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZ)V

    .line 204
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->requestWindowFeature(I)Z

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lhdn$i;->screenshot_dialog_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->setContentView(Landroid/view/View;)V

    .line 144
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->initView()V

    .line 145
    return-void
.end method

.method public setCloseButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    .line 128
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseBt:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "iconUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mIconUrl:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mIconUrlIv:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 102
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mIconUrlIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setLocalImageDrawalbe(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZ)V

    goto :goto_0
.end method

.method public setSendButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    .line 114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipActionBt:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipActionBt:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTipAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "tipAction"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipAction:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipActionBt:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipActionBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTipContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "tipContent"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipContent:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipContentTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTipTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "tipTitle"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipTitle:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->mTipTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 155
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 156
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 158
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 161
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 163
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/ScreenshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
