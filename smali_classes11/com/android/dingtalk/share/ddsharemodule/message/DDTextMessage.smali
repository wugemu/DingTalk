.class public Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;
.super Ljava/lang/Object;
.source "DDTextMessage.java"

# interfaces
.implements Lcom/android/dingtalk/share/ddsharemodule/message/DDMediaMessage$IMediaObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "DDTextMessage"

.field private static final TEXT_TITLE_MAX_LENGTH:I = 0x2800


# instance fields
.field public mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_0
    const-string/jumbo v0, "DDTextMessage"

    const-string/jumbo v1, "checkArgs fail, text is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportVersion()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x1337ba1

    return v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string/jumbo v0, "android.intent.ding.EXTRA_TEXT_OBJECT_TEXT"

    iget-object v1, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string/jumbo v0, "android.intent.ding.EXTRA_TEXT_OBJECT_TEXT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dingtalk/share/ddsharemodule/message/DDTextMessage;->mText:Ljava/lang/String;

    goto :goto_0
.end method
