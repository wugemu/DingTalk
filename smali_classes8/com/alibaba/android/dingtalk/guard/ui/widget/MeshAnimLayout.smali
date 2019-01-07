.class public Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;
.super Landroid/widget/FrameLayout;
.source "MeshAnimLayout.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private j:[Landroid/view/View;

.field private k:[Landroid/view/View;

.field private l:Landroid/animation/AnimatorSet;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->m:Ljava/util/List;

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->m:Ljava/util/List;

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->m:Ljava/util/List;

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 58
    .line 1068
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbrx$e;->device_alpha_mesh_anim:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1069
    sget v0, Lbrx$d;->iv_main_ap:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->a:Landroid/widget/ImageView;

    .line 1070
    sget v0, Lbrx$d;->iv_sta_ap:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->b:Landroid/widget/ImageView;

    .line 1072
    sget v0, Lbrx$d;->iv_up_ripple_1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->c:Landroid/widget/ImageView;

    .line 1073
    sget v0, Lbrx$d;->iv_up_ripple_2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->d:Landroid/widget/ImageView;

    .line 1074
    sget v0, Lbrx$d;->iv_up_ripple_3:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->e:Landroid/widget/ImageView;

    .line 1075
    new-array v0, v6, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->c:Landroid/widget/ImageView;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->d:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->e:Landroid/widget/ImageView;

    aput-object v2, v0, v5

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->j:[Landroid/view/View;

    .line 1077
    sget v0, Lbrx$d;->iv_down_ripple_1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->f:Landroid/widget/ImageView;

    .line 1078
    sget v0, Lbrx$d;->iv_down_ripple_2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->g:Landroid/widget/ImageView;

    .line 1079
    sget v0, Lbrx$d;->iv_down_ripple_3:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->h:Landroid/widget/ImageView;

    .line 1080
    new-array v0, v6, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->f:Landroid/widget/ImageView;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->g:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->h:Landroid/widget/ImageView;

    aput-object v2, v0, v5

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->k:[Landroid/view/View;

    .line 1082
    sget v0, Lbrx$d;->ic_status:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->j:[Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->setRippleAnimation([Landroid/view/View;)V

    .line 2064
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->k:[Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->setRippleAnimation([Landroid/view/View;)V

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 60
    return-void
.end method

.method private setRippleAnimation([Landroid/view/View;)V
    .locals 12
    .param p1, "ripples"    # [Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x5dc

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 87
    aget-object v1, p1, v0

    .line 88
    .local v1, "view":Landroid/view/View;
    mul-int/lit16 v2, v0, 0x1f4

    int-to-long v2, v2

    .line 2093
    const-string/jumbo v4, "scaleX"

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2094
    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2095
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 2096
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2097
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2098
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2101
    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2102
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 2103
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2104
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2105
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2107
    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_2

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 2108
    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2109
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 2110
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2111
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2112
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->m:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 2093
    .line 2100
    .line 2107
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3fc00000    # 1.5f
    .end array-data

    :array_2
    .array-data 4
        0x3fc00000    # 1.5f
        0x0
    .end array-data
.end method

.method private setRippleBackground(I)V
    .locals 5
    .param p1, "drawableId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->j:[Landroid/view/View;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 144
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->k:[Landroid/view/View;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 147
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz p1, :cond_1

    sget v0, Lbrx$g;->icon_checkbox_fill:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz p1, :cond_2

    sget v0, Lbrx$b;->ui_common_green_icon_bg_color:I

    :goto_1
    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 136
    if-eqz p1, :cond_3

    sget v0, Lbrx$c;->device_alpha_ripple:I

    :goto_2
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->setRippleBackground(I)V

    .line 137
    if-nez p1, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/MeshAnimLayout;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 140
    :cond_0
    return-void

    .line 134
    :cond_1
    sget v0, Lbrx$g;->icon_roundclose:I

    goto :goto_0

    .line 135
    :cond_2
    sget v0, Lbrx$b;->ui_common_alert_icon_bg_color:I

    goto :goto_1

    .line 136
    :cond_3
    sget v0, Lbrx$c;->device_alpha_ripple_disable:I

    goto :goto_2
.end method
