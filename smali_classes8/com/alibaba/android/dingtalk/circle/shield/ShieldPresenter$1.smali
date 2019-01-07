.class final Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;
.super Ljava/lang/Object;
.source "ShieldPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a(J)V
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
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .line 2032
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    .line 1056
    if-eqz v0, :cond_0

    .line 1059
    if-nez p1, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;J)V

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->hasMore()Z

    move-result v1

    .line 3032
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->b:Z

    .line 1066
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v0

    .line 1067
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;J)V

    goto :goto_0

    .line 1072
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->a:J

    .line 4108
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 4109
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->c:Ljava/util/List;

    .line 1074
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .line 5032
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a:Lbqe;

    .line 1074
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    .line 6032
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->c:Ljava/util/List;

    .line 1074
    invoke-interface {v0, v1}, Lbqe;->a(Ljava/util/List;)V

    goto :goto_0

    .line 4111
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->c:Ljava/util/List;

    if-nez v2, :cond_4

    .line 4112
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->c:Ljava/util/List;

    goto :goto_1

    .line 4114
    :cond_4
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$1;->b:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;->a(Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 80
    return-void
.end method
