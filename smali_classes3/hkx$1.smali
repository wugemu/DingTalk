.class final Lhkx$1;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhkx;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhkx;


# direct methods
.method constructor <init>(Lhkx;I)V
    .locals 0
    .param p1, "this$0"    # Lhkx;

    .prologue
    .line 103
    iput-object p1, p0, Lhkx$1;->b:Lhkx;

    iput p2, p0, Lhkx$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 107
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v2

    .line 1227
    const-string/jumbo v3, "attendance"

    const-string/jumbo v4, "AutoAttendanceDataManager"

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "tryLoadData, size="

    aput-object v6, v5, v8

    iget-object v6, v2, Lhkw;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v3, v2, Lhkw;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    invoke-virtual {v2}, Lhkw;->b()V

    .line 1233
    :cond_0
    iget-object v3, v2, Lhkw;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1234
    const-string/jumbo v3, "attendance"

    const-string/jumbo v4, "AutoAttendanceDataManager"

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "tryLoadData 2 times"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v2}, Lhkw;->b()V

    .line 109
    :cond_1
    iget-object v2, p0, Lhkx$1;->b:Lhkx;

    invoke-static {v2, v7}, Lhkx;->a(Lhkx;Z)Z

    .line 111
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v2

    .line 2214
    iget-object v0, v2, Lhkw;->a:Ljava/util/Map;

    .line 113
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lhky;>;"
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhkx;->a:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "[autoAttendance] manager start module size="

    aput-object v5, v4, v8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhky;

    .line 115
    .local v1, "module":Lhky;
    if-eqz v1, :cond_2

    .line 116
    iget v3, p0, Lhkx$1;->a:I

    invoke-virtual {v1, v3}, Lhky;->a(I)V

    goto :goto_0

    .line 119
    .end local v1    # "module":Lhky;
    :cond_3
    return-void
.end method
