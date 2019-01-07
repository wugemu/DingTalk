.class final Lhkx$2;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhkx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhkx;


# direct methods
.method constructor <init>(Lhkx;)V
    .locals 0
    .param p1, "this$0"    # Lhkx;

    .prologue
    .line 146
    iput-object p1, p0, Lhkx$2;->a:Lhkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 149
    iget-object v2, p0, Lhkx$2;->a:Lhkx;

    invoke-static {v2, v6}, Lhkx;->a(Lhkx;Z)Z

    .line 151
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v2

    .line 1214
    iget-object v0, v2, Lhkw;->a:Ljava/util/Map;

    .line 152
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lhky;>;"
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhkx;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "manager stop module size="

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhky;

    .line 154
    .local v1, "module":Lhky;
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lhky;->a()V

    goto :goto_0

    .line 158
    .end local v1    # "module":Lhky;
    :cond_1
    return-void
.end method
