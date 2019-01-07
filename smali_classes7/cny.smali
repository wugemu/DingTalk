.class public final Lcny;
.super Ljava/lang/Object;
.source "CallbackMainUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcny$1;

    invoke-direct {v1, p0, p1}, Lcny$1;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    if-nez p0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcny$2;

    invoke-direct {v1, p0, p1, p2}, Lcny$2;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
