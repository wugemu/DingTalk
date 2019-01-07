.class final Ldvj$3;
.super Ljava/lang/Object;
.source "MessageSelectHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldvj;


# direct methods
.method constructor <init>(Ldvj;)V
    .locals 0
    .param p1, "this$0"    # Ldvj;

    .prologue
    .line 148
    iput-object p1, p0, Ldvj$3;->a:Ldvj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    check-cast p2, Lcom/alibaba/wukong/im/Message;

    .line 1151
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1152
    const/4 v0, 0x1

    .line 1154
    :goto_0
    return v0

    .line 1153
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1154
    const/4 v0, -0x1

    goto :goto_0

    .line 1156
    :cond_1
    const/4 v0, 0x0

    .line 148
    goto :goto_0
.end method
