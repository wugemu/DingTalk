.class final Ldzf$b$1;
.super Landroid/os/Handler;
.source "AbstractVoiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldzf$b;-><init>(Landroid/app/Activity;[Ljava/io/File;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldzf$b;


# direct methods
.method constructor <init>(Ldzf$b;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Ldzf$b;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 182
    iput-object p1, p0, Ldzf$b$1;->a:Ldzf$b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const-string/jumbo v0, "AbstractVoiceRecord"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldzf$b$1$1;

    invoke-direct {v1, p0}, Ldzf$b$1$1;-><init>(Ldzf$b$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
