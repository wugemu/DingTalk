.class final Libs$b;
.super Ljava/lang/ref/SoftReference;
.source "MessageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:J


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;)V
    .locals 2
    .param p1, "r"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 2118
    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 2119
    iget-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iput-wide v0, p0, Libs$b;->a:J

    .line 2120
    iget-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v0, p0, Libs$b;->b:J

    .line 2121
    return-void
.end method
