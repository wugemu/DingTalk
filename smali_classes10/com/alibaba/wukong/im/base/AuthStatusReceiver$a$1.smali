.class final Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a$1;
.super Ljava/lang/Object;
.source "AuthStatusReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a$1;->a:Lcom/alibaba/wukong/im/base/AuthStatusReceiver$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getGroupNickDataCenter()Libf;

    move-result-object v0

    invoke-virtual {v0}, Libf;->b()V

    .line 63
    return-void
.end method
