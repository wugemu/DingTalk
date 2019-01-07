.class public Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;
.super Ljava/lang/RuntimeException;
.source "IncompleteHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = 0x6db9dfe70a9994e4L


# instance fields
.field private newsize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;->newsize:I

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "newsize"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;->newsize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/socketcraft/exceptions/IncompleteHandshakeException;->newsize:I

    return v0
.end method
