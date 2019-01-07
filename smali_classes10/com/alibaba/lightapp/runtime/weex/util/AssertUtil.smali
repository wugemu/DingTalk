.class public Lcom/alibaba/lightapp/runtime/weex/util/AssertUtil;
.super Ljava/lang/Object;
.source "AssertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwIfNull(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "e":Ljava/lang/Exception;, "TT;"
    if-nez p0, :cond_0

    .line 213
    throw p1

    .line 215
    :cond_0
    return-void
.end method
