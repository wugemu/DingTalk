.class final Lifo$2;
.super Liaa;
.source "CloudSettingServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lifo;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lifo;


# direct methods
.method constructor <init>(Lifo;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lifo;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Lcom/alibaba/wukong/WKExecutor;

    .prologue
    .line 105
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/util/List<Lcom/alibaba/wukong/settings/CloudSetting;>;>;"
    iput-object p1, p0, Lifo$2;->c:Lifo;

    iput-object p5, p0, Lifo$2;->a:[Ljava/lang/String;

    iput-object p6, p0, Lifo$2;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liaa;-><init>(Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    .line 1108
    iget-object v0, p0, Lifo$2;->c:Lifo;

    invoke-static {v0}, Lifo;->b(Lifo;)Lcom/alibaba/wukong/auth/aq;

    move-result-object v0

    iget-object v1, p0, Lifo$2;->a:[Ljava/lang/String;

    iget-object v2, p0, Lifo$2;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/auth/aq;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1109
    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 105
    return-void
.end method
