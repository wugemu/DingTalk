.class public Lexh;
.super Ljava/lang/Object;
.source "ConfApmtDetailPresenter.java"

# interfaces
.implements Lexg$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lexg$b;

.field private d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

.field private e:Leuz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lexh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexh;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lexg$b;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lexg$b;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lexh;->b:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lexh;->c:Lexg$b;

    .line 46
    iget-object v0, p0, Lexh;->c:Lexg$b;

    invoke-interface {v0, p0}, Lexg$b;->setPresenter(Lcjd;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lexg$b;Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lexg$b;
    .param p3, "confType"    # Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lexh;-><init>(Landroid/app/Activity;Lexg$b;)V

    .line 51
    iput-object p3, p0, Lexh;->d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 52
    return-void
.end method

.method static synthetic a(Lexh;)Leuz;
    .locals 1
    .param p0, "x0"    # Lexh;

    .prologue
    .line 34
    iget-object v0, p0, Lexh;->e:Leuz;

    return-object v0
.end method

.method static synthetic a(Lexh;Leuz;)Leuz;
    .locals 0
    .param p0, "x0"    # Lexh;
    .param p1, "x1"    # Leuz;

    .prologue
    .line 34
    iput-object p1, p0, Lexh;->e:Leuz;

    return-object p1
.end method

.method static synthetic b(Lexh;)Lexg$b;
    .locals 1
    .param p0, "x0"    # Lexh;

    .prologue
    .line 34
    iget-object v0, p0, Lexh;->c:Lexg$b;

    return-object v0
.end method

.method static synthetic c(Lexh;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lexh;

    .prologue
    .line 34
    iget-object v0, p0, Lexh;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lexh;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lexh;->d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    .line 2154
    iget-object v0, p0, Lexh;->e:Leuz;

    if-nez v0, :cond_1

    .line 3076
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Accept the reservation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lexh;->e:Leuz;

    iget-object v3, v3, Leuz;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptModel;-><init>()V

    .line 2159
    iget-object v0, p0, Lexh;->e:Leuz;

    iget-object v0, v0, Leuz;->j:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptModel;->appointId:Ljava/lang/String;

    .line 2161
    invoke-static {}, Leye;->a()Leye;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lexh$3;

    invoke-direct {v1, p0}, Lexh$3;-><init>(Lexh;)V

    const-class v4, Leyo$d;

    iget-object v5, p0, Lexh;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 3071
    if-eqz v2, :cond_0

    .line 3074
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 3075
    if-eqz v1, :cond_0

    .line 3078
    new-instance v4, Leye$1;

    invoke-direct {v4, v3, v0}, Leye$1;-><init>(Leye;Leyo$d;)V

    invoke-interface {v1, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->acceptAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "confId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    iget-object v0, p0, Lexh;->d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_2

    .line 1110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    const-string/jumbo v2, "tele confId is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    const-string/jumbo v2, "Loading telconf detail"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;-><init>()V

    .line 1116
    iput-object p1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;->appointId:Ljava/lang/String;

    .line 1117
    invoke-static {}, Leye;->a()Leye;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1118
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lexh$2;

    invoke-direct {v3, p0}, Lexh$2;-><init>(Lexh;)V

    const-class v4, Leyo$d;

    iget-object v5, p0, Lexh;->b:Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 1117
    invoke-virtual {v2, v1, v0}, Leye;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;Leyo$d;)V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lexh;->d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    .line 2069
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2070
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    const-string/jumbo v2, "video confId is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2073
    :cond_3
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    const-string/jumbo v2, "Loading videoconf detail"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;-><init>()V

    .line 2076
    iput-object p1, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;->conferenceId:Ljava/lang/String;

    .line 2077
    new-instance v0, Lexh$1;

    invoke-direct {v0, p0}, Lexh$1;-><init>(Lexh;)V

    const-class v2, Leyo$d;

    iget-object v3, p0, Lexh;->b:Landroid/app/Activity;

    .line 2078
    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 2077
    invoke-static {v1, v0}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;Leyo$d;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lexh;->d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    .line 3209
    iget-object v0, p0, Lexh;->e:Leuz;

    if-nez v0, :cond_1

    .line 3298
    :cond_0
    :goto_0
    return-void

    .line 3212
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reject the reservation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lexh;->e:Leuz;

    iget-object v3, v3, Leuz;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;-><init>()V

    .line 3214
    iget-object v0, p0, Lexh;->e:Leuz;

    iget-object v0, v0, Leuz;->j:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;->appointId:Ljava/lang/String;

    .line 3216
    :try_start_0
    iget-object v0, p0, Lexh;->e:Leuz;

    iget-object v0, v0, Leuz;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;->conferenceId:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3220
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;->userId:Ljava/lang/Long;

    .line 3222
    invoke-static {}, Leye;->a()Leye;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lexh$4;

    invoke-direct {v1, p0}, Lexh$4;-><init>(Lexh;)V

    const-class v4, Leyo$d;

    iget-object v5, p0, Lexh;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 3293
    if-eqz v2, :cond_0

    .line 3296
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;

    .line 3297
    if-eqz v1, :cond_0

    .line 3300
    new-instance v4, Leye$7;

    invoke-direct {v4, v3, v0}, Leye$7;-><init>(Leye;Leyo$d;)V

    invoke-interface {v1, v2, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;->refuseAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;Liyv;)V

    goto :goto_0

    .line 3218
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "conferenceId "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lexh;->e:Leuz;

    iget-object v5, v5, Leuz;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " parse error"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lexh;->e:Leuz;

    if-nez v0, :cond_1

    .line 197
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lexh;->a:Ljava/lang/String;

    const-string/jumbo v2, "startConf confInfo is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lexh;->d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_2

    .line 201
    iget-object v0, p0, Lexh;->c:Lexg$b;

    iget-object v1, p0, Lexh;->e:Leuz;

    invoke-interface {v0, v1}, Lexg$b;->c(Leuz;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lexh;->d:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lexh;->c:Lexg$b;

    iget-object v1, p0, Lexh;->e:Leuz;

    invoke-interface {v0, v1}, Lexg$b;->b(Leuz;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
