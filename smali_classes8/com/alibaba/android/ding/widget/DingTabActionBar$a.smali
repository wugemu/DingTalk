.class final Lcom/alibaba/android/ding/widget/DingTabActionBar$a;
.super Lcmr;
.source "DingTabActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingTabActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/DingTabActionBar;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-direct {p0}, Lcmr;-><init>()V

    .line 96
    sget v0, Laxp$f;->tv_title:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->b:Landroid/widget/TextView;

    .line 97
    sget v0, Laxp$f;->tv_date:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->c:Landroid/widget/TextView;

    .line 98
    sget v0, Laxp$f;->iv_date_arrow:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->d:Landroid/widget/TextView;

    .line 99
    sget v0, Laxp$f;->tv_cancel_delete:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->e:Landroid/widget/TextView;

    .line 100
    sget v0, Laxp$f;->iv_clear:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->f:Landroid/widget/TextView;

    .line 101
    sget v0, Laxp$f;->tv_delete_all:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->g:Landroid/widget/TextView;

    .line 102
    sget v0, Laxp$f;->iv_calendar_mode:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->h:Landroid/widget/TextView;

    .line 103
    sget v0, Laxp$f;->setting_icon:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->i:Landroid/widget/TextView;

    .line 104
    sget v0, Laxp$f;->iv_search:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->j:Landroid/widget/TextView;

    .line 105
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z
    .locals 3
    .param p1, "customThemeObject"    # Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v0, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    .line 115
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColorValue:I

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v0, v1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColorValue:I

    .line 122
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    const/4 v1, 0x1

    return v1

    .line 113
    .end local v0    # "color":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->a:Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$c;->ui_common_level2_button_pressed_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method
