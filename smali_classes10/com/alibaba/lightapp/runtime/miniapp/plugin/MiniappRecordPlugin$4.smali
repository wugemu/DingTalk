.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$4;
.super Ljava/lang/Object;
.source "MiniappRecordPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$4;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 248
    :cond_0
    return-void
.end method
