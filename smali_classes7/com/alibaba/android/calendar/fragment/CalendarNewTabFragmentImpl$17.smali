.class final Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;
.super Ljava/lang/Object;
.source "CalendarNewTabFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-static {}, Lavh;->c()V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->e(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->f(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laun;

    move-result-object v0

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    new-instance v3, Laun;

    iget-object v4, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v4}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v5}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->f(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Laun;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    invoke-static {v0, v3}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->a(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;Laun;)Laun;

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laun;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17$1;-><init>(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;)V

    .line 2100
    iput-object v3, v0, Laun;->x:Laup;

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->g(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Laun;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->h(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)I

    move-result v4

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl$17;->a:Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;->i(Lcom/alibaba/android/calendar/fragment/CalendarNewTabFragmentImpl;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 2931
    :goto_1
    iget-object v5, v3, Laun;->b:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 2935
    iget-object v5, v3, Laun;->w:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_3

    iget-object v5, v3, Laun;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2939
    :cond_3
    iget-object v5, v3, Laun;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2940
    iget-object v5, v3, Laun;->b:Landroid/widget/FrameLayout;

    iget-object v6, v3, Laun;->c:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2943
    :cond_4
    iput-boolean v0, v3, Laun;->z:Z

    .line 2967
    iget-boolean v0, v3, Laun;->z:Z

    if-eqz v0, :cond_10

    .line 2969
    iget-object v0, v3, Laun;->d:Landroid/widget/TextView;

    sget v5, Laow$f;->dt_ding_calendar_setting_title:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2970
    iget-object v0, v3, Laun;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2971
    iget-object v0, v3, Laun;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2972
    iget-object v0, v3, Laun;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2974
    iget-object v0, v3, Laun;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2975
    iget-object v0, v3, Laun;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3012
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v5, "f_ding_calendar_share_tips_enable"

    invoke-virtual {v0, v5, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3013
    iget-object v0, v3, Laun;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3014
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDrawerContainer] show more setting redDot close."

    aput-object v5, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 3040
    :goto_2
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 3041
    const-string/jumbo v5, "pref_key_calendar_current_language"

    invoke-static {v5, v0}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3042
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "[CalendarDrawContainer]reloadData currentLanguage="

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    const-string/jumbo v7, ", preLoadRpcLanguage="

    aput-object v7, v6, v8

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-static {v6}, Lavy;->a([Ljava/lang/String;)V

    .line 3043
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3044
    iput-boolean v1, v3, Laun;->A:Z

    .line 3045
    iget-object v0, v3, Laun;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2979
    :cond_5
    invoke-virtual {v3}, Laun;->a()V

    .line 2981
    const-string/jumbo v0, "pref_key_calendar_shared_calendar_hint"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "pref_key_calendar_ali_mail_not_login_tips_2"

    .line 2982
    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips_2"

    .line 2983
    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2984
    :cond_6
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v5, v3, Laun;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2985
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v5, v3, Laun;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v10, v11}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3050
    :cond_7
    :goto_3
    if-nez v4, :cond_11

    .line 3051
    invoke-virtual {v3, v2}, Laun;->a(Z)V

    .line 2947
    :goto_4
    iget-object v0, v3, Laun;->b:Landroid/widget/FrameLayout;

    iget-object v5, v3, Laun;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2948
    iget-object v0, v3, Laun;->w:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_8

    .line 2949
    iget-object v0, v3, Laun;->p:Landroid/widget/LinearLayout;

    const-string/jumbo v5, "translationX"

    new-array v6, v8, [F

    iget v7, v3, Laun;->y:I

    int-to-float v7, v7

    aput v7, v6, v2

    const/4 v7, 0x0

    aput v7, v6, v1

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2950
    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2951
    iput-object v0, v3, Laun;->w:Landroid/animation/ObjectAnimator;

    .line 2953
    :cond_8
    iget-object v0, v3, Laun;->w:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2955
    iget-object v0, v3, Laun;->a:Landroid/app/Activity;

    invoke-static {v0}, Lawd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2956
    iget-object v0, v3, Laun;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2959
    :cond_9
    if-nez v4, :cond_0

    .line 2961
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] sync calendar folders."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 2962
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    invoke-virtual {v0}, Latf;->d()V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 293
    goto/16 :goto_1

    .line 3018
    :cond_b
    invoke-static {}, Lavq;->p()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3019
    iget-object v0, v3, Laun;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3020
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDrawerContainer] show more setting redDot close, is not alibaba user."

    aput-object v5, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3024
    :cond_c
    invoke-static {}, Lavi;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3025
    iget-object v0, v3, Laun;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3026
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDrawerContainer] refreshMoreSettingRedDotViewStatus toggleMail open."

    aput-object v5, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3030
    :cond_d
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_red_dot"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3031
    iget-object v0, v3, Laun;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3032
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDrawerContainer] refreshMoreSettingRedDotViewStatus setting_mail_not_open_red_dot=false"

    aput-object v5, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3036
    :cond_e
    iget-object v0, v3, Laun;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2987
    :cond_f
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v5, "[CalendarDrawerContainer] calendar tips is show over."

    aput-object v5, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2992
    :cond_10
    iget-object v0, v3, Laun;->d:Landroid/widget/TextView;

    sget v5, Laow$f;->dt_ding_calendar_setting_ding_title:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2993
    iget-object v0, v3, Laun;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2994
    iget-object v0, v3, Laun;->f:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2995
    iget-object v0, v3, Laun;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2997
    iget-object v0, v3, Laun;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2998
    iget-object v0, v3, Laun;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2999
    iget-object v0, v3, Laun;->j:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Laun;->a(Ljava/util/List;)V

    .line 3003
    const-string/jumbo v0, "pref_key_calendar_recycle_and_focus_hint"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3004
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v5, v3, Laun;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3005
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v5, v3, Laun;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v10, v11}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 3053
    :cond_11
    invoke-virtual {v3, v1}, Laun;->a(Z)V

    goto/16 :goto_4
.end method
