.class public final Lhkx$5;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhkx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhkx;


# direct methods
.method public constructor <init>(Lhkx;)V
    .locals 0
    .param p1, "this$0"    # Lhkx;

    .prologue
    .line 266
    iput-object p1, p0, Lhkx$5;->a:Lhkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 270
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "onEnterBackground"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lhkx$5;->a:Lhkx;

    invoke-static {v0}, Lhkx;->c(Lhkx;)V

    .line 272
    return-void
.end method

.method public final onEnterForeground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 277
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "onEnterForeground"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "onEnterForeground login success."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    .line 1093
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhkx;->a(I)V

    .line 286
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhkx$5$1;

    invoke-direct {v1, p0}, Lhkx$5$1;-><init>(Lhkx$5;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void

    .line 282
    :cond_0
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhkx;->a:Ljava/lang/String;

    const-string/jumbo v2, "onEnterForeground login failure."

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
