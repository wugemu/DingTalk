.class final Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$3;
.super Ljava/lang/Object;
.source "AlipayLoginActivity.java"

# interfaces
.implements Llhk;


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
        "Llhk",
        "<",
        "Ljava/lang/Object;",
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
    .line 77
    iput-object p1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$3;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    .line 1080
    check-cast p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/GenerateAuthCodeResult;

    .line 1081
    iget-object v0, p1, Lcom/alipay/fc/custprod/biz/service/gw/result/login/GenerateAuthCodeResult;->body:Ljava/lang/String;

    .line 77
    return-object v0
.end method
