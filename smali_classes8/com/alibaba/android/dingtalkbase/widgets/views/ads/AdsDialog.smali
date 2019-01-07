.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "AdsDialog.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->p:Z

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 68
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->requestWindowFeature(I)Z

    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcig$h;->ads_dialog:I

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->setContentView(Landroid/view/View;)V

    .line 77
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 78
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 80
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x43878000    # 271.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 81
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 84
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->setCanceledOnTouchOutside(Z)V

    .line 1090
    sget v3, Lcig$f;->ll_start_chat:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->n:Landroid/view/View;

    .line 1091
    sget v3, Lcig$f;->btn_right_text:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->j:Landroid/widget/TextView;

    .line 1092
    sget v3, Lcig$f;->tv_tip_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->i:Landroid/widget/TextView;

    .line 1093
    sget v3, Lcig$f;->tv_tips:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->m:Landroid/widget/TextView;

    .line 1094
    sget v3, Lcig$f;->img:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->l:Landroid/widget/ImageView;

    .line 1095
    sget v3, Lcig$f;->btn_left_text:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->k:Landroid/widget/TextView;

    .line 1096
    sget v3, Lcig$f;->ll_cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->o:Landroid/view/View;

    .line 1097
    sget v3, Lcig$f;->iv_dialog_close:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1111
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1115
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->i:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->p:Z

    if-eqz v3, :cond_7

    .line 1119
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1124
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1126
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->h:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->l:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->h:Ljava/lang/String;

    .line 1173
    if-eqz v4, :cond_4

    .line 1176
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1177
    invoke-interface {v3, v4, v5, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1145
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1146
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1150
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->o:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1159
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->a:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_9

    .line 1160
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void

    .line 74
    .end local v2    # "window":Landroid/view/Window;
    :cond_6
    sget v3, Lcig$h;->ads_dialog:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 1127
    .restart local v2    # "window":Landroid/view/Window;
    :catch_0
    move-exception v3

    .line 1128
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1134
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1153
    :cond_8
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->o:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1155
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1162
    :cond_9
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;->n:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method
