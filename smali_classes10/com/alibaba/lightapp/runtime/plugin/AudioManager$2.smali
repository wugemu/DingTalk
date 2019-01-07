.class Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->startRecord(Lcom/alibaba/doraemon/audio/OnRecordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

.field final synthetic val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Lcom/alibaba/doraemon/audio/OnRecordListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySampleResult(JLjava/util/List;)V
    .locals 5
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 151
    .local v0, "seconds":I
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$000(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/doraemon/audio/OnRecordListener;->notifySampleResult(JLjava/util/List;)V

    .line 158
    :cond_1
    return-void
.end method

.method public onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$202(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Z)Z

    .line 115
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$302(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Ljava/io/File;)Ljava/io/File;

    .line 116
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$402(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    const/16 v1, 0x32

    invoke-static {p2, v1}, Lcom/alibaba/doraemon/utils/MathUtil;->selectQuadraticList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$502(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Ljava/util/List;)Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$602(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;J)J

    .line 121
    invoke-static {}, Lhcs;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    sget v0, Lhdn$k;->sdcard_unavailable:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 123
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$100(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 126
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$402(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    const/4 v1, -0x2

    const-string/jumbo v2, "sdcard can not found"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/audio/OnRecordListener;->onRecordErrorListener(ILjava/lang/String;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    const/4 v1, -0x1

    const-string/jumbo v2, "record fail"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/audio/OnRecordListener;->onRecordErrorListener(ILjava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/audio/OnRecordListener;->onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V

    goto :goto_0
.end method

.method public onRecordErrorListener(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 162
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$202(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Z)Z

    .line 163
    if-ne v3, p1, :cond_0

    .line 164
    sget v2, Lhdn$k;->sdcard_unavailable:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 169
    :cond_0
    const/4 v1, 0x0

    .line 171
    .local v1, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    const-string/jumbo v2, "t_voice_play"

    invoke-static {v2}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 172
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "voice record error :errorCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errorMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v1, :cond_1

    .line 177
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 181
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->val$onRecordListener:Lcom/alibaba/doraemon/audio/OnRecordListener;

    invoke-interface {v2, p1, p2}, Lcom/alibaba/doraemon/audio/OnRecordListener;->onRecordErrorListener(ILjava/lang/String;)V

    .line 184
    :cond_2
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    if-eqz v1, :cond_1

    .line 177
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 177
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_3
    throw v2
.end method

.method public onRecordStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/AudioManager$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->access$202(Lcom/alibaba/lightapp/runtime/plugin/AudioManager;Z)Z

    .line 110
    return-void
.end method
