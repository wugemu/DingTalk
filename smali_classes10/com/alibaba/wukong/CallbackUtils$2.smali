.class final Lcom/alibaba/wukong/CallbackUtils$2;
.super Ljava/lang/Object;
.source "CallbackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/wukong/CallbackUtils$2;->val$callback:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Lcom/alibaba/wukong/CallbackUtils$2;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/wukong/CallbackUtils$2;->val$callback:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/wukong/CallbackUtils$2;->val$object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
