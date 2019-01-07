.class public Lcom/alibaba/android/dtencrypt/DTEncryptException;
.super Ljava/lang/Exception;
.source "DTEncryptException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;,
        Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;
    }
.end annotation


# instance fields
.field private domain:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

.field private errorCategory:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private warningCode:I

.field private warningMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "domain"    # Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;
    .param p4, "errorCategory"    # Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    .prologue
    .line 105
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 106
    iput p1, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorCode:I

    .line 107
    iput-object p2, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorMsg:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->domain:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    .line 109
    iput-object p4, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorCategory:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    .line 110
    return-void
.end method


# virtual methods
.method public getDomian()Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->domain:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    return-object v0
.end method

.method public getErrorCategory()Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorCategory:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getWarningCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->warningCode:I

    return v0
.end method

.method public getWarningMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->warningMsg:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string/jumbo v0, "DTEncryptException"

    const-string/jumbo v1, "errorCode:%d, errorMsg:%s, domain:%s, errorCategory:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorCode:I

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorMsg:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->domain:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    invoke-virtual {v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->errorCategory:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-virtual {v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 116
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public setWarningCode(I)V
    .locals 0
    .param p1, "warningCode"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->warningCode:I

    .line 88
    return-void
.end method

.method public setWarningMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "warningMsg"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException;->warningMsg:Ljava/lang/String;

    .line 96
    return-void
.end method
