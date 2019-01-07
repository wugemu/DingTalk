.class Lcom/alibaba/laiwang/alive/g$a$1;
.super Ljava/lang/Object;
.source "BasePushChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/alive/g$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/alibaba/laiwang/alive/g$a;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/alive/g$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/laiwang/alive/g$a;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/g$a$1;->o:Lcom/alibaba/laiwang/alive/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/laiwang/alive/g$a$1;->o:Lcom/alibaba/laiwang/alive/g$a;

    iget-object v0, v0, Lcom/alibaba/laiwang/alive/g$a;->n:Lcom/alibaba/laiwang/alive/g;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/alive/g;->stop()V

    .line 157
    return-void
.end method
