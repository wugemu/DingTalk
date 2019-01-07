.class final Lbbn$6;
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
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)I
    .locals 1
    .param p0, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 230
    invoke-static {p0}, Lbkh;->y(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {p0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {p0}, Lbkh;->A(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    invoke-static {p0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 238
    :cond_3
    invoke-static {p0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    invoke-static {p0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    .line 242
    :cond_5
    invoke-static {p0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 173
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    check-cast p2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1177
    if-nez p1, :cond_0

    if-eqz p2, :cond_9

    .line 1181
    :cond_0
    if-nez p1, :cond_2

    move v4, v5

    .line 1213
    :cond_1
    :goto_0
    return v4

    .line 1185
    :cond_2
    if-eqz p2, :cond_1

    .line 1189
    invoke-static {p1}, Lbbn$6;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)I

    move-result v0

    .line 1190
    invoke-static {p2}, Lbbn$6;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)I

    move-result v1

    .line 1191
    if-eq v0, v1, :cond_4

    .line 1192
    if-le v0, v1, :cond_3

    move v0, v4

    :goto_1
    move v4, v0

    .line 173
    goto :goto_0

    :cond_3
    move v4, v5

    .line 1192
    goto :goto_0

    .line 1195
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    .line 1196
    :goto_2
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v2

    .line 1197
    :cond_5
    cmp-long v6, v0, v2

    if-gez v6, :cond_7

    move v4, v5

    .line 1198
    goto :goto_0

    :cond_6
    move-wide v0, v2

    .line 1195
    goto :goto_2

    .line 1201
    :cond_7
    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1205
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v0

    .line 1206
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    .line 1208
    cmp-long v6, v0, v2

    if-lez v6, :cond_8

    move v4, v5

    .line 1209
    goto :goto_0

    .line 1212
    :cond_8
    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1216
    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method
