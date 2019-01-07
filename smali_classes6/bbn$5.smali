.class final Lbbn$5;
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
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 142
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast p2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1146
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 1149
    :cond_0
    if-nez p1, :cond_2

    .line 1163
    :cond_1
    :goto_0
    return v0

    .line 1152
    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    .line 1153
    goto :goto_0

    .line 1156
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v2

    .line 1157
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v4

    .line 1159
    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 1162
    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    move v0, v1

    .line 1163
    goto :goto_0

    .line 1165
    :cond_4
    const/4 v0, 0x0

    .line 142
    goto :goto_0
.end method
