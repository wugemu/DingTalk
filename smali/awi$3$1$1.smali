.class final Lawi$3$1$1;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawi$3$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lawi$3$1;


# direct methods
.method constructor <init>(Lawi$3$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lawi$3$1;

    .prologue
    .line 370
    iput-object p1, p0, Lawi$3$1$1;->b:Lawi$3$1;

    iput-object p2, p0, Lawi$3$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 373
    iget-object v0, p0, Lawi$3$1$1;->b:Lawi$3$1;

    iget-object v0, v0, Lawi$3$1;->a:Lawi$3;

    iget-object v0, v0, Lawi$3;->d:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lawi$3$1$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 374
    return-void
.end method
