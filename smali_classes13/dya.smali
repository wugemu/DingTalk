.class public final Ldya;
.super Ljava/lang/Object;
.source "ImAttractApiImpl.java"

# interfaces
.implements Ldxz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/models/AttractModelObject;Lcma;)V
    .locals 3
    .param p1, "attractModelObject"    # Lcom/alibaba/android/dingtalkim/models/AttractModelObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/models/AttractModelObject;",
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
    .line 22
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Ldya$1;

    invoke-direct {v0, p0, p2}, Ldya$1;-><init>(Ldya;Lcma;)V

    .line 24
    .local v0, "rpcRequestHandler":Lcme;, "Lcme<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/models/AttractModelObject;->toIdl(Lcom/alibaba/android/dingtalkim/models/AttractModelObject;)Ldqk;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;->attractInConversation(Ldqk;Liyv;)V

    .line 25
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;>;"
    new-instance v0, Ldya$2;

    invoke-direct {v0, p0, p2}, Ldya$2;-><init>(Ldya;Lcma;)V

    .line 38
    .local v0, "handler":Lcmg;, "Lcmg<Ldts;Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;>;"
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;->attractInNewFriendScene(Ljava/lang/String;Liyv;)V

    .line 39
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;>;"
    new-instance v0, Ldya$3;

    invoke-direct {v0, p0, p2}, Ldya$3;-><init>(Ldya;Lcma;)V

    .line 51
    .local v0, "handler":Lcmg;, "Lcmg<Ldts;Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;>;"
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;->attractInNewMemberScene(Ljava/lang/String;Liyv;)V

    .line 52
    return-void
.end method
