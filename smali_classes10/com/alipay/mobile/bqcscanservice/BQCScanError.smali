.class public final Lcom/alipay/mobile/bqcscanservice/BQCScanError;
.super Ljava/lang/Object;
.source "BQCScanError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;
    }
.end annotation


# instance fields
.field public a:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/bqcscanservice/BQCScanError;->a:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobile/bqcscanservice/BQCScanError;->b:Ljava/lang/String;

    .line 44
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
