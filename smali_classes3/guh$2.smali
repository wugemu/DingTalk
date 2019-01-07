.class final Lguh$2;
.super Lcmg;
.source "RecruitmentDataRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lguh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lguj;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lguh;


# direct methods
.method constructor <init>(Lguh;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lguh;

    .prologue
    .line 53
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;>;>;"
    iput-object p1, p0, Lguh$2;->a:Lguh;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 53
    check-cast p1, Ljava/util/List;

    .line 1056
    if-nez p1, :cond_0

    .line 1057
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1059
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lguj;

    .line 1061
    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->fromModel(Lguj;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_1

    .line 1065
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 53
    goto :goto_0
.end method
