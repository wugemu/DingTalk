.class Lcom/taobao/taolive/AudioRecord2C$RecordThread;
.super Ljava/lang/Thread;
.source "AudioRecord2C.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/AudioRecord2C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/AudioRecord2C;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/AudioRecord2C;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/AudioRecord2C;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v1}, Lcom/taobao/taolive/AudioRecord2C;->access$200(Lcom/taobao/taolive/AudioRecord2C;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/taobao/taolive/AudioRecord2C;->access$202(Lcom/taobao/taolive/AudioRecord2C;Z)Z

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v1}, Lcom/taobao/taolive/AudioRecord2C;->access$200(Lcom/taobao/taolive/AudioRecord2C;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v1}, Lcom/taobao/taolive/AudioRecord2C;->access$400(Lcom/taobao/taolive/AudioRecord2C;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v2}, Lcom/taobao/taolive/AudioRecord2C;->access$300(Lcom/taobao/taolive/AudioRecord2C;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v3}, Lcom/taobao/taolive/AudioRecord2C;->access$300(Lcom/taobao/taolive/AudioRecord2C;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 201
    .local v0, "len":I
    iget-object v1, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    iget-object v2, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v2}, Lcom/taobao/taolive/AudioRecord2C;->access$300(Lcom/taobao/taolive/AudioRecord2C;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/taolive/AudioRecord2C$RecordThread;->this$0:Lcom/taobao/taolive/AudioRecord2C;

    invoke-static {v3}, Lcom/taobao/taolive/AudioRecord2C;->access$500(Lcom/taobao/taolive/AudioRecord2C;)J

    move-result-wide v4

    invoke-static {v1, v2, v0, v4, v5}, Lcom/taobao/taolive/AudioRecord2C;->access$600(Lcom/taobao/taolive/AudioRecord2C;Ljava/nio/ByteBuffer;IJ)V

    .line 202
    monitor-exit p0

    goto :goto_0

    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
