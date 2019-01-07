.class Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;
.super Ljava/lang/Object;
.source "OpusRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->startRecordingInner(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$000(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 151
    .local v1, "success":Z
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$100(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$200(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$100(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->stopRecord()V

    .line 153
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$100(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->closeOpusFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 162
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$400(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    .line 167
    :goto_1
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    const-string/jumbo v3, "OpusRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "after writeAudioDataToFile() opusTool.stop()/closeOpusFile() exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$300(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    const-string/jumbo v3, "OpusRecorder"

    const-string/jumbo v4, "write audio data to file failed"

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$300(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$500(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    goto :goto_1

    .line 149
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    .line 151
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v3}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$100(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v3}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$200(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v3}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$100(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->stopRecord()V

    .line 153
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v3}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$100(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)Lcom/alibaba/doraemon/audio/opus/OpusTool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->closeOpusFile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    const-string/jumbo v4, "OpusRecorder"

    const-string/jumbo v5, "write audio data to file failed"

    invoke-static {v3, v4, v5}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$300(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    invoke-static {v3}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$500(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;)V

    throw v2

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/alibaba/doraemon/audio/opus/OpusRecorder$1;->this$0:Lcom/alibaba/doraemon/audio/opus/OpusRecorder;

    const-string/jumbo v4, "OpusRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "after writeAudioDataToFile() opusTool.stop()/closeOpusFile() exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/doraemon/audio/opus/OpusRecorder;->access$300(Lcom/alibaba/doraemon/audio/opus/OpusRecorder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
