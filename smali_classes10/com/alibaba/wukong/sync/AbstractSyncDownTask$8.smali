.class Lcom/alibaba/wukong/sync/AbstractSyncDownTask$8;
.super Ljava/lang/Object;
.source "AbstractSyncDownTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/sync/AbstractSyncDownTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$8;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alibaba/wukong/sync/AbstractSyncDownTask$8;->this$0:Lcom/alibaba/wukong/sync/AbstractSyncDownTask;

    invoke-static {v0}, Lcom/alibaba/wukong/sync/AbstractSyncDownTask;->access$700(Lcom/alibaba/wukong/sync/AbstractSyncDownTask;)V

    .line 495
    return-void
.end method
