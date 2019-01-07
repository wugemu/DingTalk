.class final Lhga$2;
.super Ljava/lang/Object;
.source "BeaconDeviceListUtils.java"

# interfaces
.implements Lhgd$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhga;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhga;


# direct methods
.method constructor <init>(Lhga;)V
    .locals 0
    .param p1, "this$0"    # Lhga;

    .prologue
    .line 79
    iput-object p1, p0, Lhga$2;->a:Lhga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 82
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v0

    .line 84
    .local v0, "nowUid":J
    iget-object v2, p0, Lhga$2;->a:Lhga;

    .line 1025
    iget-object v2, v2, Lhga;->a:Ljava/lang/Long;

    .line 84
    if-eqz v2, :cond_0

    iget-object v2, p0, Lhga$2;->a:Lhga;

    .line 2025
    iget-object v2, v2, Lhga;->a:Ljava/lang/Long;

    .line 84
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lhga$2;->a:Lhga;

    .line 3025
    const/4 v3, 0x1

    iput-boolean v3, v2, Lhga;->b:Z

    .line 88
    .end local v0    # "nowUid":J
    :cond_0
    iget-object v2, p0, Lhga$2;->a:Lhga;

    .line 4025
    const/4 v3, 0x0

    iput-object v3, v2, Lhga;->a:Ljava/lang/Long;

    .line 90
    iget-object v2, p0, Lhga$2;->a:Lhga;

    .line 5025
    iget-object v2, v2, Lhga;->c:Lhgd$a$a;

    .line 90
    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lhga$2;->a:Lhga;

    .line 6025
    iget-object v2, v2, Lhga;->c:Lhgd$a$a;

    .line 91
    invoke-interface {v2, p1}, Lhgd$a$a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
