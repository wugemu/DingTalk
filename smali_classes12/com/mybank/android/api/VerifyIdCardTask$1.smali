.class public final Lcom/mybank/android/api/VerifyIdCardTask$1;
.super Ljava/lang/Object;
.source "VerifyIdCardTask.java"

# interfaces
.implements Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardRecognizeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/api/VerifyIdCardTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/api/VerifyIdCardTask;


# direct methods
.method public constructor <init>(Lcom/mybank/android/api/VerifyIdCardTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/api/VerifyIdCardTask;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mybank/android/api/VerifyIdCardTask$1;->a:Lcom/mybank/android/api/VerifyIdCardTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "results"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/mybank/android/api/VerifyIdCardTask$1;->a:Lcom/mybank/android/api/VerifyIdCardTask;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/mybank/android/api/VerifyIdCardTask;->a(Lcom/mybank/android/api/VerifyIdCardTask;I)V

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v1, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultQuitFlag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "quit":Ljava/lang/String;
    const-string/jumbo v1, "quit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/mybank/android/api/VerifyIdCardTask$1;->a:Lcom/mybank/android/api/VerifyIdCardTask;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/mybank/android/api/VerifyIdCardTask;->a(Lcom/mybank/android/api/VerifyIdCardTask;I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/mybank/android/api/VerifyIdCardTask$1;->a:Lcom/mybank/android/api/VerifyIdCardTask;

    invoke-static {v1}, Lcom/mybank/android/api/VerifyIdCardTask;->a(Lcom/mybank/android/api/VerifyIdCardTask;)V

    goto :goto_0
.end method
