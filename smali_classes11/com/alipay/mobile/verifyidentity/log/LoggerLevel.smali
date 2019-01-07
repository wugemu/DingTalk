.class public Lcom/alipay/mobile/verifyidentity/log/LoggerLevel;
.super Ljava/lang/Object;
.source "LoggerLevel.java"


# static fields
.field public static final DEFAULT:I = 0x2

.field public static final HIGH:I = 0x1

.field public static final LOW:I = 0x3

.field public static final MEDIUM:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
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
