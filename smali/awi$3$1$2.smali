.class final Lawi$3$1$2;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawi$3$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lawi$3$1;


# direct methods
.method constructor <init>(Lawi$3$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lawi$3$1;

    .prologue
    .line 380
    iput-object p1, p0, Lawi$3$1$2;->c:Lawi$3$1;

    iput-object p2, p0, Lawi$3$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lawi$3$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 383
    iget-object v0, p0, Lawi$3$1$2;->c:Lawi$3$1;

    iget-object v0, v0, Lawi$3$1;->a:Lawi$3;

    iget-object v0, v0, Lawi$3;->d:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lawi$3$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lawi$3$1$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method
