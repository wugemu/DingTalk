.class final Lgpr$2;
.super Ljava/lang/Object;
.source "CSpaceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpr;->a(Ljava/lang/Object;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcma;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1487
    iput-object p1, p0, Lgpr$2;->a:Lcma;

    iput-object p2, p0, Lgpr$2;->b:Ljava/lang/Object;

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
    .line 1490
    iget-object v0, p0, Lgpr$2;->a:Lcma;

    if-nez v0, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-object v0, p0, Lgpr$2;->a:Lcma;

    iget-object v1, p0, Lgpr$2;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
