.class public final Lfbk;
.super Lop;
.source "UserProfileRPC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfbk$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lop;-><init>()V

    .line 651
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;Lcma;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 94
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v0, Lfbk$17;

    invoke-direct {v0, p0, p2, p1}, Lfbk$17;-><init>(Lfbk;Lcma;Ljava/lang/Long;)V

    .line 187
    .local v0, "task":Lon;, "Lon<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/internal/IMContextEngine;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const-string/jumbo v1, "IMContextEngine"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfbk$18;

    invoke-direct {v2, p0, v0}, Lfbk$18;-><init>(Lfbk;Lon;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, v0}, Lfbk;->a(Lon;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 689
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v0, Lfbk$16;

    invoke-direct {v0, p0, p2}, Lfbk$16;-><init>(Lfbk;Lcma;)V

    .line 695
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/UserIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UserIService;

    .line 696
    .local v1, "userIService":Lcom/alibaba/android/user/idl/services/UserIService;
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 697
    :cond_0
    if-eqz p2, :cond_1

    .line 698
    const-string/jumbo v2, "CODE001"

    const-string/jumbo v3, "INVALID ARGUMENTS"

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_1
    :goto_0
    return-void

    .line 702
    :cond_2
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/UserIService;->getUserMobile(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
