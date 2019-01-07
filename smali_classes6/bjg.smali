.class public final Lbjg;
.super Ljava/lang/Object;
.source "AddReceiverHelper.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private f:Ljava/lang/String;

.field private g:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "431020"

    sput-object v0, Lbjg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbjg;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "addSuccessCallback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v2, p0, Lbjg;->b:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lbjg;->c:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lbjg;->d:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 69
    iput-object p4, p0, Lbjg;->g:Lcom/alibaba/wukong/Callback;

    .line 1263
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    iget-object v1, p0, Lbjg;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lbbi;->a(Landroid/app/Activity;Lcma;)V

    .line 2077
    iget-object v0, p0, Lbjg;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2078
    new-instance v0, Lbjg$1;

    invoke-direct {v0, p0}, Lbjg$1;-><init>(Lbjg;)V

    iput-object v0, p0, Lbjg;->b:Landroid/content/BroadcastReceiver;

    .line 2105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2106
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2107
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2108
    const-string/jumbo v1, "com.workapp.ding.choose.myself"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2109
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbjg;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lbjg;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbjg;

    .prologue
    .line 45
    iget-object v0, p0, Lbjg;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lbjg;Ljava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 4
    .param p0, "x0"    # Lbjg;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 45
    const/4 v0, 0x1

    .line 8220
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lbjg;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8221
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8222
    sget v2, Laxp$i;->ding_ignore_vip:I

    new-instance v3, Lbjg$5;

    invoke-direct {v3, p0, v1, p2, v0}, Lbjg$5;-><init>(Lbjg;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/util/List;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8229
    sget v0, Laxp$i;->cancel:I

    new-instance v2, Lbjg$6;

    invoke-direct {v2, p0, v1}, Lbjg$6;-><init>(Lbjg;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8235
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 45
    return-void
.end method

.method static synthetic a(Lbjg;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 12
    .param p0, "x0"    # Lbjg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 45
    .line 8305
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_4

    .line 8309
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    .line 9155
    iget-object v2, v0, Lbbi;->a:Lazb;

    iget v3, v2, Lazb;->g:I

    .line 8311
    iget-object v2, p0, Lbjg;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 8312
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8313
    invoke-virtual {v0}, Lbbi;->b()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move-result-object v8

    .line 8314
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->q(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 9318
    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9689
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 9318
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    move v0, v1

    .line 8314
    :goto_0
    if-eqz v0, :cond_1

    .line 8315
    :cond_0
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10689
    iget v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;->F:I

    .line 8315
    invoke-static {v0}, Lbbi;->a(I)I

    move-result v0

    .line 8316
    if-ge v0, v3, :cond_1

    .line 8318
    iget-object v3, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v3}, Lbkh;->q(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8319
    sget v3, Laxp$i;->dt_ding_tel_meeting_choose_limit_at:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8320
    sget-object v8, Lbji;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move v3, v0

    .line 8327
    :cond_1
    :goto_1
    iget-object v0, p0, Lbjg;->c:Landroid/app/Activity;

    .line 11340
    iget-object v1, p0, Lbjg;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 11341
    iget-object v1, p0, Lbjg;->f:Ljava/lang/String;

    .line 12066
    :goto_2
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 12067
    :cond_2
    const/4 v7, 0x0

    :cond_3
    move-object v2, p1

    move v6, v5

    .line 8327
    invoke-static/range {v0 .. v8}, Lbjv;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/util/ArrayList;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)V

    .line 45
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 9318
    goto :goto_0

    .line 8322
    :cond_6
    sget v3, Laxp$i;->dt_ding_video_meeting_choose_limit_at:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8323
    sget-object v8, Lbji;->b:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move v3, v0

    goto :goto_1

    .line 11344
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxp$i;->ding_create_select_user:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 12070
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12071
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 12072
    if-eqz v2, :cond_9

    .line 12073
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 12074
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 12075
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static synthetic a(Lbjg;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lbjg;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    .line 3120
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3121
    :cond_0
    :goto_0
    return-void

    .line 3124
    :cond_1
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lbjg;->c:Landroid/app/Activity;

    new-instance v1, Lbjg$2;

    invoke-direct {v1, p0, p1}, Lbjg$2;-><init>(Lbjg;Ljava/util/List;)V

    invoke-static {v0, v1}, Lbko;->a(Landroid/content/Context;Lbko$a;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 3139
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lbjg;Ljava/util/List;I)V
    .locals 5
    .param p0, "x0"    # Lbjg;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 45
    .line 4143
    new-instance v1, Lbfr;

    invoke-direct {v1}, Lbfr;-><init>()V

    .line 4144
    invoke-static {p1}, Lbah;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 5022
    iput-object v0, v1, Lbfr;->a:Ljava/util/List;

    .line 4145
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 5109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6030
    iput-wide v2, v1, Lbfr;->b:J

    .line 4146
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 6038
    iput p2, v1, Lbfr;->d:I

    .line 4148
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    .line 6042
    iput-object v0, v1, Lbfr;->e:Ljava/lang/String;

    .line 4149
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->O(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    .line 7034
    iput-object v0, v1, Lbfr;->c:Ljava/lang/String;

    .line 4154
    :cond_0
    :goto_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    new-instance v0, Lbjg$3;

    invoke-direct {v0, p0}, Lbjg$3;-><init>(Lbjg;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lbjg;->c:Landroid/app/Activity;

    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7940
    iget-object v3, v2, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$101;

    invoke-direct {v4, v2, v1, v0}, Lbbp$101;-><init>(Lbbp;Lbfr;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void

    .line 4150
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 7038
    iput p2, v1, Lbfr;->d:I

    .line 4152
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->P(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v0

    .line 7042
    iput-object v0, v1, Lbfr;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lbjg;Ljava/util/List;Z)V
    .locals 6
    .param p0, "x0"    # Lbjg;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 45
    .line 3175
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3176
    :cond_0
    :goto_0
    return-void

    .line 3179
    :cond_1
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 3183
    new-instance v0, Lbjg$4;

    invoke-direct {v0, p0, p1}, Lbjg$4;-><init>(Lbjg;Ljava/util/List;)V

    .line 3209
    iget-object v1, p0, Lbjg;->c:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 3210
    const-class v1, Lcma;

    iget-object v2, p0, Lbjg;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3212
    :cond_2
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 4109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3212
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Lbah;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 3213
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3212
    invoke-virtual {v1, v2, v3, v4, v0}, Lbbp;->a(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lbjg;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lbjg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbjg;

    .prologue
    .line 45
    iget-object v0, p0, Lbjg;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lbjg;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lbjg;

    .prologue
    .line 45
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic d(Lbjg;)Lcom/alibaba/wukong/Callback;
    .locals 1
    .param p0, "x0"    # Lbjg;

    .prologue
    .line 45
    iget-object v0, p0, Lbjg;->g:Lcom/alibaba/wukong/Callback;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lbjg;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lbjg;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lbjg;->b:Landroid/content/BroadcastReceiver;

    .line 117
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 248
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    .line 2155
    iget-object v0, v0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->g:I

    .line 248
    if-nez v0, :cond_1

    .line 249
    sget v0, Laxp$i;->dt_ding_quota_not_enough:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    iput-object p1, p0, Lbjg;->f:Ljava/lang/String;

    .line 2271
    :cond_2
    iget-object v0, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 2275
    new-instance v0, Lbjg$7;

    invoke-direct {v0, p0}, Lbjg$7;-><init>(Lbjg;)V

    .line 2294
    iget-object v1, p0, Lbjg;->c:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 2295
    const-class v1, Lcma;

    iget-object v2, p0, Lbjg;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2298
    :cond_3
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lbjg;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbbp;->b(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
