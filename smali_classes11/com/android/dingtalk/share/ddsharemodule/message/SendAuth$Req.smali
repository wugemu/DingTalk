.class public Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;
.super Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;
.source "SendAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final LENGTH_LIMIT:I = 0x400

.field private static final MIN_SUPPORT_VERSION:I = 0x1339e65

.field public static final SNS_LOGIN:Ljava/lang/String; = "sns_login"

.field private static final TAG:Ljava/lang/String; = "SendDDAuth.Req"


# instance fields
.field public scope:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x400

    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->scope:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->scope:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->state:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->state:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 97
    const-string/jumbo v1, "SendDDAuth.Req"

    const-string/jumbo v2, "checkArgs fail, state is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return v0

    .line 100
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    const-string/jumbo v1, "SendDDAuth.Req"

    const-string/jumbo v2, "checkArgs fail, scope is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_SCOPE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->scope:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_STATE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->state:Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method

.method public getSupportVersion()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x1339e65

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 90
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
    .line 72
    invoke-super {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/message/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_SCOPE"

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "android.intent.ding.EXTRA_SEND_AUTH_STATE"

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/SendAuth$Req;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
