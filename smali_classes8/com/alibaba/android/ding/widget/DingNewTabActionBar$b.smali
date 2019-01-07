.class final Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;
.super Lcmr;
.source "DingNewTabActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 1

    .prologue
    .line 359
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-direct {p0}, Lcmr;-><init>()V

    .line 360
    sget v0, Laxp$f;->tv_cancel_delete:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->b:Landroid/widget/TextView;

    .line 361
    sget v0, Laxp$f;->tv_delete_all:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->c:Landroid/widget/TextView;

    .line 362
    sget v0, Laxp$f;->setting_icon:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->d:Landroid/widget/TextView;

    .line 363
    sget v0, Laxp$f;->icon_notify:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->e:Landroid/widget/TextView;

    .line 364
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;)Z
    .locals 8
    .param p1, "customThemeObject"    # Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 370
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v4, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    if-eqz v4, :cond_0

    .line 371
    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v0, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->titleColorValue:I

    .line 377
    .local v0, "color":I
    :goto_0
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v4, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->defaultTabTextColorValue:I

    if-eqz v4, :cond_1

    .line 378
    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v1, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->defaultTabTextColorValue:I

    .line 385
    .local v1, "defaultTextColor":I
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->j(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 386
    .local v3, "itemViewValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingNewTabItemView;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 387
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/widget/DingNewTabItemView;

    .line 388
    .local v2, "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->setIndicatorColor(I)V

    .line 389
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->setDefaultTextColor(I)V

    .line 390
    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->getCurrentTabIndex()Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v7}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->d(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    move-result-object v7

    if-ne v4, v7, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Lcom/alibaba/android/ding/widget/DingNewTabItemView;->setSelectedState(Z)V

    goto :goto_2

    .line 373
    .end local v0    # "color":I
    .end local v1    # "defaultTextColor":I
    .end local v2    # "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    .end local v3    # "itemViewValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingNewTabItemView;>;"
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Laxp$c;->ui_common_level2_button_pressed_bg_color:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 379
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v4, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColorValue:I

    if-eqz v4, :cond_2

    .line 380
    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject;->navigationBar:Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;

    iget v1, v4, Lcom/alibaba/android/dingtalkbase/themes/CustomThemeObject$NavigationBar;->textColorValue:I

    .restart local v1    # "defaultTextColor":I
    goto :goto_1

    .line 382
    .end local v1    # "defaultTextColor":I
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Laxp$c;->ui_common_level1_text_color:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .restart local v1    # "defaultTextColor":I
    goto :goto_1

    .line 390
    .restart local v2    # "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    .restart local v3    # "itemViewValues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingNewTabItemView;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 394
    .end local v2    # "dingNewTabItemView":Lcom/alibaba/android/ding/widget/DingNewTabItemView;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$b;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    return v5
.end method
