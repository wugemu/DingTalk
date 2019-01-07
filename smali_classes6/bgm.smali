.class public final Lbgm;
.super Ljava/lang/Object;
.source "DidoReceptionRpc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
            "Lbdu;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "listener":Lcma;, "Lcma<Ljava/util/List<Lbdu;>;>;"
    new-instance v0, Lbgm$2;

    invoke-direct {v0, p0}, Lbgm$2;-><init>(Lcma;)V

    .line 36
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lbdu;>;Ljava/util/List<Lbdu;>;>;"
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/DidoReceptionIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/DidoReceptionIService;

    invoke-interface {v1, v0}, Lcom/alibaba/android/ding/data/idl/service/DidoReceptionIService;->getCorpList4FaceDevice(Liyv;)V

    .line 37
    return-void
.end method
