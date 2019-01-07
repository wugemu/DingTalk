.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$4;
.super Ljava/lang/Object;
.source "RecommendListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/devtools/RecommendListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$4;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    check-cast p1, Ljava/util/List;

    .line 1119
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/devtools/RecommendListActivity$4$1;-><init>(Lcom/alibaba/android/search/devtools/RecommendListActivity$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method
