.class public abstract Libp$a;
.super Ljava/lang/Object;
.source "AsyncCallbackTaskQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/Callback;J)V
    .locals 0
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Libp$a;->a:Lcom/alibaba/wukong/Callback;

    .line 68
    iput-wide p2, p0, Libp$a;->b:J

    .line 69
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation
.end method
