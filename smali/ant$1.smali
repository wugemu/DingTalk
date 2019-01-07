.class final Lant$1;
.super Ljava/lang/Object;
.source "AdsReceiveHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lant;->onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lant;


# direct methods
.method constructor <init>(Lant;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lant;

    .prologue
    .line 48
    iput-object p1, p0, Lant$1;->b:Lant;

    iput-object p2, p0, Lant$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 51
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v2

    invoke-virtual {v2}, Lanm;->b()V

    .line 52
    iget-object v2, p0, Lant$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lans;

    .line 53
    .local v0, "adsPositionsModel":Lans;
    invoke-static {v0}, Lcom/alibaba/android/ads/model/AdsPositionsObject;->fromIDLModel(Lans;)Lcom/alibaba/android/ads/model/AdsPositionsObject;

    move-result-object v1

    .line 54
    .local v1, "adsPositionsObject":Lcom/alibaba/android/ads/model/AdsPositionsObject;
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lanm;->b(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V

    .line 55
    invoke-static {}, Lanm;->a()Lanm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lanm;->a(Lcom/alibaba/android/ads/model/AdsPositionsObject;)V

    goto :goto_0

    .line 57
    .end local v0    # "adsPositionsModel":Lans;
    .end local v1    # "adsPositionsObject":Lcom/alibaba/android/ads/model/AdsPositionsObject;
    :cond_0
    return-void
.end method
