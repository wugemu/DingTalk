.class public abstract Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;
.super Ljava/lang/Object;
.source "BaseReq.java"


# instance fields
.field public mTransaction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    const-string/jumbo v0, "android.intent.ding.EXTRA_BASEREQ_TRANSACTION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->mTransaction:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method

.method public abstract getSupportVersion()I
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    const-string/jumbo v0, "android.intent.ding.EXTRA_COMMAND_TYPE"

    invoke-virtual {p0}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    const-string/jumbo v0, "android.intent.ding.EXTRA_BASEREQ_TRANSACTION"

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->mTransaction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method
