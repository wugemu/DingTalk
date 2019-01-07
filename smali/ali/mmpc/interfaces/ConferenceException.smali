.class public Lali/mmpc/interfaces/ConferenceException;
.super Ljava/lang/Exception;
.source "ConferenceException.java"


# instance fields
.field private errorCode:Lali/mmpc/interfaces/ConferenceErrorCode;


# direct methods
.method public constructor <init>(Lali/mmpc/interfaces/ConferenceErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lali/mmpc/interfaces/ConferenceErrorCode;

    .prologue
    .line 9
    invoke-virtual {p1}, Lali/mmpc/interfaces/ConferenceErrorCode;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lali/mmpc/interfaces/ConferenceException;->errorCode:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 11
    return-void
.end method

.method public constructor <init>(Lali/mmpc/interfaces/ConferenceErrorCode;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Lali/mmpc/interfaces/ConferenceErrorCode;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lali/mmpc/interfaces/ConferenceErrorCode;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lali/mmpc/interfaces/ConferenceException;->errorCode:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 16
    return-void
.end method

.method public constructor <init>(Lali/mmpc/interfaces/ConferenceErrorCode;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Lali/mmpc/interfaces/ConferenceErrorCode;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    invoke-virtual {p1}, Lali/mmpc/interfaces/ConferenceErrorCode;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iput-object p1, p0, Lali/mmpc/interfaces/ConferenceException;->errorCode:Lali/mmpc/interfaces/ConferenceErrorCode;

    .line 22
    return-void
.end method


# virtual methods
.method public getErrorCode()Lali/mmpc/interfaces/ConferenceErrorCode;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lali/mmpc/interfaces/ConferenceException;->errorCode:Lali/mmpc/interfaces/ConferenceErrorCode;

    return-object v0
.end method
