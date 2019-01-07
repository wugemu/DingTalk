.class public Lcom/alibaba/android/ding/widget/RemindTypeSelector;
.super Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;
.source "RemindTypeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Lazb;

.field private o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->k:Z

    .line 61
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->k:Z

    .line 61
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->k:Z

    .line 61
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->k:Z

    .line 61
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 81
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b()V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/RemindTypeSelector;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    .prologue
    .line 36
    .line 2247
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_ding&questionId=201602050549"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, -0x2

    .line 213
    .line 1219
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_remind_type_selector:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1220
    invoke-virtual {p0, v1, v3, v3}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->addView(Landroid/view/View;II)V

    .line 1221
    sget v0, Laxp$f;->tv_remind_type_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->e:Landroid/widget/TextView;

    .line 1222
    sget v0, Laxp$f;->ll_remind_type:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a:Landroid/widget/LinearLayout;

    .line 1223
    sget v0, Laxp$f;->tv_remind_type_app:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    .line 1224
    sget v0, Laxp$f;->tv_remind_type_call:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    .line 1225
    sget v0, Laxp$f;->tv_remind_type_sms:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    .line 1226
    sget v0, Laxp$f;->tv_remind_type_no_remind:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    .line 1227
    sget v0, Laxp$f;->v_split:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->d:Landroid/view/View;

    .line 1228
    sget v0, Laxp$f;->layout_quota_not_enough:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->h:Landroid/widget/RelativeLayout;

    .line 1229
    sget v0, Laxp$f;->tv_quota_not_enough_tip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->i:Landroid/widget/TextView;

    .line 1230
    sget v0, Laxp$f;->tv_quota_not_enough_more:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->j:Landroid/widget/TextView;

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/widget/RemindTypeSelector$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector$1;-><init>(Lcom/alibaba/android/ding/widget/RemindTypeSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1251
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 1252
    const-string/jumbo v2, "pref_key_request_support_call_time"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1253
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[RemindTypeSelector] checkIfSupportCall is not more than one day"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1254
    :goto_0
    return-void

    .line 1256
    :cond_0
    const-string/jumbo v2, "pref_key_request_support_call_time"

    invoke-static {v2, v0, v1}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1258
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/widget/RemindTypeSelector$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector$2;-><init>(Lcom/alibaba/android/ding/widget/RemindTypeSelector;)V

    .line 2187
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$10;

    invoke-direct {v3, v0, v1}, Lbbp$10;-><init>(Lbbp;Lcma;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->e()Lazb;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->n:Lazb;

    .line 120
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->n:Lazb;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->n:Lazb;

    iget-boolean v4, v4, Lazb;->f:Z

    if-eqz v4, :cond_1

    move v0, v2

    .line 121
    .local v0, "onlyCanDingByApp":Z
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->n:Lazb;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->n:Lazb;

    iget v1, v4, Lazb;->b:I

    .line 123
    .local v1, "remainNumByOrg":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->e:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->l:Z

    if-nez v4, :cond_3

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    iget-boolean v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->l:Z

    if-eqz v4, :cond_4

    .line 125
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 127
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 128
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 129
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 148
    :goto_3
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 149
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 150
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 151
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 153
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    :goto_4
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    :goto_5
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    :goto_7
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v4, v6, :cond_b

    .line 159
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Laxp$c;->ui_common_cell_bg_color:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 171
    :cond_0
    :goto_8
    const-string/jumbo v4, "pref_key_is_support_call"

    invoke-static {v4, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->k:Z

    .line 172
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v2, v4, :cond_e

    iget-boolean v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->k:Z

    if-nez v2, :cond_e

    .line 173
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->i:Landroid/widget/TextView;

    sget v3, Laxp$i;->dt_ding_phone_call_not_support_by_area_tip:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_9
    return-void

    .end local v0    # "onlyCanDingByApp":Z
    .end local v1    # "remainNumByOrg":I
    :cond_1
    move v0, v3

    .line 120
    goto/16 :goto_0

    .restart local v0    # "onlyCanDingByApp":Z
    :cond_2
    move v1, v3

    .line 121
    goto/16 :goto_1

    .restart local v1    # "remainNumByOrg":I
    :cond_3
    move v4, v3

    .line 123
    goto/16 :goto_2

    .line 131
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 132
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 134
    if-eqz v0, :cond_5

    .line 135
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 136
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 137
    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto/16 :goto_3

    .line 138
    :cond_5
    iget v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->m:I

    if-le v4, v1, :cond_6

    .line 139
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 140
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 141
    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto/16 :goto_3

    .line 143
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 144
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3

    .line 153
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_disabled_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    goto/16 :goto_4

    .line 154
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_disabled_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    goto/16 :goto_5

    .line 155
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_disabled_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    goto/16 :goto_6

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Laxp$c;->ui_common_theme_text_disabled_color:I

    invoke-static {v4, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v4

    goto/16 :goto_7

    .line 161
    :cond_b
    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v4, v6, :cond_c

    .line 162
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Laxp$c;->ui_common_cell_bg_color:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_8

    .line 164
    :cond_c
    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v4, v6, :cond_d

    .line 165
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Laxp$c;->ui_common_cell_bg_color:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_8

    .line 167
    :cond_d
    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->NO_REMIND:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    if-ne v4, v6, :cond_0

    .line 168
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Laxp$c;->ui_common_cell_bg_color:I

    invoke-static {v6, v7}, Ldp;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_8

    .line 177
    :cond_e
    if-eqz v0, :cond_10

    .line 178
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->i:Landroid/widget/TextView;

    sget v4, Laxp$i;->dt_ding_create_no_sms_or_call_right:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->j:Landroid/widget/TextView;

    invoke-static {}, Lcms;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_f
    move v3, v5

    goto :goto_a

    .line 182
    :cond_10
    iget v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->m:I

    if-le v2, v1, :cond_12

    .line 183
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->i:Landroid/widget/TextView;

    sget v4, Laxp$i;->dt_ding_enterprise_quota_not_enough_tip:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->j:Landroid/widget/TextView;

    invoke-static {}, Lcms;->c()Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_11
    move v3, v5

    goto :goto_b

    .line 188
    :cond_12
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public final a(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 207
    if-lez p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public getRemindType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->tv_remind_type_app:I

    if-ne v0, v1, :cond_1

    .line 87
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->tv_remind_type_call:I

    if-ne v0, v1, :cond_2

    .line 90
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->CALL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->tv_remind_type_sms:I

    if-ne v0, v1, :cond_3

    .line 93
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->SMS:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxp$f;->tv_remind_type_no_remind:I

    if-ne v0, v1, :cond_0

    .line 96
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->NO_REMIND:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    goto :goto_0
.end method

.method public setIsDisable(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->l:Z

    .line 104
    return-void
.end method

.method public setRemindType(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)V
    .locals 0
    .param p1, "remindType"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->o:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    goto :goto_0
.end method

.method public setSelectedNum(I)V
    .locals 0
    .param p1, "selectedNum"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->m:I

    .line 109
    return-void
.end method
