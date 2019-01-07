.class final Lbbu$6;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "DingPopWindowCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V
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

.field final synthetic e:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLckm$a;Lckm$a;)V
    .locals 1
    .param p1, "this$0"    # Lbbu;

    .prologue
    .line 119
    iput-object p1, p0, Lbbu$6;->e:Lbbu;

    iput-object p2, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-wide p3, p0, Lbbu$6;->b:J

    iput-object p5, p0, Lbbu$6;->c:Lckm$a;

    iput-object p6, p0, Lbbu$6;->d:Lckm$a;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 140
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbbu$6;->c:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q(Lckm$a;)V

    .line 141
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v2, p0, Lbbu$6;->d:Lckm$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o(Lckm$a;)V

    .line 143
    instance-of v1, p2, Lcrn;

    if-nez v1, :cond_0

    .line 144
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2, p1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .line 147
    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    new-instance v1, Lbbu$6$1;

    invoke-direct {v1, p0}, Lbbu$6$1;-><init>(Lbbu$6;)V

    invoke-virtual {p2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    move-object v1, p2

    .line 155
    check-cast v1, Lcrn;

    .line 2028
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcri;->b:Z

    .line 156
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p2

    .line 157
    check-cast v1, Lcrn;

    const/4 v2, 0x3

    .line 2108
    iput v2, v1, Lcrn;->c:I

    .line 164
    :cond_1
    :goto_0
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 5054
    if-eqz p1, :cond_2

    if-nez v1, :cond_7

    .line 5055
    :cond_2
    const/4 v0, 0x0

    .local v0, "popupDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    :cond_3
    :goto_1
    move-object v1, p2

    .line 165
    check-cast v1, Lcrn;

    invoke-virtual {v1, v0}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 166
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 167
    const/4 v1, 0x0

    invoke-static {v1}, Lbjz;->c(Z)V

    .line 174
    :cond_4
    :goto_2
    return-object p2

    .line 158
    .end local v0    # "popupDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    :cond_5
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p2

    .line 159
    check-cast v1, Lcrn;

    const/4 v2, 0x1

    .line 3108
    iput v2, v1, Lcrn;->c:I

    goto :goto_0

    .line 160
    :cond_6
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 161
    check-cast v1, Lcrn;

    const/4 v2, 0x1

    .line 4108
    iput v2, v1, Lcrn;->c:I

    goto :goto_0

    .line 5058
    :cond_7
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 5060
    invoke-static {v0, v1}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 5776
    if-eqz v1, :cond_9

    .line 5779
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 5780
    invoke-static {v2}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 6040
    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 5785
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 5786
    new-instance v4, Landroid/text/SpannableString;

    invoke-static {v1}, Lbky;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6136
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 5788
    invoke-static {v1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5789
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 5790
    new-instance v4, Landroid/text/SpannableString;

    sget v5, Laxp$i;->dt_ding_item_deadline_normal_fmt:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6144
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 5803
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    .line 5804
    new-instance v3, Lcrm;

    invoke-direct {v3}, Lcrm;-><init>()V

    .line 8128
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 5806
    new-instance v6, Lbky$10;

    invoke-direct {v6, v4, v5}, Lbky$10;-><init>(J)V

    .line 9040
    iput-object v6, v3, Lcrm;->c:Lcrl;

    .line 5835
    new-instance v3, Lbky$11;

    invoke-direct {v3, v1}, Lbky$11;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 9160
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 5064
    :cond_9
    invoke-static {v1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5065
    sget-object v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_ARRIVED:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 9532
    if-eqz v1, :cond_3

    invoke-static {v1}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9535
    invoke-static {v1}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 9536
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5792
    :cond_a
    invoke-static {v1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5793
    new-instance v4, Landroid/text/SpannableString;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget v7, Laxp$i;->dt_ding_meeting_time_prefix:I

    .line 5794
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 5795
    invoke-static {v1}, Lbkh;->I(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v8

    invoke-static {v1}, Lbkh;->J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 5793
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7144
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 5796
    invoke-static {v1}, Lbkh;->K(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v4

    .line 5797
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 5798
    new-instance v5, Landroid/text/SpannableString;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget v8, Laxp$i;->dt_ding_meeting_location_prefix:I

    .line 5799
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    .line 5798
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7152
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    goto/16 :goto_3

    .line 9539
    :cond_b
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 9540
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 9541
    invoke-static {v4}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v5

    .line 10048
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 9542
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10173
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 9545
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 9546
    new-instance v6, Landroid/text/SpannableString;

    sget v7, Laxp$i;->dt_ding_meeting_accept:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10196
    iput-object v6, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 9547
    sget-object v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 10212
    iput-object v6, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 9548
    new-instance v6, Lbky$3;

    invoke-direct {v6, p1, v1}, Lbky$3;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 11204
    iput-object v6, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 9556
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 9557
    new-instance v7, Landroid/text/SpannableString;

    sget v8, Laxp$i;->dt_ding_refuse:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12196
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 9558
    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 12212
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 12220
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->d:Z

    .line 9560
    new-instance v7, Lbky$4;

    invoke-direct {v7, p1, v1, v2}, Lbky$4;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;)V

    .line 13204
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 9576
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 9577
    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 13212
    iput-object v7, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 9578
    new-instance v7, Landroid/text/SpannableString;

    sget v8, Laxp$i;->dt_ding_noticeview_later:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14196
    iput-object v7, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 14220
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->d:Z

    .line 9580
    new-instance v3, Lbky$5;

    invoke-direct {v3, v1}, Lbky$5;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 15204
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 9608
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9609
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9610
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 15699
    :cond_c
    if-eqz v1, :cond_3

    .line 15702
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 15703
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 15704
    invoke-static {v3}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 16048
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 15705
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16173
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 15708
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 15709
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laxp$i;->dt_ding_noticeview_confirm:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16196
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 15710
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 16212
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 15711
    new-instance v5, Lbky$8;

    invoke-direct {v5, v1}, Lbky$8;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 17204
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 15739
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 15740
    new-instance v6, Landroid/text/SpannableString;

    sget v7, Laxp$i;->dt_ding_noticeview_later:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 18196
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 15741
    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 18212
    iput-object v2, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 18220
    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->d:Z

    .line 15743
    new-instance v2, Lbky$9;

    invoke-direct {v2, v1}, Lbky$9;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 19204
    iput-object v2, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 15771
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15772
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 168
    .restart local v0    # "popupDisplayAsyncObject":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    :cond_d
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 169
    const/4 v1, 0x0

    invoke-static {v1}, Lbjz;->g(Z)V

    goto/16 :goto_2

    .line 170
    :cond_e
    iget-object v1, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    const/4 v1, 0x0

    invoke-static {v1}, Lbjz;->e(Z)V

    goto/16 :goto_2
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 182
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v2

    iget-object v3, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-wide v4, p0, Lbbu$6;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lbbr;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "DingPopWindowCenter shouldHideNewDingPopupWindow match after, dingId="

    aput-object v3, v2, v0

    iget-object v3, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 4
    .param p1, "preDDPopupWindowShowObject"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 1025
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 123
    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 124
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v0

    iget-object v2, p0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
