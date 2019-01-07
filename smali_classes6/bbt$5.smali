.class final Lbbt$5;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbt;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:J

.field final synthetic c:Lckm$a;

.field final synthetic d:Lckm$a;

.field final synthetic e:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLckm$a;Lckm$a;)V
    .locals 1
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 112
    iput-object p1, p0, Lbbt$5;->e:Lbbt;

    iput-object p2, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-wide p3, p0, Lbbt$5;->b:J

    iput-object p5, p0, Lbbt$5;->c:Lckm$a;

    iput-object p6, p0, Lbbt$5;->d:Lckm$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 116
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v2

    iget-object v3, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-wide v4, p0, Lbbt$5;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lbbr;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "DingFloatWindowCenter shouldHideNewDingPopupWindow match middle, dingId="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    iget-object v2, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    .line 131
    :cond_1
    :goto_1
    new-instance v0, Lcjs$a;

    const/4 v2, 0x2

    iget-object v3, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 132
    .local v0, "builder":Lcjs$a;
    new-instance v2, Lbbt$5$1;

    invoke-direct {v2, p0}, Lbbt$5$1;-><init>(Lbbt$5;)V

    .line 1081
    iput-object v2, v0, Lcjs$a;->a:Lcjs$b;

    .line 164
    iget-object v3, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2064
    if-nez v3, :cond_5

    .line 2065
    const/4 v2, 0x0

    .line 16086
    :cond_2
    :goto_2
    iput-object v2, v0, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 166
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    invoke-virtual {v0}, Lcjs$a;->a()Lcjs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcjq;->a(Lcjs;)V

    goto :goto_0

    .line 125
    .end local v0    # "builder":Lcjs$a;
    :cond_3
    iget-object v2, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v2, p0, Lbbt$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    goto :goto_1

    .line 2068
    .restart local v0    # "builder":Lcjs$a;
    :cond_5
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 2070
    invoke-static {v2, v3}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2844
    if-eqz v3, :cond_7

    .line 2847
    new-instance v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 2848
    invoke-static {v4}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v5

    .line 3043
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 2853
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2854
    new-instance v6, Landroid/text/SpannableString;

    invoke-static {v3}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3131
    iput-object v6, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 2856
    invoke-static {v3}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2857
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 2858
    new-instance v6, Landroid/text/SpannableString;

    sget v7, Laxp$i;->dt_ding_item_deadline_normal_fmt:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3139
    iput-object v6, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 2871
    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v6

    .line 2872
    new-instance v5, Lcrm;

    invoke-direct {v5}, Lcrm;-><init>()V

    .line 5123
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 2874
    new-instance v8, Lbkv$15;

    invoke-direct {v8, v6, v7}, Lbkv$15;-><init>(J)V

    .line 6040
    iput-object v8, v5, Lcrm;->c:Lcrl;

    .line 2903
    new-instance v5, Lbkv$16;

    invoke-direct {v5, v3}, Lbkv$16;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 6155
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 2074
    :cond_7
    invoke-static {v3}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6536
    if-eqz v3, :cond_2

    invoke-static {v3}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6539
    invoke-static {v3}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 6540
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2860
    :cond_8
    invoke-static {v3}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2861
    new-instance v6, Landroid/text/SpannableString;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    sget v9, Laxp$i;->dt_ding_meeting_time_prefix:I

    .line 2862
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 2863
    invoke-static {v3}, Lbkh;->I(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v10

    invoke-static {v3}, Lbkh;->J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2861
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4139
    iput-object v6, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 2864
    invoke-static {v3}, Lbkh;->K(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v6

    .line 2865
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2866
    new-instance v7, Landroid/text/SpannableString;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    sget v10, Laxp$i;->dt_ding_meeting_location_prefix:I

    .line 2867
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    .line 2866
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4147
    iput-object v7, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    goto/16 :goto_3

    .line 6543
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 6544
    new-instance v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 6545
    invoke-static {v5}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v6

    .line 7051
    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 6546
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7168
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 6549
    new-instance v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 6550
    new-instance v7, Landroid/text/SpannableString;

    sget v8, Laxp$i;->dt_ding_meeting_accept:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7191
    iput-object v7, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 6551
    sget-object v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 7207
    iput-object v7, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 6552
    new-instance v7, Lbkv$3;

    invoke-direct {v7, v3}, Lbkv$3;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 8199
    iput-object v7, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 6560
    new-instance v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 6561
    new-instance v8, Landroid/text/SpannableString;

    sget v9, Laxp$i;->dt_ding_refuse:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9191
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 6562
    sget-object v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 9207
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 6563
    new-instance v8, Lbkv$4;

    const/4 v9, 0x2

    invoke-direct {v8, v3, v9}, Lbkv$4;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    .line 10199
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 6571
    new-instance v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 6572
    sget-object v9, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 10207
    iput-object v9, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 6573
    new-instance v9, Landroid/text/SpannableString;

    sget v10, Laxp$i;->dt_ding_noticeview_later:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11191
    iput-object v9, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 6574
    new-instance v4, Lbkv$5;

    invoke-direct {v4, v3}, Lbkv$5;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 11199
    iput-object v4, v8, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 6602
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6603
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6604
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 11768
    :cond_a
    if-eqz v3, :cond_2

    .line 11771
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 11772
    new-instance v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 11773
    invoke-static {v5}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v6

    .line 12051
    iput-object v6, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 11774
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12168
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 11777
    new-instance v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 11778
    new-instance v7, Landroid/text/SpannableString;

    sget v8, Laxp$i;->dt_ding_noticeview_confirm:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12191
    iput-object v7, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 11779
    sget-object v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 12207
    iput-object v7, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 11780
    new-instance v7, Lbkv$13;

    invoke-direct {v7, v3}, Lbkv$13;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 13199
    iput-object v7, v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 11808
    new-instance v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 11809
    new-instance v8, Landroid/text/SpannableString;

    sget v9, Laxp$i;->dt_ding_noticeview_later:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14191
    iput-object v8, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 11810
    sget-object v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 14207
    iput-object v4, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 11811
    new-instance v4, Lbkv$14;

    invoke-direct {v4, v3}, Lbkv$14;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 15199
    iput-object v4, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 11839
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11840
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
