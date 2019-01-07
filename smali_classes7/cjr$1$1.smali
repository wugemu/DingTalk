.class final Lcjr$1$1;
.super Ljava/lang/Object;
.source "FloatWindowShowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjr$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjr$1;


# direct methods
.method constructor <init>(Lcjr$1;)V
    .locals 0
    .param p1, "this$1"    # Lcjr$1;

    .prologue
    .line 78
    iput-object p1, p0, Lcjr$1$1;->a:Lcjr$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcjr$1$1;->a:Lcjr$1;

    iget-object v0, v0, Lcjr$1;->b:Lcjr;

    iget-object v1, p0, Lcjr$1$1;->a:Lcjr$1;

    iget-object v1, v1, Lcjr$1;->a:Lcjs;

    invoke-static {v0, v1}, Lcjr;->a(Lcjr;Lcjs;)V

    .line 82
    return-void
.end method
