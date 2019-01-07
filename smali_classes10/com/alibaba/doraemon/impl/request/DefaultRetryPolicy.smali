.class public Lcom/alibaba/doraemon/impl/request/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/RetryPolicy;


# static fields
.field public static final DEFAULT_RETRY_TIMES:I = 0x3

.field public static final DEFAULT_TIMEOUT_MS:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getCurrentTimeout()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x7530

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x3

    return v0
.end method
