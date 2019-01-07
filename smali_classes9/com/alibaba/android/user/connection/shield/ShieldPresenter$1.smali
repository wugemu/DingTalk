.class final Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a(J)V
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
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    iput-wide p2, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->a:J

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
    .line 55
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    .line 2034
    iget-object v0, v0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    .line 1058
    if-eqz v0, :cond_0

    .line 1061
    if-nez p1, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;J)V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->hasMore()Z

    move-result v1

    .line 3034
    iput-boolean v1, v0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->b:Z

    .line 1068
    invoke-virtual {p1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 1069
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;J)V

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->a:J

    .line 4110
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 4111
    iput-object v0, v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->c:Ljava/util/List;

    .line 1076
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    .line 5034
    iget-object v0, v0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a:Lffa;

    .line 1076
    iget-object v1, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    .line 6034
    iget-object v1, v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->c:Ljava/util/List;

    .line 1076
    invoke-interface {v0, v1}, Lffa;->a(Ljava/util/List;)V

    goto :goto_0

    .line 4113
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->c:Ljava/util/List;

    if-nez v2, :cond_4

    .line 4114
    iput-object v0, v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->c:Ljava/util/List;

    goto :goto_1

    .line 4116
    :cond_4
    iget-object v1, v1, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/connection/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/user/connection/shield/ShieldPresenter;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/connection/shield/ShieldPresenter;->a(Lcom/alibaba/android/user/connection/shield/ShieldPresenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 82
    return-void
.end method
