.class public final Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;
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
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;->b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    iput-object p2, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;->a:Ljava/lang/CharSequence;

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
    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;->b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->a(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$1;->b:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;

    invoke-static {v0}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;->a(Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;)V

    .line 111
    return-void
.end method
