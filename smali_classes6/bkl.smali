.class public final Lbkl;
.super Ljava/lang/Object;
.source "MeetingOperateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbkl$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    return-void
.end method

.method public static a(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "scope"    # I
    .param p2, "dingId"    # J
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "recurrenceId"    # Ljava/lang/String;
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x1f4

    .line 385
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 386
    const/4 v2, 0x0

    invoke-virtual {p6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    .line 389
    :cond_0
    new-instance v0, Lbkl$6;

    invoke-direct {v0}, Lbkl$6;-><init>()V

    .line 405
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 407
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Lbfo;

    invoke-direct {v1, p2, p3, p6}, Lbfo;-><init>(JLjava/lang/String;)V

    .line 409
    .local v1, "object":Lbfo;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 6030
    iput p1, v1, Lbfo;->d:I

    .line 6034
    iput-object p4, v1, Lbfo;->e:Ljava/lang/String;

    .line 7026
    iput-object p5, v1, Lbfo;->c:Ljava/lang/String;

    .line 418
    :cond_1
    :goto_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 7931
    iget-object v3, v2, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$100;

    invoke-direct {v4, v2, v1, v0}, Lbbp$100;-><init>(Lbbp;Lbfo;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 419
    return-void

    .line 413
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 7030
    iput p1, v1, Lbfo;->d:I

    .line 7034
    iput-object p4, v1, Lbfo;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    if-eqz p1, :cond_0

    invoke-static {p1}, Lbkh;->t(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lbju;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lbkl$1;

    invoke-direct {v0, p0, p1}, Lbkl$1;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-static {p0, v0}, Lbko;->a(Landroid/content/Context;Lbko$a;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "scope"    # I

    .prologue
    const/4 v5, 0x4

    .line 68
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 1109
    const-wide/16 v8, 0x0

    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 69
    .local v2, "dingId":J
    new-instance v6, Lbkl$7;

    invoke-direct {v6, p1}, Lbkl$7;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 86
    .local v6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v1, Lcma;

    invoke-static {v6, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v6, Lcma;

    .line 87
    .restart local v6    # "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 88
    new-instance v0, Lbfp;

    const-string/jumbo v1, ""

    invoke-direct {v0, v2, v3, v5, v1}, Lbfp;-><init>(JILjava/lang/String;)V

    .line 2032
    .local v0, "updateObject":Lbfp;
    iput p2, v0, Lbfp;->e:I

    .line 90
    invoke-static {p1}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    .line 2036
    iput-object v1, v0, Lbfp;->f:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lbkh;->O(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    .line 3028
    iput-object v1, v0, Lbfp;->d:Ljava/lang/String;

    .line 92
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lbbp;->a(Lbfp;Lcma;)V

    .line 101
    .end local v0    # "updateObject":Lbfp;
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 94
    new-instance v0, Lbfp;

    const-string/jumbo v1, ""

    invoke-direct {v0, v2, v3, v5, v1}, Lbfp;-><init>(JILjava/lang/String;)V

    .line 3032
    .restart local v0    # "updateObject":Lbfp;
    iput p2, v0, Lbfp;->e:I

    .line 96
    invoke-static {p1}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    .line 3036
    iput-object v1, v0, Lbfp;->f:Ljava/lang/String;

    .line 97
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lbbp;->a(Lbfp;Lcma;)V

    goto :goto_0

    .line 99
    .end local v0    # "updateObject":Lbfp;
    :cond_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->k()I

    move-result v4

    invoke-virtual/range {v1 .. v6}, Lbbp;->a(JIILcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILbkl$a;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "confirmTitleResId"    # I
    .param p3, "meetingOperateCallback"    # Lbkl$a;

    .prologue
    .line 104
    if-nez p0, :cond_1

    .line 105
    if-eqz p3, :cond_0

    .line 106
    invoke-interface {p3}, Lbkl$a;->a()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lbkh;->u(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    :cond_2
    if-eqz p3, :cond_0

    .line 113
    invoke-interface {p3}, Lbkl$a;->a()V

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {}, Lbju;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    new-instance v0, Lbkl$8;

    invoke-direct {v0, p0, p1}, Lbkl$8;-><init>(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-static {p0, v0}, Lbko;->a(Landroid/content/Context;Lbko$a;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 131
    if-eqz p3, :cond_0

    .line 132
    invoke-interface {p3}, Lbkl$a;->a()V

    goto :goto_0

    .line 135
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_dialog_ding_cancel_tips:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 137
    .local v6, "dialogView":Landroid/view/View;
    sget v0, Laxp$f;->et_input:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 138
    .local v2, "editText":Landroid/widget/EditText;
    sget v0, Laxp$i;->dt_ding_cancel_conference_edit_tips:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 139
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v4, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v4, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Laxp$i;->sure:I

    new-instance v0, Lbkl$10;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lbkl$10;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lbkl$a;)V

    .line 143
    invoke-virtual {v7, v8, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Laxp$i;->cancel:I

    new-instance v3, Lbkl$9;

    invoke-direct {v3, p0, v2, v4}, Lbkl$9;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 154
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 163
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbkl$11;

    invoke-direct {v1, v2, p0}, Lbkl$11;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 36
    .line 11246
    if-eqz p1, :cond_0

    .line 11250
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 12109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 11251
    invoke-static {p1}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v4

    .line 11252
    invoke-static {p1}, Lbkh;->O(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 11249
    invoke-static/range {v1 .. v7}, Lbkl;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;I)V
    .locals 4
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    const-wide/16 v0, 0x0

    const/16 v3, 0x1f4

    .line 36
    .line 8175
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8176
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 9109
    invoke-static {v2, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 8178
    :cond_0
    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8183
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 8184
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 8187
    .end local p2    # "x2":Ljava/lang/String;
    :cond_1
    new-instance v2, Lbfp;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v1, v3, p2}, Lbfp;-><init>(JILjava/lang/String;)V

    .line 8189
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 10032
    iput p3, v2, Lbfp;->e:I

    .line 8191
    invoke-static {p1}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    .line 10036
    iput-object v0, v2, Lbfp;->f:Ljava/lang/String;

    .line 8192
    invoke-static {p1}, Lbkh;->O(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    .line 11028
    iput-object v0, v2, Lbfp;->d:Ljava/lang/String;

    .line 8198
    :cond_2
    :goto_0
    new-instance v0, Lbkl$12;

    invoke-direct {v0}, Lbkl$12;-><init>()V

    .line 8212
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8213
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lbbp;->a(Lbfp;Lcma;)V

    .line 36
    :cond_3
    return-void

    .line 8193
    :cond_4
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 11032
    iput p3, v2, Lbfp;->e:I

    .line 8195
    invoke-static {p1}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    .line 11036
    iput-object v0, v2, Lbfp;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dingId"    # J
    .param p3, "uniqueId"    # Ljava/lang/String;
    .param p4, "recurrenceId"    # Ljava/lang/String;
    .param p5, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    instance-of v2, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 264
    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 267
    :cond_0
    new-instance v1, Lbft;

    invoke-direct {v1}, Lbft;-><init>()V

    .line 4023
    .local v1, "meetingDeleteObject":Lbft;
    iput-wide p1, v1, Lbft;->a:J

    .line 270
    const/4 v2, 0x2

    if-ne p5, v2, :cond_3

    .line 4031
    iput p5, v1, Lbft;->c:I

    .line 4035
    iput-object p3, v1, Lbft;->d:Ljava/lang/String;

    .line 5027
    iput-object p4, v1, Lbft;->b:Ljava/lang/String;

    .line 279
    :cond_1
    :goto_0
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v2

    .line 5039
    iput v2, v1, Lbft;->e:I

    .line 280
    new-instance v0, Lbkl$14;

    invoke-direct {v0, p0, p6}, Lbkl$14;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/Callback;)V

    .line 306
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 307
    const-class v2, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 309
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_2
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 5949
    iget-object v3, v2, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$102;

    invoke-direct {v4, v2, v1, v0}, Lbbp$102;-><init>(Lbbp;Lbft;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 310
    return-void

    .line 274
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    const/4 v2, 0x1

    if-ne p5, v2, :cond_1

    .line 5031
    iput p5, v1, Lbft;->c:I

    .line 5035
    iput-object p3, v1, Lbft;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;I)V
    .locals 7
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    .line 12373
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12374
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 13109
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 12376
    :cond_0
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12380
    invoke-static {p1}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lbkh;->O(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p3

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lbkl;->a(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    return-void
.end method
