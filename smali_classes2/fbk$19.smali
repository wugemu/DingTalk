.class public final Lfbk$19;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Lon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lon",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lfbk;


# direct methods
.method public constructor <init>(Lfbk;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 201
    iput-object p1, p0, Lfbk$19;->c:Lfbk;

    iput-object p2, p0, Lfbk$19;->a:Lcma;

    iput-object p3, p0, Lfbk$19;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Loq;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lfbk$19$1;

    invoke-direct {v0, p0}, Lfbk$19$1;-><init>(Lfbk$19;)V

    return-object v0
.end method

.method public final a(Loq;Ljava/util/List;)V
    .locals 2
    .param p1, "listener"    # Loq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loq;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 293
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 294
    .local v0, "userMixIService":Lcom/alibaba/android/user/idl/services/UserMixIService;
    invoke-interface {v0, p2, p1}, Lcom/alibaba/android/user/idl/services/UserMixIService;->getUserProfileByUids(Ljava/util/List;Liyv;)V

    .line 295
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    const-string/jumbo v0, "GROUP_KEY_USERPROFILEREQUEST_MERGE"

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lfbk$19;->b:Ljava/util/List;

    return-object v0
.end method
