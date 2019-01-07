.class final Lhhd$3;
.super Ljava/lang/Object;
.source "FCPlanExecutor.java"

# interfaces
.implements Lcit$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhd;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lhhd;


# direct methods
.method constructor <init>(Lhhd;J)V
    .locals 0
    .param p1, "this$0"    # Lhhd;

    .prologue
    .line 269
    iput-object p1, p0, Lhhd$3;->b:Lhhd;

    iput-wide p2, p0, Lhhd$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceiver(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v1, 0x0

    .line 273
    const-string/jumbo v2, "FCPlanExecutor"

    const-string/jumbo v3, "tryCheckin scan"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "planId"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Lhhd$3;->b:Lhhd;

    iget-object v6, v6, Lhhd;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "scanWifi.size"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-static {p1}, Lhha;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 275
    .local v0, "wifiInfoModels":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    iget-object v1, p0, Lhhd$3;->b:Lhhd;

    iget-wide v2, p0, Lhhd$3;->a:J

    invoke-static {v1, v0, v2, v3}, Lhhd;->a(Lhhd;Ljava/util/List;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lhhd$3;->b:Lhhd;

    iget-wide v2, p0, Lhhd$3;->a:J

    invoke-static {v1, v2, v3}, Lhhd;->a(Lhhd;J)V

    .line 278
    :cond_0
    return-void

    .line 273
    .end local v0    # "wifiInfoModels":Ljava/util/List;, "Ljava/util/List<Lhkj;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method
