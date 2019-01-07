.class public Lexe;
.super Lexc;
.source "CallApmtControlPresenter.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lexe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexe;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lexf$b;)V
    .locals 1
    .param p1, "activityView"    # Lexf$b;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lexc;-><init>(Lexf$b;)V

    .line 59
    iget-object v0, p0, Lexe;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lexe;->a:Lexf$b;

    invoke-interface {v0, p0}, Lexf$b;->setPresenter(Lcjd;)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic a(Lexe;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lexe;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lexe;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lexe;Leva;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lexe;
    .param p1, "x1"    # Leva;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    .line 2161
    iget-object v0, p0, Lexe;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v0, p0, Lexe;->b:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2167
    invoke-static {}, Lewx;->a()Z

    move-result v2

    .line 2168
    if-eqz v2, :cond_1

    .line 2170
    sget v0, Leuj$l;->dt_conference_create_audio_conf:I

    .line 2175
    :goto_0
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2176
    new-instance v3, Lexe$3;

    invoke-direct {v3, p0, v1, p1, v2}, Lexe$3;-><init>(Lexe;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Leva;Z)V

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2188
    sget v0, Leuj$l;->login_cancel:I

    new-instance v2, Lexe$4;

    invoke-direct {v2, p0, v1}, Lexe$4;-><init>(Lexe;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2195
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 2196
    if-eqz v0, :cond_0

    .line 2197
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 2199
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "call_apmtconf_no_privilege_alert"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 51
    :cond_0
    return-void

    .line 2173
    :cond_1
    sget v0, Leuj$l;->dt_conference_create_video_conf:I

    goto :goto_0
.end method

.method static synthetic a(Lexe;Leva;Z)V
    .locals 6
    .param p0, "x0"    # Lexe;
    .param p1, "x1"    # Leva;
    .param p2, "x2"    # Z

    .prologue
    .line 51
    .line 2209
    if-eqz p1, :cond_0

    .line 2213
    invoke-virtual {p1}, Leva;->a()Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    .line 2216
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2218
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerId:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2219
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2221
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 2222
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lexe$5;

    invoke-direct {v3, p0, p2}, Lexe$5;-><init>(Lexe;Z)V

    const-class v4, Lcma;

    iget-object v5, p0, Lexe;->b:Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2221
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 2274
    :cond_0
    :goto_0
    return-void

    .line 2275
    :cond_1
    iget-object v0, p0, Lexe;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lexe;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lexe;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Leuy;)V
    .locals 6
    .param p1, "object"    # Leuy;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 323
    if-eqz p1, :cond_0

    iget-object v0, p1, Leuy;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iget-object v1, p1, Leuy;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v0, v1, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexe;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cancel the conf reservation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Leuy;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Leye;->a()Leye;

    move-result-object v2

    .line 2015
    new-instance v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCancelModel;

    invoke-direct {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCancelModel;-><init>()V

    .line 2016
    iget-object v0, p1, Leuy;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCancelModel;->appointId:Ljava/lang/String;

    .line 330
    const-string/jumbo v0, "EVENTBUTLER"

    .line 331
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lexe$7;

    invoke-direct {v1, p0}, Lexe$7;-><init>(Lexe;)V

    const-class v4, Leyo$d;

    iget-object v5, p0, Lexe;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 2108
    if-eqz v3, :cond_0

    .line 2111
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 2112
    if-eqz v1, :cond_0

    .line 2115
    new-instance v4, Leye$2;

    invoke-direct {v4, v2, v0}, Leye$2;-><init>(Leye;Leyo$d;)V

    invoke-interface {v1, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->cancelAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCancelModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Leva;)V
    .locals 6
    .param p1, "object"    # Leva;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 108
    if-eqz p1, :cond_0

    iget-object v0, p1, Leva;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iget-object v1, p1, Leva;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v0, v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexe;->c:Ljava/lang/String;

    const-string/jumbo v2, "Create the conf... "

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Leye;->a()Leye;

    move-result-object v1

    invoke-virtual {p1}, Leva;->a()Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 115
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lexe$2;

    invoke-direct {v3, p0, p1}, Lexe$2;-><init>(Lexe;Leva;)V

    const-class v4, Leyo$c;

    iget-object v5, p0, Lexe;->b:Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$c;

    .line 114
    invoke-virtual {v1, v2, v0}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;Leyo$c;)V

    goto :goto_0
.end method

.method public final a(Levb;)V
    .locals 6
    .param p1, "object"    # Levb;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p1, Levb;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iget-object v1, p1, Levb;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v0, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexe;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Load the conference "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Levb;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Leye;->a()Leye;

    move-result-object v1

    .line 1017
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;-><init>()V

    .line 1018
    iget-object v0, p1, Levb;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;->appointId:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "EVENTBUTLER"

    .line 73
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lexe$1;

    invoke-direct {v3, p0}, Lexe$1;-><init>(Lexe;)V

    const-class v4, Leyo$d;

    iget-object v5, p0, Lexe;->b:Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 72
    invoke-virtual {v1, v2, v0}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;Leyo$d;)V

    goto :goto_0
.end method

.method public final a(Levc;)V
    .locals 6
    .param p1, "object"    # Levc;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 281
    if-eqz p1, :cond_0

    iget-object v0, p1, Levc;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iget-object v1, p1, Levc;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v0, v1, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexe;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Update the conf reservation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Levc;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Leye;->a()Leye;

    move-result-object v2

    .line 1034
    new-instance v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;

    invoke-direct {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;-><init>()V

    .line 1035
    iget-wide v0, p1, Levc;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->callerId:Ljava/lang/Long;

    .line 1036
    iget-object v0, p1, Levc;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Levc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->calleeIds:Ljava/util/List;

    .line 1038
    iget-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->calleeIds:Ljava/util/List;

    iget-object v1, p1, Levc;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1040
    :cond_2
    iget-object v0, p1, Levc;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->title:Ljava/lang/String;

    .line 1041
    iget-wide v0, p1, Levc;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->startTime:Ljava/lang/Long;

    .line 1042
    iget-wide v0, p1, Levc;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->duration:Ljava/lang/Long;

    .line 1043
    iget-object v0, p1, Levc;->g:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->appointId:Ljava/lang/String;

    .line 1044
    iget-object v0, p1, Levc;->h:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Levc;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->refuseIds:Ljava/util/List;

    .line 1046
    iget-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->refuseIds:Ljava/util/List;

    iget-object v1, p1, Levc;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1048
    :cond_3
    iget-boolean v0, p1, Levc;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;->enableDing:Ljava/lang/Boolean;

    .line 287
    const-string/jumbo v0, "EVENTBUTLER"

    .line 288
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lexe$6;

    invoke-direct {v1, p0}, Lexe$6;-><init>(Lexe;)V

    const-class v4, Leyo$d;

    iget-object v5, p0, Lexe;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 1330
    if-eqz v3, :cond_0

    .line 1333
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 1334
    if-eqz v1, :cond_0

    .line 1337
    new-instance v4, Leye$8;

    invoke-direct {v4, v2, v0}, Leye$8;-><init>(Leye;Leyo$d;)V

    invoke-interface {v1, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->updateAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;Liyv;)V

    goto/16 :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method
