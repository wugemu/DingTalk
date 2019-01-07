.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 760
    check-cast p1, Ljava/util/List;

    .line 1763
    if-eqz p1, :cond_3

    .line 1764
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1765
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 1766
    iget-object v3, v0, Lcgc;->b:Lcet;

    iget-object v3, v3, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1770
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1771
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcgc;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v0

    iput-object v0, v1, Lcgc;->a:Lcgk;

    goto :goto_1

    .line 1773
    :cond_1
    new-instance v1, Lcgc;

    invoke-direct {v1}, Lcgc;-><init>()V

    .line 1774
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->toIDLModel()Lcgk;

    move-result-object v0

    iput-object v0, v1, Lcgc;->a:Lcgk;

    .line 1775
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1779
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;->e:Lcma;

    if-eqz v0, :cond_3

    .line 1780
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31$1;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$31;->e:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 760
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 793
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 788
    return-void
.end method
