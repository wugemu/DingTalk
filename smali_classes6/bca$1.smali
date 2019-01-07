.class final Lbca$1;
.super Ljava/lang/Object;
.source "CommentDataSourceRemote.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbca;
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
        "Lcom/alibaba/android/ding/base/objects/CommentObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 28
    check-cast p1, Lcom/alibaba/android/ding/base/objects/CommentObject;

    check-cast p2, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 1031
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 1032
    :goto_0
    if-nez p2, :cond_1

    .line 1033
    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 1034
    const/4 v0, 0x1

    .line 1036
    :goto_2
    return v0

    .line 1031
    :cond_0
    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    goto :goto_0

    .line 1032
    :cond_1
    iget-wide v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    goto :goto_1

    .line 1035
    :cond_2
    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1036
    const/4 v0, 0x0

    goto :goto_2

    .line 1038
    :cond_3
    const/4 v0, -0x1

    .line 28
    goto :goto_2
.end method
