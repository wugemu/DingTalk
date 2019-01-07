.class public final Leeq;
.super Ljava/lang/Object;
.source "OAManagerHeaderDelegate.java"


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:Landroid/view/View;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Leeq;->b:Landroid/view/View;

    .line 50
    iput-object v2, p0, Leeq;->k:Landroid/view/View;

    .line 51
    iput-object v2, p0, Leeq;->l:Landroid/view/View;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Leeq;->j:Z

    .line 69
    iput-object p1, p0, Leeq;->a:Landroid/app/Activity;

    .line 1074
    iget-object v0, p0, Leeq;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Leeq;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ledz$g;->oa_manage_header:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leeq;->b:Landroid/view/View;

    .line 1076
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->ll_oa_manage_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leeq;->l:Landroid/view/View;

    .line 1077
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_header_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leeq;->k:Landroid/view/View;

    .line 1078
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_header_time_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Leeq;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1079
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_header_time_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leeq;->n:Landroid/widget/TextView;

    .line 1081
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_header_add_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leeq;->g:Landroid/widget/TextView;

    .line 1083
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_bubble_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leeq;->c:Landroid/widget/ImageView;

    .line 1084
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_bubble_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leeq;->d:Landroid/widget/TextView;

    .line 1085
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_bubble_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leeq;->e:Landroid/view/View;

    .line 1087
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_header_manage_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leeq;->f:Landroid/widget/TextView;

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5
    .param p1, "visibility"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Leeq;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p1, :cond_4

    .line 101
    iget-object v0, p0, Leeq;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_header_border:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1113
    iget-object v0, p0, Leeq;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1115
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1116
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    if-ge v0, v4, :cond_2

    .line 1117
    iget-object v0, p0, Leeq;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Ledz$h;->icon_goodmorning:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1118
    iget-object v0, p0, Leeq;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ledz$c;->ui_common_warming_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1119
    iget-object v0, p0, Leeq;->n:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Ledz$h;->dt_work_manage_good_morning:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1120
    :cond_2
    if-lt v0, v4, :cond_3

    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    .line 1121
    iget-object v0, p0, Leeq;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Ledz$h;->icon_goodmorning:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1122
    iget-object v0, p0, Leeq;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ledz$c;->ui_common_warming_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1123
    iget-object v0, p0, Leeq;->n:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Ledz$h;->dt_work_manage_good_afternoon:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1125
    :cond_3
    iget-object v0, p0, Leeq;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Ledz$h;->icon_goodnight:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1126
    iget-object v0, p0, Leeq;->n:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Ledz$h;->dt_work_manage_good_evening:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Leeq;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    sget v1, Ledz$f;->oa_manage_header_border:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Leeq;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0
.end method
