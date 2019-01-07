.class public Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;
.super Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;
.source "SendAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SendDDAuth.Resp"


# instance fields
.field public code:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;-><init>()V

    return-void
.end method


# virtual methods
.method checkArgs()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_CODE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->code:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_STATE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->state:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x64

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_CODE"

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_STATE"

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Resp;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
