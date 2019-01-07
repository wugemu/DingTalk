.class final Ljjx$d;
.super Ljava/lang/Object;
.source "PushInstance.java"

# interfaces
.implements Lcom/taobao/living/internal/TBLiveStreamEngineImpl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Ljjx;


# direct methods
.method private constructor <init>(Ljjx;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Ljjx$d;->a:Ljjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljjx;B)V
    .locals 0
    .param p1, "x0"    # Ljjx;

    .prologue
    .line 521
    invoke-direct {p0, p1}, Ljjx$d;-><init>(Ljjx;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V
    .locals 2
    .param p1, "status"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 525
    iget-object v1, p0, Ljjx$d;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljjx$d;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljjx$d;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 527
    iget-object v1, p0, Ljjx$d;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljjx$b;

    invoke-interface {v1, p1}, Ljjx$b;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
