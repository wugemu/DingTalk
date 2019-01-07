.class final Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;
.super Ljava/lang/Object;
.source "LoginServiceImpl.java"

# interfaces
.implements Lcom/mybank/android/phone/common/service/login/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;


# direct methods
.method private constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V
    .locals 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;->c:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;->a:Z

    .line 130
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;B)V
    .locals 0
    .param p1, "x0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;-><init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;->a:Z

    .line 136
    iget-object v0, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 137
    return-void
.end method
