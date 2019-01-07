.class final Lcjr$1;
.super Ljava/lang/Object;
.source "FloatWindowShowManager.java"

# interfaces
.implements Lcjr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjs;

.field final synthetic b:Lcjr;


# direct methods
.method constructor <init>(Lcjr;Lcjs;)V
    .locals 0
    .param p1, "this$0"    # Lcjr;

    .prologue
    .line 74
    iput-object p1, p0, Lcjr$1;->b:Lcjr;

    iput-object p2, p0, Lcjr$1;->a:Lcjs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcjr$1$1;

    invoke-direct {v1, p0}, Lcjr$1$1;-><init>(Lcjr$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
