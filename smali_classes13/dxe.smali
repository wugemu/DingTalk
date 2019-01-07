.class public final Ldxe;
.super Ljava/lang/Object;
.source "AnnounceAPIImpl.java"

# interfaces
.implements Ldxd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ldtl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    .local p2, "callback":Lcma;, "Lcma<Ldtl;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v0, Ldxe$1;

    invoke-direct {v0, p0, p2}, Ldxe$1;-><init>(Ldxe;Lcma;)V

    .line 37
    .local v0, "handler":Lcme;, "Lcme<Ldtl;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;

    .line 38
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;->getGroupAnnounce(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ldtn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    .local p3, "callback":Lcma;, "Lcma<Ldtn;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v1, Ldxe$3;

    invoke-direct {v1, p0, p3}, Ldxe$3;-><init>(Ldxe;Lcma;)V

    .line 65
    .local v1, "handler":Lcme;, "Lcme<Ldtn;>;"
    const-class v4, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;

    .line 66
    .local v3, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;
    if-eqz v3, :cond_0

    .line 69
    new-instance v2, Ldtm;

    invoke-direct {v2}, Ldtm;-><init>()V

    .line 70
    .local v2, "m":Ldtm;
    iput-object p1, v2, Ldtm;->a:Ljava/lang/String;

    .line 71
    new-instance v0, Ldtk;

    invoke-direct {v0}, Ldtk;-><init>()V

    .line 72
    .local v0, "content":Ldtk;
    iput-object p2, v0, Ldtk;->b:Ljava/lang/String;

    .line 73
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Ldtk;->a:Ljava/lang/Integer;

    .line 74
    iput-object v0, v2, Ldtm;->b:Ldtk;

    .line 75
    invoke-interface {v3, v2, v1}, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;->sendOrUpdateGroupAnnounce(Ldtm;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ldxe$2;

    invoke-direct {v0, p0, p2}, Ldxe$2;-><init>(Ldxe;Lcma;)V

    .line 50
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;

    .line 51
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;
    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;->deleteGroupAnnounce(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
