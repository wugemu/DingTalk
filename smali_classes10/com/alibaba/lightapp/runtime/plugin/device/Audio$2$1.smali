.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayErrorListener(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "reqeustId"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const/4 v1, 0x3

    invoke-static {v1, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$702(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    :cond_0
    return-void
.end method

.method public onPlayStateListener(Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$702(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    :cond_0
    return-void
.end method

.method public onProgressListener(Ljava/lang/String;II)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 166
    return-void
.end method

.method public onRequestFinsh(Ljava/lang/String;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onRequestStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method
