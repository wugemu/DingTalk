.class Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;
.super Ljava/lang/ref/WeakReference;
.source "VerifyActivityCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    .line 79
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 80
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;Landroid/app/Activity;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    .line 83
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 84
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
