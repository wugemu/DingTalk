.class final Lhca$1;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhca;->b()Ljava/util/List;
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
        "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhca;


# direct methods
.method constructor <init>(Lhca;)V
    .locals 0
    .param p1, "this$0"    # Lhca;

    .prologue
    .line 188
    iput-object p1, p0, Lhca$1;->a:Lhca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 188
    check-cast p1, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    check-cast p2, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 1191
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getSelectedTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getSelectedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1192
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 1193
    const/4 v0, -0x1

    .line 1195
    :goto_0
    return v0

    .line 1194
    :cond_0
    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 1195
    const/4 v0, 0x0

    goto :goto_0

    .line 1197
    :cond_1
    const/4 v0, 0x1

    .line 188
    goto :goto_0
.end method
