.class public final Lbky;
.super Ljava/lang/Object;
.source "PopupDisplayAsynObjectBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v4

    .line 177
    :goto_0
    return-object v2

    .line 139
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 141
    .local v2, "object":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    invoke-static {v2, p2}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 142
    invoke-static {v2, p2, v4}, Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 145
    .local v0, "content":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;
    invoke-static {v0}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 1040
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 146
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 1128
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->a:Lcrm;

    .line 147
    new-instance v4, Landroid/text/SpannableString;

    invoke-static {p2}, Lbky;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1136
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 148
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 149
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {p2}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    new-instance v4, Landroid/text/SpannableString;

    new-array v5, v12, [Ljava/lang/String;

    sget v6, Laxp$i;->dt_ding_meeting_time_prefix:I

    .line 151
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 152
    invoke-static {p2}, Lbkh;->I(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v6

    invoke-static {p2}, Lbkh;->J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 150
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1144
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 153
    invoke-static {p2}, Lbkh;->K(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "meetingLocation":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    new-instance v4, Landroid/text/SpannableString;

    new-array v5, v12, [Ljava/lang/String;

    sget v6, Laxp$i;->dt_ding_meeting_location_prefix:I

    .line 156
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v1, v5, v11

    .line 155
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1152
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    .line 164
    .end local v1    # "meetingLocation":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v4, Lbky$13;

    invoke-direct {v4, p2, p0}, Lbky$13;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/app/Activity;)V

    .line 2160
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto/16 :goto_0

    .line 158
    :cond_3
    invoke-static {p2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 161
    new-instance v4, Landroid/text/SpannableString;

    sget v5, Laxp$i;->dt_ding_item_deadline_at:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v8

    invoke-static {v8, v9, v10}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2144
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    goto :goto_1
.end method

.method public static a(Ljava/lang/Object;)Lcrm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcrm",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcrm;

    invoke-direct {v0}, Lcrm;-><init>()V

    .line 10024
    .local v0, "asyncLoadHolder":Lcrm;, "Lcrm<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrm;->a:Z

    .line 10032
    iput-object p0, v0, Lcrm;->b:Ljava/lang/Object;

    .line 865
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 4
    .param p0, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 869
    if-nez p0, :cond_1

    .line 870
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxp$i;->ding_abstract_unknown_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 886
    :cond_0
    :goto_0
    return-object v1

    .line 872
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 876
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v2, :cond_2

    .line 877
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .end local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "contentTips":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_0

    .line 884
    const-string/jumbo v1, ""

    goto :goto_0

    .line 878
    .end local v1    # "contentTips":Ljava/lang/String;
    .restart local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_2
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v2, :cond_3

    .line 879
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxp$i;->ding_abstract_audio_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "contentTips":Ljava/lang/String;
    goto :goto_1

    .line 881
    .end local v1    # "contentTips":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxp$i;->ding_abstract_unknown_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "contentTips":Ljava/lang/String;
    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 48
    .line 10893
    if-nez p0, :cond_1

    .line 10894
    const-string/jumbo v0, ""

    .line 10898
    :cond_0
    :goto_0
    return-object v0

    .line 10897
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 10898
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 614
    if-nez p1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 617
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;-><init>()V

    .line 618
    .local v0, "header":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;
    invoke-static {v0}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v2

    .line 3032
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->a:Lcrm;

    .line 619
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 620
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    sget v2, Laxp$i;->icon_task_fill:I

    .line 3075
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->b:I

    .line 622
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_alert_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 3088
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->c:I

    .line 623
    new-instance v2, Landroid/text/SpannableString;

    sget v3, Laxp$i;->dt_ding_list_task:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3096
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 624
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_alert_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 3104
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->e:I

    .line 636
    :goto_1
    invoke-static {}, Lbju;->f()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 5112
    :goto_2
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->f:Z

    goto :goto_0

    .line 625
    :cond_1
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    sget v2, Laxp$i;->icon_meeting_fill:I

    .line 4075
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->b:I

    .line 627
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ding_biz_meeting:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 4088
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->c:I

    .line 628
    new-instance v2, Landroid/text/SpannableString;

    sget v3, Laxp$i;->dt_ding_list_conference:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4096
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 629
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ding_biz_meeting:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 4104
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->e:I

    goto :goto_1

    .line 631
    :cond_2
    sget v2, Laxp$i;->icon_ding_fill:I

    .line 5075
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->b:I

    .line 632
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 5088
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->c:I

    .line 633
    new-instance v2, Landroid/text/SpannableString;

    sget v3, Laxp$i;->dt_ding_filter_ding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5096
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 634
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 5104
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$d;->e:I

    goto :goto_1

    .line 636
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V
    .locals 7
    .param p0, "object"    # Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 640
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 644
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 645
    .local v1, "footer":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;
    invoke-static {v1}, Lbky;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v5

    .line 6048
    iput-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6173
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;>;"
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 649
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 650
    .local v4, "viewDetailAction":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laxp$i;->dt_ding_noticeview_more:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6196
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 651
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 6212
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 652
    new-instance v5, Lbky$6;

    invoke-direct {v5, p1, p2}, Lbky$6;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 7204
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 676
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 677
    .local v2, "knowAction":Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laxp$i;->dt_ding_i_know:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8196
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 678
    sget-object v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 8212
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 679
    new-instance v5, Lbky$7;

    invoke-direct {v5, p1}, Lbky$7;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 9204
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 694
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
