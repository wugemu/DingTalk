.class public Lewk;
.super Ljava/lang/Object;
.source "TeleConfOperCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lewk$d;,
        Lewk$c;,
        Lewk$b;,
        Lewk$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

.field public c:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

.field public d:Leyc;

.field public e:Leyo$c;

.field public f:Leyo$e;

.field public g:Leyo$e;

.field public h:I

.field private i:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

.field private j:Leze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lewk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lewk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Leze;Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .param p2, "compereHolder"    # Leze;
    .param p3, "userAdapter"    # Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
    .param p4, "callback"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .line 69
    iput-object p2, p0, Lewk;->j:Leze;

    .line 70
    iput-object p3, p0, Lewk;->c:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 71
    iput-object p4, p0, Lewk;->i:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    .line 72
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v0

    iput-object v0, p0, Lewk;->d:Leyc;

    .line 73
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lewk$a;

    invoke-direct {v1, p0, v4}, Lewk$a;-><init>(Lewk;B)V

    const-class v2, Leyo$c;

    iget-object v3, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$c;

    iput-object v0, p0, Lewk;->e:Leyo$c;

    .line 74
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lewk$c;

    invoke-direct {v1, p0, v4}, Lewk$c;-><init>(Lewk;B)V

    const-class v2, Leyo$e;

    iget-object v3, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$e;

    iput-object v0, p0, Lewk;->f:Leyo$e;

    .line 75
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lewk$d;

    invoke-direct {v1, p0, v4}, Lewk$d;-><init>(Lewk;B)V

    const-class v2, Leyo$e;

    iget-object v3, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$e;

    iput-object v0, p0, Lewk;->g:Leyo$e;

    .line 77
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lewk;->h:I

    .line 78
    return-void
.end method

.method static synthetic a(Lewk;Ljava/util/List;J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 6
    .param p0, "x0"    # Lewk;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .prologue
    const/4 v2, 0x0

    .line 47
    .line 6722
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 6736
    :goto_0
    return-object v0

    .line 6726
    :cond_1
    const/4 v3, -0x1

    .line 6727
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 6728
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 6729
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v4, p2

    if-nez v0, :cond_2

    .line 6735
    :goto_2
    if-gez v1, :cond_3

    move-object v0, v2

    .line 6736
    goto :goto_0

    .line 6727
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6739
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method static synthetic a(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;
    .locals 1
    .param p0, "x0"    # Lewk;

    .prologue
    .line 47
    iget-object v0, p0, Lewk;->i:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    return-object v0
.end method

.method static synthetic a(Lewk;Z)V
    .locals 1
    .param p0, "x0"    # Lewk;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lewk;->b(Z)V

    return-void
.end method

.method static synthetic b(Lewk;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
    .locals 1
    .param p0, "x0"    # Lewk;

    .prologue
    .line 47
    iget-object v0, p0, Lewk;->c:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lewk;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lewk;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
    .locals 1
    .param p0, "x0"    # Lewk;

    .prologue
    .line 47
    iget-object v0, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    return-object v0
.end method

.method static synthetic d(Lewk;)Leze;
    .locals 1
    .param p0, "x0"    # Lewk;

    .prologue
    .line 47
    iget-object v0, p0, Lewk;->j:Leze;

    return-object v0
.end method

.method static synthetic e(Lewk;)I
    .locals 1
    .param p0, "x0"    # Lewk;

    .prologue
    .line 47
    iget v0, p0, Lewk;->h:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewk;->a:Ljava/lang/String;

    const-string/jumbo v4, "enterConference"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 103
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    const-string/jumbo v2, "tele_conf"

    const-string/jumbo v3, "conference_call"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enter conference at  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lewk$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lewk$b;-><init>(Lewk;B)V

    .line 106
    .local v1, "observer":Lewk$b;
    const/16 v2, 0x16

    .line 1319
    iput v2, v1, Lewk$b;->a:I

    .line 107
    iget-object v4, p0, Lewk;->d:Leyc;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v5

    const-string/jumbo v2, "EVENTBUTLER"

    .line 108
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Leyo$d;

    iget-object v6, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v2, v1, v3, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$d;

    .line 2148
    const-class v3, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 2150
    if-eqz v5, :cond_0

    if-nez v3, :cond_1

    .line 2151
    :cond_0
    :goto_0
    return-void

    .line 2153
    :cond_1
    new-instance v6, Leyc$20;

    invoke-direct {v6, v4, v2}, Leyc$20;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v3, v5, v6}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->enterConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 9
    .param p1, "avatar"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 120
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewk;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addMember "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 125
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 127
    new-instance v1, Lewk$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lewk$b;-><init>(Lewk;B)V

    .line 128
    .local v1, "observer":Lewk$b;
    const/16 v2, 0x15

    .line 2319
    iput v2, v1, Lewk$b;->a:I

    .line 129
    iget-object v3, p0, Lewk;->d:Leyc;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    .line 130
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Leyo$d;

    iget-object v6, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v2, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$d;

    .line 129
    invoke-virtual {v3, v4, v2}, Leyc;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 133
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lewk;->j:Leze;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v2, v4, v5, v8, v8}, Leze;->a(JIZ)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v2, p0, Lewk;->c:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 7
    .param p1, "mute"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 178
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lewk;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Mute all members "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 180
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    if-eqz p1, :cond_0

    .line 181
    new-instance v1, Lewk$b;

    invoke-direct {v1, p0, v6}, Lewk$b;-><init>(Lewk;B)V

    .line 182
    .local v1, "observer":Lewk$b;
    const/16 v2, 0x18

    .line 3319
    iput v2, v1, Lewk$b;->a:I

    .line 183
    iget-object v3, p0, Lewk;->d:Leyc;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    .line 184
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Leyo$d;

    iget-object v6, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v2, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$d;

    .line 183
    invoke-virtual {v3, v4, v2}, Leyc;->g(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 191
    :goto_0
    return-void

    .line 186
    .end local v1    # "observer":Lewk$b;
    :cond_0
    new-instance v1, Lewk$b;

    invoke-direct {v1, p0, v6}, Lewk$b;-><init>(Lewk;B)V

    .line 187
    .restart local v1    # "observer":Lewk$b;
    const/16 v2, 0x19

    .line 4319
    iput v2, v1, Lewk$b;->a:I

    .line 188
    iget-object v3, p0, Lewk;->d:Leyc;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    .line 189
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Leyo$d;

    iget-object v6, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v2, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$d;

    .line 188
    invoke-virtual {v3, v4, v2}, Leyc;->h(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 8
    .param p1, "needSuddenly"    # Z
    .param p2, "finishActivity"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 223
    const-string/jumbo v2, "tele_conf"

    const-string/jumbo v3, "conference_call"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "leave conference at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    sget v3, Levh;->c:I

    invoke-virtual {v2, v3}, Levi;->a(I)V

    .line 226
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 227
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    .line 228
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Levi;->a(Ljava/lang/Long;)V

    .line 229
    new-instance v1, Lewk$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lewk$b;-><init>(Lewk;B)V

    .line 230
    .local v1, "observer":Lewk$b;
    const/16 v2, 0x1d

    .line 5319
    iput v2, v1, Lewk$b;->a:I

    .line 231
    iget-object v3, p0, Lewk;->d:Leyc;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    .line 232
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Leyo$d;

    iget-object v6, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v2, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$d;

    .line 231
    invoke-virtual {v3, v4, v2}, Leyc;->c(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 234
    invoke-virtual {p0, p1}, Lewk;->b(Z)V

    .line 236
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "needSuddenly"    # Z

    .prologue
    .line 716
    iget-object v0, p0, Lewk;->i:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lewk;->i:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a(Z)V

    .line 719
    :cond_0
    return-void
.end method

.method public final b(ZZ)V
    .locals 8
    .param p1, "needSuddenly"    # Z
    .param p2, "finishActivity"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 247
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    sget v3, Levh;->c:I

    invoke-virtual {v2, v3}, Levi;->a(I)V

    .line 248
    invoke-static {}, Lewe;->a()Lewe;

    move-result-object v2

    invoke-virtual {v2}, Lewe;->b()V

    .line 249
    const-string/jumbo v2, "tele_conf"

    const-string/jumbo v3, "conference_call"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "terminate conference at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Leyr;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v0

    .line 253
    .local v0, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    new-instance v1, Lewk$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lewk$b;-><init>(Lewk;B)V

    .line 254
    .local v1, "observer":Lewk$b;
    const/16 v2, 0x1c

    .line 6319
    iput v2, v1, Lewk$b;->a:I

    .line 255
    iget-object v3, p0, Lewk;->d:Leyc;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v4

    const-string/jumbo v2, "EVENTBUTLER"

    .line 256
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Leyo$d;

    iget-object v6, p0, Lewk;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-interface {v2, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$d;

    .line 255
    invoke-virtual {v3, v4, v2}, Leyc;->d(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V

    .line 257
    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lewk;->b(Z)V

    .line 260
    :cond_0
    return-void
.end method
