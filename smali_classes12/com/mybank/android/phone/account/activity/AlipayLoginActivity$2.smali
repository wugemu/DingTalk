.class final Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$2;
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
        "Ljava/lang/Throwable;",
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
    .line 54
    iput-object p1, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$2;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    check-cast p1, Ljava/lang/Throwable;

    .line 1057
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$2;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-static {v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->a(Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;)Llhg;

    move-result-object v0

    invoke-interface {v0, p1}, Llhg;->call(Ljava/lang/Object;)V

    .line 1058
    invoke-static {}, Ljfu;->a()V

    .line 1059
    iget-object v0, p0, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity$2;->a:Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;

    invoke-virtual {v0}, Lcom/mybank/android/phone/account/activity/AlipayLoginActivity;->finish()V

    .line 54
    return-void
.end method
