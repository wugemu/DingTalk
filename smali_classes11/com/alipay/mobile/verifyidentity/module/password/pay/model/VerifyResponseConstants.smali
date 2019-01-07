.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/model/VerifyResponseConstants;
.super Ljava/lang/Object;
.source "VerifyResponseConstants.java"


# static fields
.field public static final PPW_LOCK:Ljava/lang/String; = "PPW_LOCK"

.field public static final PPW_LOCK_FIND:Ljava/lang/String; = "PPW_LOCK_FIND"

.field public static final PPW_LOCK_USER_CANCEL:Ljava/lang/String; = "PPW_LOCK_USER_CANCEL"

.field public static final PPW_RETRY:Ljava/lang/String; = "RETRY"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
