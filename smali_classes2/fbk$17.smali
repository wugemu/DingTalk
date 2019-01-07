.class final Lfbk$17;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Lon;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk;->a(Ljava/lang/Long;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lfbk;


# direct methods
.method constructor <init>(Lfbk;Lcma;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 94
    iput-object p1, p0, Lfbk$17;->c:Lfbk;

    iput-object p2, p0, Lfbk$17;->a:Lcma;

    iput-object p3, p0, Lfbk$17;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Loq;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lfbk$17$1;

    invoke-direct {v0, p0}, Lfbk$17$1;-><init>(Lfbk$17;)V

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
    .line 183
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 184
    .local v0, "userMixIService":Lcom/alibaba/android/user/idl/services/UserMixIService;
    iget-object v1, p0, Lfbk$17;->b:Ljava/lang/Long;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/android/user/idl/services/UserMixIService;->getUserProfileByUid(Ljava/lang/Long;Liyv;)V

    .line 185
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "GROUP_KEY_USERPROFILEREQUEST_MERGE"

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lfbk$17;->b:Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-object v0
.end method
