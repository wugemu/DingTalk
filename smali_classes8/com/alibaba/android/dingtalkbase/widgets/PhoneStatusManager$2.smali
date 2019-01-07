.class final Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$2;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 172
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "CALL_STATE_RINGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;->a(Lcom/alibaba/android/dingtalkbase/widgets/PhoneStatusManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "CALL_STATE_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
