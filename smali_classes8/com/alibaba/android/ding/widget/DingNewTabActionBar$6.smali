.class final Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;
.super Ljava/lang/Object;
.source "DingNewTabActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 626
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->k(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 627
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "[DingNewTabActonBar] showSettingAliMailNotOpenTips  mIsShown="

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->k(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->o(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    move-result-object v2

    sget v3, Laxp$d;->ding_popup_max_width:I

    invoke-static {v3}, Leda;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(I)V

    .line 633
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->o(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    add-int v1, v2, v3

    .line 634
    .local v1, "offsetX":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DingNewTabActonBar] showSettingAliMailNotOpenTips offsetX="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->o(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$6;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->m(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Landroid/widget/RelativeLayout;

    move-result-object v3

    neg-int v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    .end local v1    # "offsetX":I
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "[DingNewTabActonBar] showSettingAliMailNotOpenTips e="

    aput-object v3, v2, v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0
.end method
