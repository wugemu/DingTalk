.class public final Lfoa;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "ScreenShotFeedBackDialog.java"


# instance fields
.field b:Ljava/lang/String;

.field c:Landroid/app/Activity;

.field d:Landroid/widget/ImageView;

.field e:I

.field f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private j:Lifu;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/content/Context;)V

    .line 40
    const-string/jumbo v0, "try_show_delay_token"

    iput-object v0, p0, Lfoa;->g:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "finish_delay_token"

    iput-object v0, p0, Lfoa;->h:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lfoa;->e:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfoa;->f:J

    .line 52
    new-instance v0, Lifu;

    invoke-direct {v0}, Lifu;-><init>()V

    iput-object v0, p0, Lfoa;->j:Lifu;

    .line 56
    iput-object p1, p0, Lfoa;->c:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lfoa;->b:Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lfoa;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lfoa;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->activity_float_feedback_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1082
    invoke-virtual {p0, v1}, Lfoa;->setContentView(Landroid/view/View;)V

    .line 1084
    sget v0, Lezg$h;->screen_shot_iv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfoa;->d:Landroid/widget/ImageView;

    .line 1086
    sget v0, Lezg$h;->rl_feedback:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lfoa$1;

    invoke-direct {v2, p0}, Lfoa$1;-><init>(Lfoa;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    sget v0, Lezg$h;->tv_send:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lfoa$2;

    invoke-direct {v1, p0}, Lfoa$2;-><init>(Lfoa;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    new-instance v0, Lfoa$3;

    invoke-direct {v0, p0}, Lfoa$3;-><init>(Lfoa;)V

    invoke-virtual {p0, v0}, Lfoa;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1112
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lfoa;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    invoke-virtual {p0, v3}, Lfoa;->setOutsideTouchable(Z)V

    .line 1114
    invoke-virtual {p0, v3}, Lfoa;->setInputMethodMode(I)V

    .line 1115
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lfoa;->setSoftInputMode(I)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic a(Lfoa;)V
    .locals 6
    .param p0, "x0"    # Lfoa;

    .prologue
    .line 39
    .line 1157
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 1158
    iget-object v1, p0, Lfoa;->b:Ljava/lang/String;

    .line 2058
    iput-object v1, v0, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 1160
    new-instance v1, Lfoa$5;

    invoke-direct {v1, p0}, Lfoa$5;-><init>(Lfoa;)V

    .line 1189
    sget v2, Lezg$l;->dt_processing_please_wait:I

    .line 2217
    iget-object v3, p0, Lfoa;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v3, :cond_0

    .line 2218
    iget-object v3, p0, Lfoa;->c:Landroid/app/Activity;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lfoa;->c:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lfoa;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1190
    :goto_0
    invoke-static {}, Lify;->a()Lify;

    move-result-object v2

    .line 1191
    iget-object v3, p0, Lfoa;->j:Lifu;

    invoke-virtual {v2, v0, v1, v3}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    .line 39
    return-void

    .line 2220
    :cond_0
    iget-object v2, p0, Lfoa;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lfoa;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lfoa;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lfoa;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lfoa;)I
    .locals 2
    .param p0, "x0"    # Lfoa;

    .prologue
    .line 39
    iget v0, p0, Lfoa;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfoa;->e:I

    return v0
.end method

.method static synthetic c(Lfoa;)V
    .locals 1
    .param p0, "x0"    # Lfoa;

    .prologue
    .line 39
    .line 2225
    iget-object v0, p0, Lfoa;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lfoa;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic d(Lfoa;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfoa;

    .prologue
    .line 39
    iget-object v0, p0, Lfoa;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lfoa;)J
    .locals 2
    .param p0, "x0"    # Lfoa;

    .prologue
    .line 39
    iget-wide v0, p0, Lfoa;->f:J

    return-wide v0
.end method

.method static synthetic f(Lfoa;)V
    .locals 0
    .param p0, "x0"    # Lfoa;

    .prologue
    .line 39
    invoke-virtual {p0}, Lfoa;->b()V

    return-void
.end method


# virtual methods
.method a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 10
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 122
    const/4 v0, 0x0

    .line 125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    :goto_1
    return-void

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "try to show screenshot but oom : "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    :cond_0
    iget v2, p0, Lfoa;->e:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 136
    const-string/jumbo v2, "try to show screenshot and retry count is over limit"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->t(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget v2, Lezg$g;->dialog_bg_feedback:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 141
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfoa$4;

    invoke-direct {v3, p0, p1, p2}, Lfoa$4;-><init>(Lfoa;Landroid/widget/ImageView;Ljava/lang/String;)V

    const-string/jumbo v4, "try_show_delay_token"

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    .line 141
    invoke-virtual {v2, v3, v4, v6, v7}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1
.end method

.method b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 198
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfoa$6;

    invoke-direct {v1, p0}, Lfoa$6;-><init>(Lfoa;)V

    const-string/jumbo v2, "finish_delay_token"

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    .line 198
    invoke-virtual {v0, v1, v2, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 214
    return-void
.end method
