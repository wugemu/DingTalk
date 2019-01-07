.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Lcom/alibaba/doraemon/audio/OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySampleResult(JLjava/util/List;)V
    .locals 0
    .param p1, "l"    # J
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
    .line 308
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "l"    # J
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
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;[Ljava/lang/String;)V

    .line 300
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1302(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1102(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRecordErrorListener(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x3

    .line 312
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1102(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1302(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onRecordStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 289
    return-void
.end method
