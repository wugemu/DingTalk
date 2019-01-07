.class public Lehu;
.super Ljava/lang/Object;
.source "MeetingRoomIServiceImpl.java"


# static fields
.field private static a:J

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lehu;->a:J

    .line 44
    const-class v0, Lehu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lehu;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lehu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    if-nez p0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 248
    .local v0, "service":Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Lehu$2;

    invoke-direct {v1, p0}, Lehu$2;-><init>(Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->getVideoDeviceResultList(Liyv;)V

    goto :goto_0
.end method

.method public static a(Legu;Lcma;)V
    .locals 2
    .param p0, "reqModel"    # Legu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legu;",
            "Lcma",
            "<",
            "Legv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "listener":Lcma;, "Lcma<Legv;>;"
    if-nez p0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 224
    .local v0, "service":Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Lehu$7;

    invoke-direct {v1, p1}, Lehu$7;-><init>(Lcma;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->getConfig(Legu;Liyv;)V

    goto :goto_0
.end method

.method public static a(Legz;Lcma;)V
    .locals 2
    .param p0, "localShareCreateModel"    # Legz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Legz;",
            "Lcma",
            "<",
            "Lehi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "listener":Lcma;, "Lcma<Lehi;>;"
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 48
    .local v0, "service":Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Lehu$1;

    invoke-direct {v1, p1}, Lehu$1;-><init>(Lcma;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->LocalShareCreate(Legz;Liyv;)V

    .line 65
    :cond_0
    return-void
.end method

.method public static a(Leha;Lcma;)V
    .locals 6
    .param p0, "indicationModel"    # Leha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leha;",
            "Lcma",
            "<",
            "Lehb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "listener":Lcma;, "Lcma<Lehb;>;"
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 192
    .local v0, "service":Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Lehu$6;

    invoke-direct {v1, p1}, Lehu$6;-><init>(Lcma;)V

    .line 1209
    new-instance v2, Lhzx;

    invoke-direct {v2}, Lhzx;-><init>()V

    .line 2042
    sget-wide v4, Lehu;->a:J

    .line 2043
    iput-wide v4, v2, Lhzx;->a:J

    .line 1211
    invoke-virtual {v1, v2}, Lehu$6;->addBeforeFiler(Liyt;)V

    .line 193
    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->localShareStatusIndicationV2(Leha;Liyv;)V

    .line 217
    :cond_0
    return-void
.end method

.method public static a(Lehe;Lcma;)V
    .locals 2
    .param p0, "statusModel"    # Lehe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehe;",
            "Lcma",
            "<",
            "Lehe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "listener":Lcma;, "Lcma<Lehe;>;"
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 171
    .local v0, "service":Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Lehu$5;

    invoke-direct {v1, p1}, Lehu$5;-><init>(Lcma;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->queryMeetingUsersStatus(Lehe;Liyv;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static a(Lehh;Lcma;)V
    .locals 2
    .param p0, "remoteShareCreateModel"    # Lehh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehh;",
            "Lcma",
            "<",
            "Lehi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "listener":Lcma;, "Lcma<Lehi;>;"
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 68
    .local v0, "service":Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lehu$3;

    invoke-direct {v1, p1}, Lehu$3;-><init>(Lcma;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->RemoteShareCreate(Lehh;Liyv;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static a(Lehj;Lcma;)V
    .locals 2
    .param p0, "shareTerminateModel"    # Lehj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lehj;",
            "Lcma",
            "<",
            "Lehk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "listener":Lcma;, "Lcma<Lehk;>;"
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 89
    .local v0, "service":Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;
    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Lehu$4;

    invoke-direct {v1, p1}, Lehu$4;-><init>(Lcma;)V

    invoke-interface {v0, p0, v1}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->ShareTerminate(Lehj;Liyv;)V

    .line 106
    :cond_0
    return-void
.end method
