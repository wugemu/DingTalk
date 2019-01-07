.class final Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;
.super Ljava/lang/Object;
.source "AlipayLoginActivity.java"

# interfaces
.implements Llhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhg",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    check-cast p1, Ljava/lang/String;

    .line 1044
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000067&url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1046
    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-virtual {v1, v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-virtual {v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->finish()V

    .line 1051
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljfu;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-virtual {v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$1;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-virtual {v1}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->finish()V

    throw v0
.end method
