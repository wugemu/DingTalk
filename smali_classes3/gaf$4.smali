.class final Lgaf$4;
.super Ljava/lang/Object;
.source "CsDentryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgaf;->d(Lgaf$a;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgaf$a;


# direct methods
.method constructor <init>(Lcma;Lgaf$a;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lgaf$4;->a:Lcma;

    iput-object p2, p0, Lgaf$4;->b:Lgaf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 317
    iget-object v1, p0, Lgaf$4;->a:Lcma;

    if-nez v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lgaf$4;->b:Lgaf$a;

    invoke-virtual {v1}, Lgaf$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 321
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    iget-object v1, p0, Lgaf$4;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
