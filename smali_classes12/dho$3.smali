.class public final Ldho$3;
.super Ljava/lang/Object;
.source "EncryptManager.java"

# interfaces
.implements Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldho;


# direct methods
.method public constructor <init>(Ldho;)V
    .locals 0
    .param p1, "this$0"    # Ldho;

    .prologue
    .line 239
    iput-object p1, p0, Ldho$3;->a:Ldho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_decrypt_msg_in_conversation"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "corp_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 248
    return-void
.end method
