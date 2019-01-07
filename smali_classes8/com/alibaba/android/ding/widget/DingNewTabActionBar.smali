.class public Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
.super Landroid/widget/RelativeLayout;
.source "DingNewTabActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;,
        Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/RelativeLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;",
            "Lcom/alibaba/android/ding/widget/DingNewTabItemView;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbks;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lbkx;

.field private r:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

.field private s:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;

.field private t:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->k:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->o:Ljava/util/Map;

    .line 77
    new-instance v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$1;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->p:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$9;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->t:Lckm$a;

    .line 103
    new-instance v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$10;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->u:Lckm$a;

    .line 125
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a()V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->i:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->i:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    return-object p1
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Laxp$g;->ding_layout_ding_new_tab_actionbar:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 178
    .local v4, "view":Landroid/view/View;
    sget v5, Laxp$f;->ll_ding_tab:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    .line 179
    sget v5, Laxp$f;->tv_cancel_delete:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b:Landroid/widget/TextView;

    .line 180
    sget v5, Laxp$f;->tv_delete_all:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c:Landroid/widget/TextView;

    .line 181
    sget v5, Laxp$f;->rl_setting:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d:Landroid/widget/RelativeLayout;

    .line 182
    sget v5, Laxp$f;->rl_notify:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e:Landroid/widget/RelativeLayout;

    .line 183
    sget v5, Laxp$f;->tv_notify_count:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->g:Landroid/widget/TextView;

    .line 184
    sget v5, Laxp$f;->v_setting_red_dot:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->f:Landroid/view/View;

    .line 186
    const-string/jumbo v5, "sp_selected_current_tab_index"

    sget-object v6, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v6

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v3

    .line 187
    .local v3, "selectedTabIndex":I
    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->from(I)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 190
    new-instance v0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->p:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbks;

    .line 2020
    .local v1, "dingTabModel":Lbks;
    iget-object v5, v1, Lbks;->a:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 192
    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->setCurrentTabIndex(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V

    .line 2024
    iget v5, v1, Lbks;->b:I

    .line 2073
    iget-object v6, v0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 3020
    iget-object v6, v1, Lbks;->a:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 194
    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a(Z)V

    .line 195
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->o:Ljava/util/Map;

    .line 4020
    iget-object v6, v1, Lbks;->a:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 196
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v5, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;

    invoke-direct {v5, p0, v0, v1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$11;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Lcom/alibaba/android/ding/widget/DingNewTabItemView;Lbks;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 228
    .end local v0    # "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    .end local v1    # "dingTabModel":Lbks;
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b()V

    .line 230
    new-instance v5, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    iput-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->r:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

    .line 231
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->r:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

    .line 5012
    invoke-virtual {v5}, Lcmr;->d()V

    .line 5238
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$12;

    invoke-direct {v6, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$12;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5247
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c:Landroid/widget/TextView;

    new-instance v6, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$13;

    invoke-direct {v6, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$13;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5256
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;

    invoke-direct {v6, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5272
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->t:Lckm$a;

    invoke-virtual {v5, v6}, Lbbp;->a(Lckm$a;)V

    .line 5273
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->u:Lckm$a;

    invoke-virtual {v5, v6}, Lbbp;->c(Lckm$a;)V

    .line 235
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Landroid/app/Activity;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    .line 9538
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->i()Z

    move-result v0

    .line 9539
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DingNewTabActionBar] showAliMailTips isLoginSuccess="

    aput-object v2, v1, v5

    .line 9540
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, ", isSettingAliMailOpen="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 9539
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 9541
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 9545
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Z)V

    .line 9548
    if-nez p2, :cond_4

    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9549
    sget v0, Laxp$i;->dt_ding_login_ali_mail_tips:I

    .line 9557
    const-string/jumbo v1, "pref_key_calendar_ali_mail_not_login_tips"

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9558
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNewTabActionBar] showAliMailNotLoginTips aliMail_not_login=false."

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 10604
    :cond_1
    :goto_0
    return-void

    .line 9562
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-nez v1, :cond_3

    .line 9563
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Up:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    invoke-direct {v1, p1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 9566
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9570
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$3;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    .line 10122
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    .line 9577
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$4;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9551
    :cond_4
    sget v0, Laxp$i;->dt_ding_setting_open_ali_mail_tip:I

    .line 10602
    const-string/jumbo v1, "pref_key_calendar_setting_ali_mail_not_open_tips"

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10603
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNewTabActionBar] showSettingAliMailNotOpenTips setting_aliMail_not_open=false."

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 10607
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-nez v1, :cond_6

    .line 10608
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Up:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    invoke-direct {v1, p1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 10611
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10615
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$5;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    .line 11122
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    .line 10622
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->j:I

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->q:Lbkx;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->q:Lbkx;

    invoke-interface {v0}, Lbkx;->a()V

    .line 349
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    .line 8282
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 8286
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->j:I

    iget v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->i:I

    add-int/2addr v0, v1

    .line 8287
    if-gtz v0, :cond_1

    .line 8288
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 8290
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8291
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->g:Landroid/widget/TextView;

    invoke-static {v0}, Lbkh;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .prologue
    .line 52
    .line 8327
    if-eqz p1, :cond_0

    .line 8330
    sget-object v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$8;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 8336
    :cond_0
    :goto_0
    return-void

    .line 9206
    :pswitch_0
    const-string/jumbo v0, "ding_tab_calendar"

    invoke-static {v0}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 9210
    :pswitch_1
    const-string/jumbo v0, "ding_tab_ding"

    invoke-static {v0}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 9214
    :pswitch_2
    const-string/jumbo v0, "ding_tab_deadline"

    invoke-static {v0}, Lbjz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 8330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->j:I

    return v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 409
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->q:Lbkx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->q:Lbkx;

    invoke-interface {v0}, Lbkx;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5464
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Z)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 419
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNewTabActionBar] show ding focus and recycle tips close."

    aput-object v1, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_3
    const-string/jumbo v0, "pref_key_ding_new_tab_focus_and_recycle_tips"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-nez v0, :cond_4

    .line 428
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->q:Lbkx;

    invoke-interface {v1}, Lbkx;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Up:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    sget v3, Laxp$i;->dt_ding_setting_more_tips:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$15;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    .line 6122
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    .line 442
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$16;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->e(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 3
    .param p1, "saveSp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 661
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 662
    const-string/jumbo v0, "pref_key_calendar_ali_mail_not_login_tips"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 665
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNewTabActionBar] hideAliMailNotLoginTips"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 667
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    return-object v0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 480
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 485
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v1

    sget-object v2, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 6645
    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b(Z)V

    goto :goto_0

    .line 494
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 495
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[DingNewTabActionBar] show ali mail tips close."

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_3
    invoke-static {}, Lbju;->r()Z

    move-result v1

    if-nez v1, :cond_4

    .line 500
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[DingNewTabActionBar] showAliMailTips dingNewTab=false."

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_4
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->j()Z

    move-result v1

    if-nez v1, :cond_5

    .line 505
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[DingNewTabActionBar] showAliMailTips isAlibabaUserReadAliMailFolderEnable=false."

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_5
    const-string/jumbo v1, "pref_key_calendar_ali_mail_not_login_red_dot"

    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "pref_key_calendar_setting_ali_mail_not_open_red_dot"

    .line 510
    invoke-static {v1, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 511
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "[DingNewTabActionBar] showAliMailTips not login && setting not open redDot=false "

    aput-object v2, v1, v4

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :cond_6
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v2

    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$2;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Landroid/app/Activity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v3, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method private d(Z)V
    .locals 3
    .param p1, "saveSp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 675
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 676
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 679
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNewTabActionBar] hideSettingAliMailNotOpenTips"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 681
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e(Z)V
    .locals 11
    .param p1, "isLoginSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 712
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v9

    const-string/jumbo v10, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v9, v10, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 713
    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v9, "[DingNewTabActionBar] show ali mail red dot close."

    aput-object v9, v6, v7

    invoke-static {v6}, Lbkd;->a([Ljava/lang/String;)V

    .line 714
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->f:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 737
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->i()Z

    move-result v4

    .line 719
    .local v4, "isSettingAliMailOpen":Z
    const-string/jumbo v9, "pref_key_calendar_ali_mail_not_login_red_dot"

    invoke-static {v9, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 720
    .local v2, "isFistLoginRedDot":Z
    const-string/jumbo v9, "pref_key_calendar_setting_ali_mail_not_open_red_dot"

    invoke-static {v9, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 721
    .local v1, "isFirstSettingAliMailRedDot":Z
    iget-object v9, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v9

    sget-object v10, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v10}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_3

    move v3, v6

    .line 722
    .local v3, "isScheduleTab":Z
    :goto_1
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->j()Z

    move-result v0

    .line 725
    .local v0, "isAlibabaUserReadAliMailFolderEnable":Z
    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    :cond_1
    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    move v5, v6

    .line 727
    .local v5, "isShowRedDot":Z
    :goto_2
    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "[DingNewTabActionBar] refreshAliMailRedDot isShowRedDot="

    aput-object v10, v9, v7

    .line 728
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x2

    const-string/jumbo v10, ",isLoginSuccess="

    aput-object v10, v9, v6

    const/4 v6, 0x3

    .line 729
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x4

    const-string/jumbo v10, ", isFistLoginRedDot="

    aput-object v10, v9, v6

    const/4 v6, 0x5

    .line 730
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x6

    const-string/jumbo v10, ", isSettingAliMailOpen="

    aput-object v10, v9, v6

    const/4 v6, 0x7

    .line 731
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const-string/jumbo v6, ", isFirstSettingAliMailRedDot="

    aput-object v6, v9, v8

    const/16 v6, 0x9

    .line 732
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/16 v6, 0xa

    const-string/jumbo v10, ", isScheduleTab="

    aput-object v10, v9, v6

    const/16 v6, 0xb

    .line 733
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/16 v6, 0xc

    const-string/jumbo v10, "\uff0c isAliisAlibabaUserReadAliMailFolderEnablebabaUser="

    aput-object v10, v9, v6

    const/16 v6, 0xd

    .line 734
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 727
    invoke-static {v9}, Lbkd;->a([Ljava/lang/String;)V

    .line 736
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->f:Landroid/view/View;

    if-eqz v5, :cond_5

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "isAlibabaUserReadAliMailFolderEnable":Z
    .end local v3    # "isScheduleTab":Z
    .end local v5    # "isShowRedDot":Z
    :cond_3
    move v3, v7

    .line 721
    goto/16 :goto_1

    .restart local v0    # "isAlibabaUserReadAliMailFolderEnable":Z
    .restart local v3    # "isScheduleTab":Z
    :cond_4
    move v5, v7

    .line 725
    goto :goto_2

    .restart local v5    # "isShowRedDot":Z
    :cond_5
    move v7, v8

    .line 736
    goto :goto_3
.end method

.method static synthetic f(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->s:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->n:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)V
    .locals 4
    .param p1, "tabIndex"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 305
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-static {}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->values()[Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-eq p1, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    if-eqz v2, :cond_2

    .line 312
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    .line 313
    .local v1, "oldDingTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a(Z)V

    .line 316
    .end local v1    # "oldDingTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    if-eqz v2, :cond_3

    .line 317
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    .line 318
    .local v0, "newDingTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->a(Z)V

    .line 320
    .end local v0    # "newDingTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    :cond_3
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 321
    const-string/jumbo v2, "sp_selected_current_tab_index"

    invoke-virtual {p1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;I)V

    .line 322
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "saveSp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 469
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->l:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->dismiss()V

    .line 473
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v0

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 474
    const-string/jumbo v0, "pref_key_ding_new_tab_focus_and_recycle_tips"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 476
    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 3
    .param p1, "saveSp"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c(Z)V

    .line 650
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d(Z)V

    .line 6685
    new-instance v1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$7;-><init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V

    .line 6703
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 6704
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 6707
    :goto_0
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;->a(Lcom/alibaba/wukong/Callback;)V

    .line 653
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentDingNewTabIndex()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->h:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    return-object v0
.end method

.method public getTotalUnReadCount()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->j:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->r:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->r:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->c()V

    .line 134
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->r:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->r:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;

    .line 1016
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmq;->b(Lcmq$a;)V

    .line 1277
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->t:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->b(Lckm$a;)V

    .line 1278
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->u:Lckm$a;

    invoke-virtual {v0, v1}, Lbbp;->d(Lckm$a;)V

    .line 143
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 144
    return-void
.end method

.method public setNewTabActionbarListener(Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;)V
    .locals 0
    .param p1, "newTabActionbarListener"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->s:Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;

    .line 152
    return-void
.end method

.method public setOnTabItemChangedListener(Lbkx;)V
    .locals 0
    .param p1, "onTabItemChangedListener"    # Lbkx;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->q:Lbkx;

    .line 148
    return-void
.end method

.method public setShown(Z)V
    .locals 4
    .param p1, "shown"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 740
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingNewTabActionBar] refreshAliMailRedDot setShown="

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 741
    iput-boolean p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->k:Z

    .line 743
    if-eqz p1, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c()V

    .line 745
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d()V

    .line 750
    :goto_0
    return-void

    .line 7464
    :cond_0
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Z)V

    .line 7645
    invoke-virtual {p0, v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->b(Z)V

    goto :goto_0
.end method
