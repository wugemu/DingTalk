.class final Lcom/alibaba/android/search/service/SearchHistoryManager$1;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "SearchHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/service/SearchHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/service/SearchHistoryManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/service/SearchHistoryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$1;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$1;->a:Lcom/alibaba/android/search/service/SearchHistoryManager;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Lcom/alibaba/android/search/service/SearchHistoryManager;Ljava/util/List;)V

    .line 86
    return-void
.end method
