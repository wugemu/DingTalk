.class final Ldxo$4;
.super Lcmg;
.source "EmotionPackageAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxo;->a(Lcma;)V
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
        "Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxo;


# direct methods
.method constructor <init>(Ldxo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxo;

    .prologue
    .line 123
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;>;"
    iput-object p1, p0, Ldxo$4;->a:Ldxo;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    check-cast p1, Ljava/util/List;

    .line 1126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;

    .line 1129
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->fromIdl(Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_0

    .line 1131
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    return-object v1
.end method
