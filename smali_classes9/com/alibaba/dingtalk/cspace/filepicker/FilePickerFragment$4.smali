.class final Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$4;
.super Ljava/lang/Object;
.source "FilePickerFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
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
        "Lgcy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 614
    check-cast p1, Lgcy;

    check-cast p2, Lgcy;

    .line 1618
    iget v3, p1, Lgcy;->d:I

    if-nez v3, :cond_1

    iget v3, p2, Lgcy;->d:I

    if-ne v2, v3, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return v0

    .line 1620
    :cond_1
    iget v3, p1, Lgcy;->d:I

    if-ne v2, v3, :cond_3

    iget v3, p2, Lgcy;->d:I

    if-nez v3, :cond_3

    :cond_2
    move v0, v2

    .line 614
    goto :goto_0

    .line 1622
    :cond_3
    iget v3, p1, Lgcy;->d:I

    if-nez v3, :cond_5

    iget v3, p2, Lgcy;->d:I

    if-nez v3, :cond_5

    .line 1624
    iget-object v2, p1, Lgcy;->a:Ljava/lang/String;

    .line 1625
    iget-object v3, p2, Lgcy;->a:Ljava/lang/String;

    .line 1626
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1630
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1631
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1632
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v4, v5, :cond_4

    .line 1633
    if-eq v0, v1, :cond_4

    .line 1634
    sub-int/2addr v0, v1

    goto :goto_0

    .line 1637
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1640
    :cond_5
    iget-wide v4, p1, Lgcy;->f:J

    .line 1641
    iget-wide v6, p2, Lgcy;->f:J

    .line 1642
    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 1644
    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    .line 1645
    goto :goto_0
.end method
