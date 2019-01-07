.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$1;
.super Ljava/lang/Object;
.source "MiniappRecordPlugin.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;
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
    .line 54
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
