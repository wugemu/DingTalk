.class final Lflr$3$2;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflr$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflr$3;


# direct methods
.method constructor <init>(Lflr$3;)V
    .locals 0
    .param p1, "this$0"    # Lflr$3;

    .prologue
    .line 277
    iput-object p1, p0, Lflr$3$2;->a:Lflr$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v0, p0, Lflr$3$2;->a:Lflr$3;

    iget-object v0, v0, Lflr$3;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method
