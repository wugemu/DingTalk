.class public final Lhkx$3;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhkx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhkx;


# direct methods
.method public constructor <init>(Lhkx;)V
    .locals 0
    .param p1, "this$0"    # Lhkx;

    .prologue
    .line 167
    iput-object p1, p0, Lhkx$3;->a:Lhkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 170
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v4, "manager clear"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lhkx$3;->a:Lhkx;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhkx;->a(Lhkx;Z)Z

    .line 174
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v2

    .line 1214
    iget-object v0, v2, Lhkw;->a:Ljava/util/Map;

    .line 175
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lhky;>;"
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

    .line 176
    .local v1, "module":Lhky;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lhky;->a()V

    goto :goto_0

    .line 181
    .end local v1    # "module":Lhky;
    :cond_1
    iget-object v2, p0, Lhkx$3;->a:Lhkx;

    invoke-static {v2}, Lhkx;->a(Lhkx;)V

    .line 182
    invoke-static {}, Lhpw;->a()Lhpw;

    move-result-object v2

    .line 1226
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lhpw$4;

    invoke-direct {v4, v2}, Lhpw$4;-><init>(Lhpw;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 184
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v2

    .line 2218
    iget-object v2, v2, Lhkw;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 185
    return-void
.end method
