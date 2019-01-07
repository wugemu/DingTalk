.class final Ldxo$1;
.super Lcmg;
.source "EmotionPackageAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxo;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;",
        "Ldrf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxo;


# direct methods
.method constructor <init>(Ldxo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxo;

    .prologue
    .line 63
    .local p2, "x0":Lcma;, "Lcma<Ldrf;>;"
    iput-object p1, p0, Ldxo$1;->a:Ldxo;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;

    .line 2037
    if-nez p1, :cond_0

    .line 2038
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2041
    :cond_0
    new-instance v1, Ldrf;

    invoke-direct {v1}, Ldrf;-><init>()V

    .line 2042
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;->emotionPackages:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;->emotionPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2043
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2044
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;->emotionPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;

    .line 2045
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->fromIdl(Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v0

    .line 2046
    if-eqz v0, :cond_1

    .line 2047
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2050
    :cond_2
    iput-object v2, v1, Ldrf;->a:Ljava/util/List;

    .line 2052
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;->version:Ljava/lang/Long;

    .line 3044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2052
    iput-wide v2, v1, Ldrf;->b:J

    move-object v0, v1

    .line 63
    goto :goto_0
.end method
