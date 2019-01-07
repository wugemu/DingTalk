.class final Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$1;
.super Ljava/lang/Object;
.source "LoginServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->syncAutoLogin(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;

.field final synthetic b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$1;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    iput-object p2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$1;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$1;->b:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$1;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;

    invoke-virtual {v0, v1, v2}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->autoLogin(Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V

    .line 153
    return-void
.end method
