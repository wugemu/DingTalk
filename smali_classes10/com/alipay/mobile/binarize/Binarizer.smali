.class public abstract Lcom/alipay/mobile/binarize/Binarizer;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field private a:Z


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


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/Binarizer;->a:Z

    .line 20
    return-void
.end method

.method public abstract getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;
.end method

.method public initialize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/Binarizer;->a:Z

    .line 24
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/alipay/mobile/binarize/Binarizer;->a:Z

    return v0
.end method

.method public setInitialized(Z)V
    .locals 0
    .param p1, "initialized"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/alipay/mobile/binarize/Binarizer;->a:Z

    .line 16
    return-void
.end method
