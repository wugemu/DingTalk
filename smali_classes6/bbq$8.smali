.class final Lbbq$8;
.super Ljava/lang/Object;
.source "DingDataSetChangedNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbq;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic c:Lbbq;


# direct methods
.method constructor <init>(Lbbq;JLcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbq;

    .prologue
    .line 198
    iput-object p1, p0, Lbbq$8;->c:Lbbq;

    iput-wide p2, p0, Lbbq$8;->a:J

    iput-object p4, p0, Lbbq$8;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 201
    iget-object v2, p0, Lbbq$8;->c:Lbbq;

    .line 1027
    iget-object v2, v2, Lbbq;->k:Ljava/util/Map;

    .line 201
    iget-wide v4, p0, Lbbq$8;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 202
    .local v1, "observers":Ljava/util/Set;, "Ljava/util/Set<Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    if-eqz v1, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckm$a;

    .line 204
    .local v0, "observer":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    .line 205
    iget-object v3, p0, Lbbq$8;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0, v3}, Lckm$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    .end local v0    # "observer":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_1
    return-void
.end method
