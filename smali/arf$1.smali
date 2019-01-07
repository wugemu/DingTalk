.class final Larf$1;
.super Ljava/lang/Object;
.source "AllCalendarEventManager.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/objects/ObjectDing$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larf;


# direct methods
.method constructor <init>(Larf;)V
    .locals 0
    .param p1, "this$0"    # Larf;

    .prologue
    .line 50
    iput-object p1, p0, Larf$1;->a:Larf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 53
    .local p1, "orderlyData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .local p2, "orderlessData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v1, p0, Larf$1;->a:Larf;

    .line 1195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    if-eqz p1, :cond_0

    .line 1197
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1199
    :cond_0
    if-eqz p2, :cond_1

    .line 1200
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1203
    :cond_1
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1204
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iput v0, v1, Larf;->c:I

    .line 54
    return-void

    .line 1204
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
