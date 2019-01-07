.class public final Liiq;
.super Ljava/lang/Object;
.source "MaBuryRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liiq$a;
    }
.end annotation


# static fields
.field protected static volatile a:Liiq$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
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

.method public static a()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Liiq;->a:Liiq$a;

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "param1"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Liiq;->a:Liiq$a;

    .line 31
    return-void
.end method

.method public static a([B)V
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 22
    sget-object v0, Liiq;->a:Liiq$a;

    .line 25
    return-void
.end method
