.class public final Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;
.super Ljava/lang/Object;
.source "SingleChatTaskAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;->b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    iput-object p2, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;->b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    invoke-static {v0}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->b(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;->a:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;->b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    invoke-static {v0}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->b(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;->a:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$2;->b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    invoke-static {v0}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->a(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;)V

    .line 124
    return-void
.end method
