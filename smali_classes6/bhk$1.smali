.class public final Lbhk$1;
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
    .line 60
    iput-object p1, p0, Lbhk$1;->b:Lbhk;

    iput-object p2, p0, Lbhk$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 63
    iget-object v1, p0, Lbhk$1;->b:Lbhk;

    invoke-static {v1}, Lbhk;->a(Lbhk;)Lbhd;

    move-result-object v1

    invoke-interface {v1}, Lbhd;->a()I

    move-result v0

    .line 64
    .local v0, "countOfRecentDing":I
    iget-object v2, p0, Lbhk$1;->a:Lcom/alibaba/wukong/Callback;

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
