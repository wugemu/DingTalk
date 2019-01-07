.class final Lfbk$17$1;
.super Loq;
.source "UserProfileRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk$17;->a()Loq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Loq",
        "<",
        "Lcgk;",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lfbk$17;


# direct methods
.method constructor <init>(Lfbk$17;)V
    .locals 0
    .param p1, "this$1"    # Lfbk$17;

    .prologue
    .line 98
    iput-object p1, p0, Lfbk$17$1;->f:Lfbk$17;

    invoke-direct {p0}, Loq;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lfbk$17$1;->f:Lfbk$17;

    iget-object v0, v0, Lfbk$17;->a:Lcma;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfbk$17$1$2;

    invoke-direct {v1, p0, p1}, Lfbk$17$1$2;-><init>(Lfbk$17$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic a(Lfbk$17$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p0, "x0"    # Lfbk$17$1;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lfbk$17$1;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lfbk$17$1;->f:Lfbk$17;

    iget-object v0, v0, Lfbk$17;->a:Lcma;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfbk$17$1$3;

    invoke-direct {v1, p0, p1, p2}, Lfbk$17$1$3;-><init>(Lfbk$17$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 165
    :cond_0
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    check-cast p1, Lcgk;

    .line 2139
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 2140
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2141
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v1

    iget-object v2, p1, Lcgk;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/internal/IMContextEngine;->a(J)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 2143
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfbk$17$1;->a(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1149
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method protected final d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 102
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfbk$17$1;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lfbj;->a()Lfbj;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    new-instance v2, Lfbk$17$1$1;

    invoke-direct {v2, p0}, Lfbk$17$1$1;-><init>(Lfbk$17$1;)V

    invoke-virtual {v1, v0, v2}, Lfbj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    goto :goto_0
.end method
