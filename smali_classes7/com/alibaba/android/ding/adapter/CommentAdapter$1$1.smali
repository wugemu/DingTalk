.class final Lcom/alibaba/android/ding/adapter/CommentAdapter$1$1;
.super Ljava/lang/Object;
.source "CommentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/adapter/CommentAdapter$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/adapter/CommentAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/adapter/CommentAdapter$1;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1$1;->a:Lcom/alibaba/android/ding/adapter/CommentAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1$1;->a:Lcom/alibaba/android/ding/adapter/CommentAdapter$1;

    iget-object v0, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 416
    return-void
.end method
