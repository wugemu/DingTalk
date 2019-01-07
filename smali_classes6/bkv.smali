.class public final Lbkv;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 2

    .prologue
    .line 966
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 967
    .local v0, "currentActivity":Landroid/content/Context;
    if-nez v0, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .end local v0    # "currentActivity":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    .locals 13
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v4

    .line 187
    :goto_0
    return-object v2

    .line 149
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 151
    .local v2, "object":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    invoke-static {v2, p1}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 152
    invoke-static {v2, p1, v4}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 155
    .local v0, "content":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;
    invoke-static {v0}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 1043
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 156
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 1123
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 157
    new-instance v4, Landroid/text/SpannableString;

    invoke-static {p1}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1131
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 158
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 159
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    new-instance v4, Landroid/text/SpannableString;

    new-array v5, v12, [Ljava/lang/String;

    sget v6, Laxp$i;->dt_ding_meeting_time_prefix:I

    .line 161
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 162
    invoke-static {p1}, Lbkh;->I(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v6

    invoke-static {p1}, Lbkh;->J(Lcom/alibaba/android/ding/base/objects/ObjectDing;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 160
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1139
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 163
    invoke-static {p1}, Lbkh;->K(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "meetingLocation":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 165
    new-instance v4, Landroid/text/SpannableString;

    new-array v5, v12, [Ljava/lang/String;

    sget v6, Laxp$i;->dt_ding_meeting_location_prefix:I

    .line 166
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v1, v5, v11

    .line 165
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1147
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->d:Landroid/text/SpannableString;

    .line 174
    .end local v1    # "meetingLocation":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v4, Lbkv$17;

    invoke-direct {v4, p1}, Lbkv$17;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2155
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-static {p1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 171
    new-instance v4, Landroid/text/SpannableString;

    sget v5, Laxp$i;->dt_ding_item_deadline_at:I

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v8

    invoke-static {v8, v9, v10}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2139
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

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
    .line 926
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcrm;

    invoke-direct {v0}, Lcrm;-><init>()V

    .line 10024
    .local v0, "asyncLoadHolder":Lcrm;, "Lcrm<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrm;->a:Z

    .line 10032
    iput-object p0, v0, Lcrm;->b:Ljava/lang/Object;

    .line 929
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;
    .locals 4
    .param p0, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 933
    if-nez p0, :cond_1

    .line 934
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxp$i;->ding_abstract_unknown_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 950
    :cond_0
    :goto_0
    return-object v1

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    .line 940
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v2, :cond_2

    .line 941
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .end local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "contentTips":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_0

    .line 948
    const-string/jumbo v1, ""

    goto :goto_0

    .line 942
    .end local v1    # "contentTips":Ljava/lang/String;
    .restart local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_2
    instance-of v2, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v2, :cond_3

    .line 943
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

    .line 945
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
    .line 58
    .line 10957
    if-nez p0, :cond_1

    .line 10958
    const-string/jumbo v0, ""

    .line 10962
    :cond_0
    :goto_0
    return-object v0

    .line 10961
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 10962
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/ObjectDing;ILjava/lang/String;Landroid/view/View;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 58
    .line 11655
    if-eqz p0, :cond_0

    .line 11658
    new-instance v1, Lbkv$9;

    invoke-direct {v1, p1}, Lbkv$9;-><init>(I)V

    .line 11678
    if-eqz p3, :cond_1

    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 11679
    const-class v2, Lcma;

    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 11682
    :goto_0
    new-instance v1, Lbfp;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 12109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 11682
    invoke-direct {v1, v2, v3, p1, p2}, Lbfp;-><init>(JILjava/lang/String;)V

    .line 11683
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbbp;->a(Lbfp;Lcma;)V

    .line 58
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/view/View;I)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 58
    .line 11611
    if-eqz p1, :cond_0

    .line 11614
    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_dialog_ding_cancel_tips:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 11616
    sget v1, Laxp$f;->et_input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 11617
    sget v2, Laxp$i;->dt_ding_cancel_conference_edit_tips:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 11618
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11619
    sget v2, Laxp$i;->dt_ding_conference_reject_prompt:I

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 11620
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 11621
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Laxp$i;->sure:I

    new-instance v0, Lbkv$7;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lbkv$7;-><init>(Landroid/widget/EditText;Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/view/View;ILcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 11622
    invoke-virtual {v6, v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lbkv$6;

    invoke-direct {v3, v1, v5}, Lbkv$6;-><init>(Landroid/widget/EditText;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 11633
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 11640
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 11642
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v2, Lbkv$8;

    invoke-direct {v2, v1}, Lbkv$8;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 690
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;-><init>()V

    .line 691
    .local v0, "header":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;
    invoke-static {v0}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v2

    .line 3035
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->a:Lcrm;

    .line 692
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 693
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {p1}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    sget v2, Laxp$i;->icon_task_fill:I

    .line 3075
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 695
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_alert_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 3083
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->c:I

    .line 696
    new-instance v2, Landroid/text/SpannableString;

    sget v3, Laxp$i;->dt_ding_list_task:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3091
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 697
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_alert_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 3099
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    .line 709
    :goto_1
    invoke-static {}, Lbju;->f()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 5107
    :goto_2
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->f:Z

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    sget v2, Laxp$i;->icon_meeting_fill:I

    .line 4075
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 700
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ding_biz_meeting:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 4083
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->c:I

    .line 701
    new-instance v2, Landroid/text/SpannableString;

    sget v3, Laxp$i;->dt_ding_list_conference:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4091
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 702
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ding_biz_meeting:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 4099
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    goto :goto_1

    .line 704
    :cond_2
    sget v2, Laxp$i;->icon_ding_fill:I

    .line 5075
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 705
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 5083
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->c:I

    .line 706
    new-instance v2, Landroid/text/SpannableString;

    sget v3, Laxp$i;->dt_ding_filter_ding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5091
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 707
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 5099
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    goto :goto_1

    .line 709
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V
    .locals 7
    .param p0, "object"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 713
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 717
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 718
    .local v1, "footer":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;
    invoke-static {v1}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v5

    .line 6051
    iput-object v5, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6168
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;>;"
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 722
    new-instance v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 723
    .local v4, "viewDetailAction":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laxp$i;->dt_ding_noticeview_more:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6191
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 724
    sget-object v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->BLUE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 6207
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 725
    new-instance v5, Lbkv$10;

    invoke-direct {v5, p1, p2}, Lbkv$10;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 7199
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 745
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 746
    .local v2, "knowAction":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;
    new-instance v5, Landroid/text/SpannableString;

    sget v6, Laxp$i;->dt_ding_i_know:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8191
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 747
    sget-object v5, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->WHITE_BUTTON:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 8207
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 748
    new-instance v5, Lbkv$11;

    invoke-direct {v5, p1}, Lbkv$11;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 9199
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 763
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
