.class final Ldmx$3;
.super Ljava/lang/Object;
.source "LuckyTimePlanDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ldmx;


# direct methods
.method constructor <init>(Ldmx;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldmx;

    .prologue
    .line 180
    iput-object p1, p0, Ldmx$3;->c:Ldmx;

    iput-object p2, p0, Ldmx$3;->a:Ljava/lang/String;

    iput-object p3, p0, Ldmx$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    iget-object v1, p0, Ldmx$3;->c:Ldmx;

    .line 1037
    iget-object v1, v1, Ldmx;->a:Ljava/util/Map;

    .line 183
    iget-object v2, p0, Ldmx$3;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Ldmx$3;->c:Ldmx;

    .line 2037
    iget-object v1, v1, Ldmx;->a:Ljava/util/Map;

    .line 184
    iget-object v2, p0, Ldmx$3;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmw;

    .line 185
    .local v0, "listener":Ldmw;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Ldmx$3;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ldmw;->a(Ljava/util/List;)V

    .line 189
    .end local v0    # "listener":Ldmw;
    :cond_0
    return-void
.end method
