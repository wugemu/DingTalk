.class public Lcom/unicom/xiaowo/verify/sms/Android70Sim$UnsupportedException;
.super Ljava/lang/RuntimeException;
.source "Android70Sim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/verify/sms/Android70Sim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 363
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 367
    return-void
.end method
