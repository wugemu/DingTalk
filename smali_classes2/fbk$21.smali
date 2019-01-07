.class public final Lfbk$21;
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
        "Ljava/lang/String;",
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
    .line 317
    iput-object p1, p0, Lfbk$21;->c:Lfbk;

    iput-object p2, p0, Lfbk$21;->a:Lcma;

    iput-object p3, p0, Lfbk$21;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Loq;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lfbk$21$1;

    invoke-direct {v0, p0}, Lfbk$21$1;-><init>(Lfbk$21;)V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 417
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/android/user/idl/services/UserMixIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/UserMixIService;

    .line 418
    .local v0, "userMixIService":Lcom/alibaba/android/user/idl/services/UserMixIService;
    iget-object v1, p0, Lfbk$21;->b:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/alibaba/android/user/idl/services/UserMixIService;->getUserProfileByEmails(Ljava/util/List;Liyv;)V

    .line 419
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    const-string/jumbo v0, "GROUP_KEY_USER_PROFILE_EMAIL_REQUEST_MERGE"

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 410
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfbk$21;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    .local v0, "idEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lfbk$21;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 412
    return-object v0
.end method
