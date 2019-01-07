.class final Lcom/alibaba/wukong/CallbackUtils$1;
.super Ljava/lang/Object;
.source "CallbackUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/wukong/CallbackUtils$1;->val$callback:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Lcom/alibaba/wukong/CallbackUtils$1;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/wukong/CallbackUtils$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/wukong/CallbackUtils$1;->val$callback:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/wukong/CallbackUtils$1;->val$code:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/CallbackUtils$1;->val$reason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
