.class final Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl$1;
.super Ljava/lang/Object;
.source "ConfigServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->updateImmediately()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl$1;->a:Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl$1;->a:Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;)V

    .line 128
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl$1;->a:Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;

    invoke-static {v0}, Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/ConfigServiceImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    return-void
.end method
