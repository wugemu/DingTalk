.class final Lbbn$1;
.super Ljava/lang/Object;
.source "DingComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 35
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast p2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1038
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 1039
    :goto_0
    if-nez p2, :cond_1

    .line 1040
    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 1041
    const/4 v0, 0x1

    .line 1043
    :goto_2
    return v0

    .line 1038
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v2

    goto :goto_0

    .line 1039
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v0

    goto :goto_1

    .line 1042
    :cond_2
    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1043
    const/4 v0, 0x0

    goto :goto_2

    .line 1045
    :cond_3
    const/4 v0, -0x1

    .line 35
    goto :goto_2
.end method
