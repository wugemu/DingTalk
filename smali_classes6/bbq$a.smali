.class final Lbbq$a;
.super Ljava/lang/Object;
.source "DingDataSetChangedNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbbq;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;


# direct methods
.method public constructor <init>(Lbbq;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2, "t"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
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

    .prologue
    .line 309
    .local p3, "orderly":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .local p4, "orderless":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iput-object p1, p0, Lbbq$a;->a:Lbbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lbbq$a;->d:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 311
    iput-object p3, p0, Lbbq$a;->b:Ljava/util/List;

    .line 312
    iput-object p4, p0, Lbbq$a;->c:Ljava/util/List;

    .line 313
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 317
    iget-object v2, p0, Lbbq$a;->a:Lbbq;

    .line 1027
    iget-object v2, v2, Lbbq;->b:Ljava/util/Map;

    .line 317
    iget-object v3, p0, Lbbq$a;->d:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 318
    .local v1, "observers":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/android/ding/base/objects/ObjectDing$a;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .line 319
    .local v0, "event":Lcom/alibaba/android/ding/base/objects/ObjectDing$a;
    if-eqz v0, :cond_0

    .line 320
    iget-object v3, p0, Lbbq$a;->b:Ljava/util/List;

    iget-object v4, p0, Lbbq$a;->c:Ljava/util/List;

    invoke-interface {v0, v3, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 323
    .end local v0    # "event":Lcom/alibaba/android/ding/base/objects/ObjectDing$a;
    :cond_1
    return-void
.end method
