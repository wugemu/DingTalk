.class final Lcom/alibaba/android/search/service/SearchHistoryManager$6;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/service/SearchHistoryManager;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/search/service/SearchHistoryManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/service/SearchHistoryManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/service/SearchHistoryManager;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$6;->c:Lcom/alibaba/android/search/service/SearchHistoryManager;

    iput-object p2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$6;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 478
    invoke-static {}, Lcjf;->a()Lcjf;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$6;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/search/service/SearchHistoryManager$6;->b:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Lcjf;->a(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 479
    return-void
.end method
