.class public final Lbhk$2;
.super Ljava/lang/Object;
.source "DingRecentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbhk;


# direct methods
.method public constructor <init>(Lbhk;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbhk;

    .prologue
    .line 73
    iput-object p1, p0, Lbhk$2;->b:Lbhk;

    iput-object p2, p0, Lbhk$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lbhk$2;->b:Lbhk;

    invoke-static {v1}, Lbhk;->a(Lbhk;)Lbhd;

    move-result-object v1

    invoke-interface {v1}, Lbhd;->b()Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "recentDingObjectList":Ljava/util/List;, "Ljava/util/List<Lbfx;>;"
    iget-object v1, p0, Lbhk$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 78
    return-void
.end method
