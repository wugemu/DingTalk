.class public Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
.super Landroid/widget/RelativeLayout;
.source "OrgIntroView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/view/ViewGroup;

.field public m:Landroid/view/ViewGroup;

.field public n:Lcom/alibaba/doraemon/image/ImageMagician;

.field public o:Lguu;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Lgve;

.field private t:Landroid/widget/TextView;

.field private u:I

.field private v:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

.field private w:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1100
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_layout_org_intro:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1101
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1107
    sget v0, Lgtt$d;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a:Landroid/widget/ImageView;

    .line 1108
    sget v0, Lgtt$d;->tv_org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->b:Landroid/widget/TextView;

    .line 1109
    sget v0, Lgtt$d;->iv_ding_level:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1110
    sget v0, Lgtt$d;->tv_ding_level:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->d:Landroid/widget/TextView;

    .line 1111
    sget v0, Lgtt$d;->iftv_org_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1112
    sget v0, Lgtt$d;->tv_org_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->f:Landroid/widget/TextView;

    .line 1113
    sget v0, Lgtt$d;->iv_org_credit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1114
    sget v0, Lgtt$d;->tv_org_credit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->h:Landroid/widget/TextView;

    .line 1116
    sget v0, Lgtt$d;->ll_company_basic_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->i:Landroid/widget/LinearLayout;

    .line 1117
    sget v0, Lgtt$d;->tv_company_city:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->p:Landroid/widget/TextView;

    .line 1118
    sget v0, Lgtt$d;->tv_company_scale:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->q:Landroid/widget/TextView;

    .line 1119
    sget v0, Lgtt$d;->tv_company_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->j:Landroid/widget/TextView;

    .line 1121
    sget v0, Lgtt$d;->rl_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->r:Landroid/widget/RelativeLayout;

    .line 1122
    sget v0, Lgtt$d;->iv_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->k:Landroid/widget/ImageView;

    .line 1123
    sget v0, Lgtt$d;->tv_media_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->t:Landroid/widget/TextView;

    .line 1124
    sget v0, Lgtt$d;->ll_org_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->l:Landroid/view/ViewGroup;

    .line 1125
    sget v0, Lgtt$d;->ll_org_extra:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->m:Landroid/view/ViewGroup;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$1;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->w:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->v:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->x:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "cityRegionStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v2, v2, Lguu;->a:Lgus;

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v2, v2, Lguu;->a:Lgus;

    iget-object v0, v2, Lgus;->g:Ljava/lang/String;

    .line 351
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->x:Z

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->w:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2370
    const-string/jumbo v2, "OrgIntroViewThread"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->w:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->p:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 5
    .param p1, "progress"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v0, v0, Lguu;->b:Lgut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v0, v0, Lguu;->b:Lgut;

    iget-object v0, v0, Lgut;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v0, v0, Lguu;->b:Lgut;

    iget-object v0, v0, Lgut;->f:Ljava/util/List;

    .line 200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->r:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->s:Lgve;

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Lgve;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v2, v2, Lguu;->b:Lgut;

    iget-object v2, v2, Lgut;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lgve;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->s:Lgve;

    .line 208
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->s:Lgve;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$2;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V

    invoke-virtual {v0, v1}, Lgve;->setMultiPbBarListener(Lgve$a;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->r:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->s:Lgve;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->s:Lgve;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->u:I

    invoke-virtual {v0, v1, p1}, Lgve;->a(IF)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 9
    .param p1, "needRpcIfNotExists"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "companyScale":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v4, v4, Lguu;->a:Lgus;

    if-eqz v4, :cond_0

    .line 292
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v4, v4, Lguu;->a:Lgus;

    iget-object v0, v4, Lgus;->h:Ljava/lang/String;

    .line 294
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->y:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 298
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    .line 299
    .local v2, "scaleInt":I
    const/4 v3, 0x0

    .line 300
    .local v3, "targetObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 301
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    if-eqz v1, :cond_2

    iget v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    if-ne v5, v2, :cond_2

    .line 302
    move-object v3, v1

    .line 306
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    :cond_3
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 307
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->q:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "\u00b7"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lgtt$f;->dt_recruitment_org_scale:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 313
    .end local v2    # "scaleInt":I
    .end local v3    # "targetObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    :cond_5
    if-nez p1, :cond_6

    .line 314
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 316
    :cond_6
    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2323
    new-instance v5, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$3;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$3;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V

    .line 2340
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_7

    .line 2341
    const-class v6, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v5, v6, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 2343
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcma;)V

    goto/16 :goto_0

    :cond_7
    move-object v4, v5

    goto :goto_1
.end method

.method public setCurVideoPosition(I)V
    .locals 6
    .param p1, "curVideoPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 161
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->u:I

    .line 1410
    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->u:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 163
    :goto_0
    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v3, v3, Lguu;->a:Lgus;

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 168
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    :goto_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_2
    return-void

    :cond_0
    move v3, v4

    .line 1410
    goto :goto_0

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 178
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "desc":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v3, v3, Lguu;->b:Lgut;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v3, v3, Lguu;->b:Lgut;

    iget-object v3, v3, Lgut;->f:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 185
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v3, v3, Lguu;->b:Lgut;

    iget-object v0, v3, Lgut;->f:Ljava/util/List;

    .line 186
    .local v0, "banners":Ljava/util/List;, "Ljava/util/List<Lgur;>;"
    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 187
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgur;

    .line 188
    .local v2, "object":Lgur;
    if-eqz v2, :cond_3

    .line 189
    iget-object v1, v2, Lgur;->g:Ljava/lang/String;

    .line 193
    .end local v0    # "banners":Ljava/util/List;, "Ljava/util/List<Lgur;>;"
    .end local v2    # "object":Lgur;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setOrgIntroViewListener(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;)V
    .locals 0
    .param p1, "orgIntroViewListener"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->v:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;

    .line 97
    return-void
.end method
