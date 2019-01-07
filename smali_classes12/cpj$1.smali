.class final Lcpj$1;
.super Ljava/lang/Object;
.source "PhoneCallUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcpj;->d(Landroid/content/Context;)Ljava/util/List;
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
        "Lckp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lckp;Lckp;)I
    .locals 6
    .param p0, "o1"    # Lckp;
    .param p1, "o2"    # Lckp;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 672
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-ne p0, p1, :cond_2

    .line 685
    :cond_1
    :goto_0
    return v2

    .line 674
    :cond_2
    if-nez p0, :cond_3

    move v2, v3

    .line 675
    goto :goto_0

    .line 676
    :cond_3
    if-nez p1, :cond_4

    move v2, v4

    .line 677
    goto :goto_0

    .line 1064
    :cond_4
    :try_start_0
    iget v0, p0, Lckp;->b:I

    .line 2064
    .local v0, "slotId1":I
    iget v1, p1, Lckp;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .local v1, "slotId2":I
    if-ge v0, v1, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_1

    move v2, v4

    goto :goto_0

    .line 684
    .end local v0    # "slotId1":I
    .end local v1    # "slotId2":I
    :catch_0
    move-exception v3

    const-string/jumbo v3, "dingtalkbase"

    invoke-static {}, Lcpj;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SlotInfo compare exp"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 668
    check-cast p1, Lckp;

    check-cast p2, Lckp;

    invoke-static {p1, p2}, Lcpj$1;->a(Lckp;Lckp;)I

    move-result v0

    return v0
.end method
