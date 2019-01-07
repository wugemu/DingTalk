.class final Ldmx$4$1;
.super Ljava/lang/Object;
.source "LuckyTimePlanDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldmx$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldmx$4;


# direct methods
.method constructor <init>(Ldmx$4;)V
    .locals 0
    .param p1, "this$1"    # Ldmx$4;

    .prologue
    .line 207
    iput-object p1, p0, Ldmx$4$1;->a:Ldmx$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    iget-object v0, p0, Ldmx$4$1;->a:Ldmx$4;

    iget-object v0, v0, Ldmx$4;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 211
    return-void
.end method
