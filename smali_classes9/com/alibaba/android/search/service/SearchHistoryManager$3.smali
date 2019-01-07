.class final Lcom/alibaba/android/search/service/SearchHistoryManager$3;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/service/SearchHistoryManager;
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
        "Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/service/SearchHistoryManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/service/SearchHistoryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$3;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    check-cast p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    check-cast p2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;

    .line 1109
    iget-wide v0, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    iget-wide v2, p2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1110
    const/4 v0, -0x1

    .line 1112
    :goto_0
    return v0

    .line 1111
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    iget-wide v2, p2, Lcom/alibaba/android/search/service/SearchHistoryManager$HistoryItem;->timestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1112
    const/4 v0, 0x1

    goto :goto_0

    .line 1114
    :cond_1
    const/4 v0, 0x0

    .line 106
    goto :goto_0
.end method
