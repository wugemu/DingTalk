.class public Lcom/alibaba/android/projection/widget/ProjectionFloatView;
.super Lcom/alibaba/android/projection/widget/BaseFloatView;
.source "ProjectionFloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public c:Ljava/lang/Runnable;

.field public d:Z

.field public e:J

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/content/Context;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/android/projection/widget/BaseFloatView;-><init>(Landroid/content/Context;)V

    .line 54
    sget-object v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;->RECTANGLE:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->n:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    .line 55
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->e:J

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 61
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 62
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42b00000    # 88.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    invoke-virtual {p0, v0}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->setWindowManagerParam(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->k:Landroid/content/Context;

    .line 68
    sget v1, Legm$c;->float_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    .line 69
    sget v1, Legm$c;->float_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 70
    sget v1, Legm$c;->float_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->i:Landroid/widget/TextView;

    .line 71
    sget v1, Legm$c;->float_status:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->j:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->e:J

    return-wide v0
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    if-nez v2, :cond_0

    .line 176
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 154
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->k:Landroid/content/Context;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->k:Landroid/content/Context;

    const/high16 v3, 0x427c0000    # 63.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    sget v3, Legm$b;->focus_bg_white_corner_shape:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 158
    iget v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->l:I

    if-le v2, v7, :cond_2

    .line 159
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->i:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->l:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 161
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Legm$e;->dt_focus_device_label:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 160
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->j:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->k:Landroid/content/Context;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v6, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    sget-object v2, Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;->RECTANGLE:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    iput-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->n:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    goto/16 :goto_0

    .line 164
    .end local v0    # "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->j:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->n:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .prologue
    const/16 v4, 0x8

    const/high16 v3, 0x42300000    # 44.0f

    const/4 v2, 0x0

    .line 33
    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1135
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->k:Landroid/content/Context;

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1136
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->k:Landroid/content/Context;

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1137
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->g:Landroid/view/View;

    sget v1, Legm$b;->focus_bg_white_oval_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1143
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1144
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1146
    sget-object v0, Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;->OVAL:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->n:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    if-eqz p1, :cond_0

    instance-of v1, p1, Legs;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 82
    check-cast v0, Legs;

    .line 1023
    .local v0, "floatingInfo":Legs;
    iget v1, v0, Legs;->a:I

    .line 83
    iput v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->l:I

    .line 1031
    iget-object v1, v0, Legs;->b:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->m:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->n:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    sget-object v2, Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;->RECTANGLE:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    if-ne v1, v2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->b()V

    .line 89
    .end local v0    # "floatingInfo":Legs;
    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 76
    sget v0, Legm$d;->layout_focus_float_view:I

    return v0
.end method

.method public onClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->n:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    sget-object v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;->RECTANGLE:Lcom/alibaba/android/projection/widget/ProjectionFloatView$FloatShowShape;

    if-ne v0, v1, :cond_0

    .line 181
    const-string/jumbo v0, "focus"

    sget-object v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->f:Ljava/lang/String;

    const-string/jumbo v2, "Click to enter prj home page"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "focus_floating_view_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->k:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/projection_home"

    new-instance v2, Lcom/alibaba/android/projection/widget/ProjectionFloatView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/widget/ProjectionFloatView$2;-><init>(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->e:J

    .line 194
    invoke-direct {p0}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->b()V

    goto :goto_0
.end method
