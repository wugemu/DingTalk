.class final Lifo$3;
.super Liaa;
.source "CloudSettingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lifo;->a(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liaa",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lifo;


# direct methods
.method constructor <init>(Lifo;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;J)V
    .locals 1
    .param p1, "this$0"    # Lifo;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Lcom/alibaba/wukong/WKExecutor;

    .prologue
    .line 117
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lifo$3;->b:Lifo;

    iput-wide p5, p0, Lifo$3;->a:J

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    .line 1120
    iget-object v0, p0, Lifo$3;->b:Lifo;

    invoke-static {v0}, Lifo;->a(Lifo;)Lcom/alibaba/wukong/auth/ar;

    move-result-object v0

    iget-wide v2, p0, Lifo$3;->a:J

    invoke-virtual {v0, v2, v3, p2}, Lcom/alibaba/wukong/auth/ar;->b(JLcom/alibaba/wukong/Callback;)V

    .line 117
    return-void
.end method
