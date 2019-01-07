.class final Laun$32;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 195
    iput-object p1, p0, Laun$32;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 198
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 1077
    iget-object v4, v4, Laun;->a:Landroid/app/Activity;

    .line 198
    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 2077
    iget-object v4, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 202
    if-eqz v4, :cond_2

    iget-object v4, p0, Laun$32;->a:Laun;

    .line 3077
    iget-object v4, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 202
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v4, v5, v9}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 207
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDrawerContainer] calendar recycle and focus tips close."

    aput-object v5, v4, v6

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_3
    const-string/jumbo v4, "pref_key_calendar_recycle_and_focus_hint"

    invoke-static {v4, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDrawerContainer] calendar recycle and focus tips. calendar_recycle_and_focus_hint=true"

    aput-object v5, v4, v6

    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_4
    iget-object v4, p0, Laun$32;->a:Laun;

    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    iget-object v6, p0, Laun$32;->a:Laun;

    .line 4077
    iget-object v6, v6, Laun;->a:Landroid/app/Activity;

    .line 216
    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;->Down:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;

    sget v8, Laow$f;->dt_ding_setting_more_tips:I

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$hintDirection;I)V

    .line 5077
    iput-object v5, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 217
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 6077
    iget-object v4, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 217
    invoke-virtual {v4, v9}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->setOutsideTouchable(Z)V

    .line 218
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 7077
    iget-object v4, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 218
    new-instance v5, Laun$32$1;

    invoke-direct {v5, p0}, Laun$32$1;-><init>(Laun$32;)V

    .line 7122
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips$a;

    .line 230
    invoke-static {}, Lcms;->c()Z

    move-result v4

    if-nez v4, :cond_5

    .line 231
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 8077
    iget-object v4, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 231
    sget v5, Laow$b;->ding_calendar_popup_max_width:I

    invoke-static {v5}, Leda;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(I)V

    .line 234
    :cond_5
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 9077
    iget-object v4, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 234
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->getHeight()I

    move-result v3

    .line 235
    .local v3, "popupHeight":I
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 10077
    iget-object v4, v4, Laun;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 235
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getMeasuredWidth()I

    move-result v0

    .line 236
    .local v0, "ifTvWidth":I
    div-int/lit8 v4, v0, 0x2

    neg-int v1, v4

    .line 237
    .local v1, "offsetX":I
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 11077
    iget-object v4, v4, Laun;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 237
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    neg-int v2, v4

    .line 238
    .local v2, "offsetY":I
    iget-object v4, p0, Laun$32;->a:Laun;

    .line 12077
    iget-object v4, v4, Laun;->m:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    .line 238
    iget-object v5, p0, Laun$32;->a:Laun;

    .line 13077
    iget-object v5, v5, Laun;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 238
    invoke-virtual {v4, v5, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Landroid/view/View;II)V

    goto/16 :goto_0
.end method
