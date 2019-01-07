.class final Lcjq$1;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjq;


# direct methods
.method constructor <init>(Lcjq;)V
    .locals 0
    .param p1, "this$0"    # Lcjq;

    .prologue
    .line 49
    iput-object p1, p0, Lcjq$1;->a:Lcjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {}, Lcjr;->a()Lcjr;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, v1}, Lcjr;->a(Lcjr$a;)V

    .line 53
    iget-object v0, p0, Lcjq$1;->a:Lcjq;

    invoke-static {v0, v1}, Lcjq;->a(Lcjq;Lcjs;)Lcjs;

    .line 54
    return-void
.end method

.method public final onEnterForeground()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
