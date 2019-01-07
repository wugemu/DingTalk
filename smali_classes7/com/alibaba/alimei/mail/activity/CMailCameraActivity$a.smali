.class final Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$a;
.super Landroid/os/Handler;
.source "CMailCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 214
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 215
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 223
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1218
    .local v1, "what":I
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .line 225
    .local v0, "activity":Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
