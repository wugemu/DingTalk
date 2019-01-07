.class public final Ldjr;
.super Ljava/lang/Object;
.source "EncryptVoiceDownloadHelper.java"


# static fields
.field private static a:Ldjr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ldjr;

    invoke-direct {v0}, Ldjr;-><init>()V

    sput-object v0, Ldjr;->a:Ldjr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldjr;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldjr;->a:Ldjr;

    return-object v0
.end method


# virtual methods
.method public final a(ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 3
    .param p1, "immediately"    # Z
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ldjr$1;

    invoke-direct {v2, p0, p3, p2}, Ldjr$1;-><init>(Ldjr;Lcma;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLgqr;)V

    .line 61
    return-void
.end method

.method public final a(ZLcom/alibaba/wukong/im/Message;Lcma;)V
    .locals 3
    .param p1, "immediately"    # Z
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/wukong/im/Message;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p2}, Ldrp;->d(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 65
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0, p1, v0, p3}, Ldjr;->a(ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    if-eqz p3, :cond_0

    .line 69
    const-string/jumbo v1, "downLoadFile fail"

    const-string/jumbo v2, "spaceDo null"

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
