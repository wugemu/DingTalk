.class final Ldzk$1;
.super Ljava/lang/Object;
.source "VoiceRecordImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldzk;->a(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldzk;


# direct methods
.method constructor <init>(Ldzk;)V
    .locals 0
    .param p1, "this$0"    # Ldzk;

    .prologue
    .line 108
    iput-object p1, p0, Ldzk$1;->a:Ldzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifySampleResult(JLjava/util/List;)V
    .locals 5
    .param p1, "sampleSeconds"    # J
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
    .line 154
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 155
    .local v0, "seconds":I
    const/16 v1, 0x1c20

    if-lt v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v1}, Ldzk;->f(Ldzk;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 158
    :cond_0
    return-void
.end method

.method public final onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
    .locals 11
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
    .line 123
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "VoiceRecordImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onRecordCompleted:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    const/4 v6, 0x0

    iput-boolean v6, v5, Ldzk;->a:Z

    .line 125
    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v5}, Ldzk;->a(Ldzk;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 126
    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Ldzk;->a(Ldzk;Ljava/util/List;)Ljava/util/List;

    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_0

    .line 128
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/Integer;

    .line 129
    .local v3, "sampleArray":[Ljava/lang/Integer;
    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    const/16 v6, 0x3c

    invoke-static {v5, v6}, Lctd;->a([Ljava/lang/Integer;I)[I

    move-result-object v4

    .line 130
    .local v4, "samples":[I
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget v2, v4, v5

    .line 131
    .local v2, "sample":I
    iget-object v7, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v7}, Ldzk;->c(Ldzk;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "sample":I
    .end local v3    # "sampleArray":[Ljava/lang/Integer;
    .end local v4    # "samples":[I
    :cond_0
    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v5}, Ldzk;->c(Ldzk;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_1
    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    iget-object v5, v5, Ldzk;->d:Landroid/app/Activity;

    .line 1044
    const/4 v6, 0x0

    invoke-static {v5, v6}, Liei;->a(Landroid/content/Context;Liei$a;)V

    .line 138
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v5

    const-string/jumbo v6, "VoiceRecordImpl"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lciu;->a(Ljava/lang/String;I)V

    .line 139
    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    const-wide/16 v6, 0x3e8

    div-long v6, p3, v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Ldzk;->a(Ldzk;I)I

    .line 141
    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v5}, Ldzk;->d(Ldzk;)I

    move-result v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v5}, Ldzk;->e(Ldzk;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 149
    :goto_1
    return-void

    .line 145
    :cond_2
    invoke-static {p1}, Lcop;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1322
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "_"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "fileName":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Ldzk$1;->a:Ldzk;

    iget-object v8, p0, Ldzk$1;->a:Ldzk;

    iget-wide v8, v8, Ldzk;->b:J

    invoke-static {v7, v8, v9}, Ldzk;->a(Ldzk;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2268
    .local v0, "destPath":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2269
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Both sourceFilePath and destFilePath cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2271
    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 2282
    if-nez v7, :cond_5

    .line 2283
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcop;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2284
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcop;->c(Ljava/lang/String;)Z

    .line 148
    :cond_5
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "VoiceRecordImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "destPath:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final onRecordErrorListener(ILjava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "erroMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 162
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRecordErrorListener:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Ldzk$1;->a:Ldzk;

    iput-boolean v4, v0, Ldzk;->a:Z

    .line 164
    iget-object v0, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v0, v4}, Ldzk;->a(Ldzk;Z)Z

    .line 166
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 167
    sget v0, Lctk$i;->sdcard_unavailable:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 169
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    :cond_2
    sget v0, Lctk$i;->dt_live_audio_in_focused:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 173
    :cond_3
    sget v0, Lctk$i;->record_access_denied:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onRecordStart(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 111
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRecordStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Ldzk$1;->a:Ldzk;

    invoke-static {v0}, Ldzk;->a(Ldzk;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 114
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    new-instance v1, Lciu$a;

    const-string/jumbo v2, "VoiceRecordImpl"

    iget-object v3, p0, Ldzk$1;->a:Ldzk;

    .line 117
    invoke-static {v3}, Ldzk;->b(Ldzk;)Lciu$b;

    move-result-object v3

    invoke-direct {v1, v2, v4, v4, v3}, Lciu$a;-><init>(Ljava/lang/String;IILciu$b;)V

    .line 114
    invoke-virtual {v0, v1}, Lciu;->a(Lciu$a;)Z

    .line 118
    iget-object v0, p0, Ldzk$1;->a:Ldzk;

    iput-boolean v4, v0, Ldzk;->a:Z

    .line 119
    return-void
.end method
