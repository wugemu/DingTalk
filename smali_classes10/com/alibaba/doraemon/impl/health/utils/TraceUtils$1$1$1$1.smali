.class Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1$1;
.super Lifm;
.source "TraceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;->onExecuteRpc(Ljava/lang/Void;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lifm",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;

    .prologue
    .line 133
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1$1;->this$2:Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;

    invoke-direct {p0, p2}, Lifm;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method
