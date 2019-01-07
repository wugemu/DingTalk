.class final Lbbm$1;
.super Ljava/lang/Object;
.source "DingCommentRemindMergeData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbm;
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
        "Lbeq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbm;


# direct methods
.method constructor <init>(Lbbm;)V
    .locals 0
    .param p1, "this$0"    # Lbbm;

    .prologue
    .line 90
    iput-object p1, p0, Lbbm$1;->a:Lbbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 90
    check-cast p1, Lbeq;

    check-cast p2, Lbeq;

    .line 1116
    iget-wide v0, p2, Lbeq;->f:J

    .line 2116
    iget-wide v2, p1, Lbeq;->f:J

    .line 1094
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1095
    const/4 v0, 0x1

    .line 1097
    :goto_0
    return v0

    .line 3116
    :cond_0
    iget-wide v0, p2, Lbeq;->f:J

    .line 4116
    iget-wide v2, p1, Lbeq;->f:J

    .line 1096
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1097
    const/4 v0, 0x0

    goto :goto_0

    .line 1099
    :cond_1
    const/4 v0, -0x1

    .line 90
    goto :goto_0
.end method
