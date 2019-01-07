.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;
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
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1105
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    check-cast p2, Lcom/alibaba/wukong/im/Message;

    .line 2108
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2113
    :cond_0
    :goto_0
    return v0

    .line 2111
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    .line 2112
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    .line 2113
    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 1105
    goto :goto_0
.end method
