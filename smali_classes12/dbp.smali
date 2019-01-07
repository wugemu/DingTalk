.class public final Ldbp;
.super Ljava/lang/Object;
.source "AtMeCompare.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 11
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    check-cast p2, Lcom/alibaba/wukong/im/Message;

    .line 1015
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 1019
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 1030
    :cond_1
    :goto_0
    return v0

    .line 1023
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    .line 1024
    goto :goto_0

    .line 1027
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 1029
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    move v0, v1

    .line 1030
    goto :goto_0

    .line 1032
    :cond_4
    const/4 v0, 0x0

    .line 11
    goto :goto_0
.end method
