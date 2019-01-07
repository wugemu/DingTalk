.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;
.super Landroid/widget/LinearLayout;
.source "SpaceEncryptDetailPageView.java"

# interfaces
.implements Lctj$a;


# instance fields
.field private A:Lgqm;

.field private B:Lgqm;

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:J

.field private M:Z

.field private N:Ljava/lang/String;

.field private final O:Landroid/view/View$OnClickListener;

.field private final P:Landroid/view/View$OnClickListener;

.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/Button;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

.field public k:Landroid/view/View;

.field public l:Landroid/widget/TextView;

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

.field public p:Ljava/lang/Object;

.field public q:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field public r:J

.field public s:J

.field public t:Z

.field final u:Landroid/view/View$OnClickListener;

.field v:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private w:Landroid/app/Activity;

.field private x:J

.field private y:Lgqm;

.field private z:Lgqm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 274
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->C:I

    .line 108
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    .line 112
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->G:Z

    .line 113
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->H:Z

    .line 114
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->I:Z

    .line 115
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->J:Z

    .line 116
    iput v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->K:I

    .line 178
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->O:Landroid/view/View$OnClickListener;

    .line 190
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->P:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->u:Landroid/view/View$OnClickListener;

    .line 217
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$4;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->v:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 275
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_file_page_encrypt:I

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 276
    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setOrientation(I)V

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 278
    .local v0, "padding":I
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setPadding(IIII)V

    .line 279
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    sget v1, Lfzs$f;->img_file_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a:Landroid/widget/ImageView;

    .line 281
    sget v1, Lfzs$f;->tv_encrypt_file_size:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b:Landroid/widget/TextView;

    .line 282
    sget v1, Lfzs$f;->tv_encrypt_preview_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    .line 283
    sget v1, Lfzs$f;->tv_encrypt_preview_detail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    .line 284
    sget v1, Lfzs$f;->btn_operation_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->e:Landroid/widget/Button;

    .line 285
    sget v1, Lfzs$f;->img_audio_operate:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->f:Landroid/widget/ImageView;

    .line 286
    sget v1, Lfzs$f;->tv_audio_progress:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g:Landroid/widget/TextView;

    .line 287
    sget v1, Lfzs$f;->ll_encrypt_common:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    .line 288
    sget v1, Lfzs$f;->ll_encrypt_audio:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i:Landroid/widget/LinearLayout;

    .line 289
    sget v1, Lfzs$f;->img_img_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 290
    sget v1, Lfzs$f;->loading_decrypt:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    .line 291
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    sget v2, Lfzs$f;->progress_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->l:Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->C:I

    return v0
.end method

.method private a(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "duration"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 753
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->C:I

    .line 754
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    .line 755
    .local v0, "voicePlayer":Lctj;
    if-nez v0, :cond_0

    .line 773
    :goto_0
    return-void

    .line 758
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 760
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$e;->ding_audio_icon_pause:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 763
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g:Landroid/widget/TextView;

    .line 6196
    iget v2, v0, Lctj;->d:F

    .line 763
    int-to-float v3, p2

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 767
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$e;->ding_audio_icon_play:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    .line 779
    if-nez p0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 783
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;ILjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 74
    .line 6253
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 6254
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 6255
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 6256
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 6257
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 6258
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 6260
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->alm_load_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6261
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 595
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCryptStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpv;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method private c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->L:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 454
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v3, Lgma$a;

    invoke-direct {v3}, Lgma$a;-><init>()V

    .line 459
    .local v3, "param":Lgma$a;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getSpaceType()I

    move-result v4

    iput v4, v3, Lgma$a;->a:I

    .line 460
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->x:J

    iput-wide v4, v3, Lgma$a;->b:J

    .line 461
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->n:Ljava/lang/String;

    iput-object v4, v3, Lgma$a;->c:Ljava/lang/String;

    .line 462
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->J:Z

    iput-boolean v4, v3, Lgma$a;->d:Z

    .line 463
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->I:Z

    iput-boolean v4, v3, Lgma$a;->e:Z

    .line 464
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfzv;->l(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lgma$a;->f:I

    .line 465
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v4, v3, Lgma$a;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 466
    iput v6, v3, Lgma$a;->h:I

    .line 467
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->t:Z

    iput-boolean v4, v3, Lgma$a;->i:Z

    .line 469
    invoke-static {v3}, Lgma;->a(Lgma$a;)Ljava/util/List;

    move-result-object v0

    .line 470
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 471
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->E:Z

    if-eqz v4, :cond_1

    .line 472
    const-string/jumbo v4, "action_file_send_to_contact"

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->G:Z

    if-eqz v4, :cond_2

    .line 475
    const-string/jumbo v4, "action_file_rename"

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 476
    const-string/jumbo v4, "action_file_re_path"

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 477
    const-string/jumbo v4, "action_file_delete"

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 481
    :cond_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0, v4, v6, v5}, Lgma;->a(Ljava/util/List;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 483
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v1

    .line 485
    .local v1, "menuDownload":Lgqm;
    if-eqz v1, :cond_3

    .line 486
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    .line 488
    :cond_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v2

    .line 490
    .local v2, "menuOpenThird":Lgqm;
    if-eqz v2, :cond_4

    .line 491
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    .line 493
    :cond_4
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v4, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setForceDisableSortMenuItem(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->E:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->w:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    return-object v0
.end method

.method private getSpaceType()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 448
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->K:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->K:I

    invoke-static {v0}, Lgqu;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 449
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->K:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;
    .locals 3
    .param p1, "tvTitle"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 355
    :goto_0
    return-object p0

    .line 340
    :cond_0
    const-string/jumbo v0, ""

    .line 342
    .local v0, "title":Ljava/lang/String;
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    if-nez v1, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_entrypt_file_type_image:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :cond_2
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_entrypt_file_type_amr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 346
    :cond_3
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 347
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_entrypt_file_type_vedio:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 350
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_entrypt_file_type_file:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 602
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    if-nez v0, :cond_1

    .line 5160
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 5161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v0, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 5162
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 5163
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->v:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 5246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 5165
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5167
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->N:Ljava/lang/String;

    .line 5168
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->N:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->N:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5169
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->N:Ljava/lang/String;

    const/4 v4, 0x2

    .line 5170
    invoke-static {v6}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    move v6, v5

    move-object v7, v3

    .line 5169
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->A:Lgqm;

    invoke-virtual {v0, v9, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILgqm;)V

    .line 609
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_preview_look_eml:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 618
    return-void

    .line 5172
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->N:Ljava/lang/String;

    const/4 v4, 0x6

    .line 5173
    invoke-static {v6}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    move v6, v5

    move-object v7, v3

    .line 5172
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    invoke-virtual {v0, v9, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILgqm;)V

    goto :goto_1

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_decrypt_video_open_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_decrypt_file_open_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 857
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 859
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 860
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V
    .locals 10
    .param p1, "spaceMenuBottomView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 360
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 361
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 362
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    if-nez v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 1384
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d()V

    .line 1386
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1387
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d()V

    .line 3441
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    if-nez v0, :cond_2

    .line 1392
    new-array v0, v9, [Ljava/lang/String;

    sget v1, Lfzs$h;->cspace_menu_download:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "("

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1393
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    .line 2046
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 1393
    aput-object v1, v0, v7

    const-string/jumbo v1, ")"

    aput-object v1, v0, v8

    .line 1392
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    new-instance v1, Lgqm;

    const/16 v2, 0xa

    sget v3, Lfzs$h;->icon_download:I

    invoke-direct {v1, v2, v3, v0}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    .line 1397
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->A:Lgqm;

    if-nez v0, :cond_3

    .line 1398
    new-instance v0, Lgqm;

    const/16 v1, 0x28

    sget v2, Lfzs$h;->icon_mobilephone:I

    sget v3, Lfzs$h;->save_to_phone:I

    .line 1399
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->A:Lgqm;

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1403
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->A:Lgqm;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto :goto_0

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto :goto_0

    .line 366
    :cond_5
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    if-ne v0, v6, :cond_6

    .line 367
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 369
    :cond_6
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    if-ne v0, v7, :cond_0

    .line 370
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 371
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2505
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d()V

    .line 2507
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    if-nez v0, :cond_7

    .line 2508
    new-instance v0, Lgqm;

    const/16 v1, 0x1e

    sget v2, Lfzs$h;->icon_otherapp:I

    sget v3, Lfzs$h;->dt_cspace_menu_audio_play:I

    .line 2509
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    .line 2512
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2513
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d()V

    goto/16 :goto_0

    .line 2517
    :cond_8
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    if-nez v0, :cond_9

    .line 2518
    new-array v0, v9, [Ljava/lang/String;

    sget v1, Lfzs$h;->cspace_menu_download:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "("

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2519
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    .line 3046
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 2519
    aput-object v1, v0, v7

    const-string/jumbo v1, ")"

    aput-object v1, v0, v8

    .line 2518
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2520
    new-instance v1, Lgqm;

    const/16 v2, 0xa

    sget v3, Lfzs$h;->icon_download:I

    invoke-direct {v1, v2, v3, v0}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    .line 2523
    :cond_9
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2524
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto/16 :goto_0

    .line 2526
    :cond_a
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto/16 :goto_0

    .line 3417
    :cond_b
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d()V

    .line 3419
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    if-nez v0, :cond_c

    .line 3420
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3421
    new-instance v0, Lgqm;

    const/16 v1, 0x1e

    sget v2, Lfzs$h;->icon_otherapp:I

    .line 3422
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lfzs$h;->cspace_email_open:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    .line 3429
    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3430
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d()V

    goto/16 :goto_0

    .line 3424
    :cond_d
    new-instance v0, Lgqm;

    const/16 v1, 0x1e

    sget v2, Lfzs$h;->icon_otherapp:I

    .line 3425
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lfzs$h;->cspace_menu_openbythirdapp:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    goto :goto_1

    .line 3434
    :cond_e
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    if-nez v0, :cond_f

    .line 3435
    new-array v0, v9, [Ljava/lang/String;

    sget v1, Lfzs$h;->cspace_menu_download:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "("

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3436
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    .line 4046
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 3436
    aput-object v1, v0, v7

    const-string/jumbo v1, ")"

    aput-object v1, v0, v8

    .line 3435
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3437
    new-instance v1, Lgqm;

    const/16 v2, 0xa

    sget v3, Lfzs$h;->icon_download:I

    invoke-direct {v1, v2, v3, v0}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    .line 3440
    :cond_f
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3441
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->z:Lgqm;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto/16 :goto_0

    .line 3443
    :cond_10
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 802
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(II)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 789
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    const/4 v0, 0x5

    if-ne v0, p2, :cond_2

    .line 794
    sget v0, Lfzs$h;->audio_file_not_exist:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 796
    :cond_2
    sget v0, Lfzs$h;->audio_play_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorTips"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 625
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 626
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 627
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 628
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 632
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->e:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 639
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 640
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 11
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/16 v10, 0x8

    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 537
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCryptStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->M:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->w:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->n:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->m:J

    .line 5021
    if-eqz v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 541
    :cond_0
    :goto_0
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 544
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lfzs$h;->dt_decrypt_progressing:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 591
    :goto_1
    return v0

    .line 5025
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    new-instance v8, Lgpu$1;

    invoke-direct {v8}, Lgpu$1;-><init>()V

    const-class v9, Lcma;

    invoke-interface {v7, v8, v9, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v6, v3, v4, v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JLcma;)V

    goto :goto_0

    .line 548
    :cond_2
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a()V

    move v0, v1

    .line 550
    goto :goto_1

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->E:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    if-nez v0, :cond_4

    .line 559
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->H:Z

    if-nez v0, :cond_4

    .line 562
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, v10}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 569
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 574
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a()V

    move v0, v1

    .line 575
    goto :goto_1

    .line 566
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 578
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lgpv;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->b()V

    move v0, v1

    .line 580
    goto/16 :goto_1

    .line 583
    :cond_6
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    if-nez v0, :cond_7

    .line 584
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v1, 0x28

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILgqm;)V

    .line 589
    :goto_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lfzs$h;->dt_decrypt_download_decrypt_tips:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    .line 591
    goto/16 :goto_1

    .line 586
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/16 v1, 0x1e

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->y:Lgqm;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILgqm;)V

    goto :goto_3
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->w:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    sget v1, Lfzs$h;->network_no_connection:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 971
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->B:Lgqm;

    if-nez v1, :cond_1

    .line 924
    new-instance v1, Lgqm;

    const/16 v2, 0x14

    sget v3, Lfzs$h;->icon_suspend:I

    .line 925
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lfzs$h;->cspace_menu_download_pause:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->B:Lgqm;

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->o:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->B:Lgqm;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(JLgqm;)V

    .line 929
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 931
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView$5;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;)V

    .line 966
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->w:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 967
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->w:Landroid/app/Activity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 970
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLcma;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 6
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 711
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->D:I

    .line 712
    packed-switch p1, :pswitch_data_0

    .line 734
    :goto_0
    return-void

    .line 714
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 715
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i:Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 716
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 717
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->q:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 718
    .local v0, "iconResourceId":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 721
    .end local v0    # "iconResourceId":I
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 722
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 723
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->j:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 724
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->g:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 727
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$e;->cspace_encrypt_img_icon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->h:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    .line 729
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->i:Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 846
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    invoke-direct {p0, v1, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(II)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i1"    # I

    .prologue
    .line 820
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(II)V

    goto :goto_0
.end method

.method public c(I)Ljava/lang/String;
    .locals 5
    .param p1, "durationInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 740
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfzs$h;->voice_record_duration_long:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    :goto_0
    return-object v0

    .line 742
    :cond_0
    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfzs$h;->voice_record_duration:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfzs$h;->voice_record_duration_short:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 811
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(II)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 837
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(II)V

    goto :goto_0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 828
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->a(II)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 696
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 697
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lctj;->a(Lctj$a;)V

    .line 698
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 702
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 703
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lctj;->b(Lctj$a;)V

    .line 704
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->c()V

    .line 705
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->w:Landroid/app/Activity;

    .line 687
    return-void
.end method

.method public setAdmin(Z)V
    .locals 0
    .param p1, "admin"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->J:Z

    .line 144
    return-void
.end method

.method public setAudioDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 881
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->r:J

    .line 882
    return-void
.end method

.method public setBurnChat(Z)V
    .locals 0
    .param p1, "isBurnChat"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->E:Z

    .line 328
    return-void
.end method

.method public setIsForceSendReadForTargetFile(Z)V
    .locals 0
    .param p1, "isForceSendReadFotTargetFile"    # Z

    .prologue
    .line 910
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->M:Z

    .line 911
    return-void
.end method

.method public setIsFromConversation(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->G:Z

    .line 903
    return-void
.end method

.method public setMorePower(Z)V
    .locals 0
    .param p1, "isMorePower"    # Z

    .prologue
    .line 898
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->F:Z

    .line 899
    return-void
.end method

.method public setMustShowDownload(Z)V
    .locals 0
    .param p1, "mustShowDownload"    # Z

    .prologue
    .line 906
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->H:Z

    .line 907
    return-void
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 331
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->x:J

    .line 332
    return-void
.end method

.method public setPreviewVersion(J)V
    .locals 1
    .param p1, "previewVersion"    # J

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->L:J

    .line 157
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->I:Z

    .line 140
    return-void
.end method

.method public setSpaceType(I)V
    .locals 0
    .param p1, "spaceType"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceEncryptDetailPageView;->K:I

    .line 148
    return-void
.end method
