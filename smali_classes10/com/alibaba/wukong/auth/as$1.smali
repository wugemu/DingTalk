.class Lcom/alibaba/wukong/auth/as$1;
.super Ljava/lang/Object;
.source "SyncDeviceDownTask.java"

# interfaces
.implements Lcom/alibaba/wukong/auth/bb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/auth/as;->process(Lcom/alibaba/wukong/auth/af;Lcom/alibaba/wukong/auth/bb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ba:Lcom/alibaba/wukong/auth/as;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/as;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/as;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/wukong/auth/as$1;->ba:Lcom/alibaba/wukong/auth/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeAckFailed()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/wukong/auth/as$1;->ba:Lcom/alibaba/wukong/auth/as;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/as;->b(Lcom/alibaba/wukong/auth/as;)V

    .line 88
    return-void
.end method

.method public onBeforeAckSuccess()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/wukong/auth/as$1;->ba:Lcom/alibaba/wukong/auth/as;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/as;->a(Lcom/alibaba/wukong/auth/as;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method
