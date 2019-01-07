.class public Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoIPMediaButtonReceiver.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Leys$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    invoke-static {}, Leys;->a()Leys;

    move-result-object v0

    .line 1038
    iget-object v0, v0, Leys;->a:Leys$a;

    .line 26
    iput-object v0, p0, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;->b:Leys$a;

    .line 27
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 31
    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.MEDIA_BUTTON"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    const-string/jumbo v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 36
    .local v1, "event":Landroid/view/KeyEvent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 37
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "KeyEvent: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 40
    .local v2, "keycode":I
    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_1

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;->b:Leys$a;

    if-eqz v3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;->b:Leys$a;

    invoke-interface {v3}, Leys$a;->onClick()V

    .line 50
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "keycode":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/service/VoIPMediaButtonReceiver;->abortBroadcast()V

    .line 52
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    return-void
.end method
