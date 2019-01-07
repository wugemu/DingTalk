.class public Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;
.super Ljava/lang/Exception;
.source "FileDownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloaderError"
.end annotation


# static fields
.field public static final ErrorEmptyContent:I = 0x0

.field public static final ErrorIO:I = 0x1

.field public static final ErrorInvalidFile:I = 0x3

.field public static final ErrorServer:I = 0x2

.field public static final ErrorUnkown:I = -0x1

.field public static final INVALID_ERROR_CODE:I = -0x3e7

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I

.field private mAssistErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 303
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->errorCode:I

    .line 300
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->mAssistErrorCode:I

    .line 304
    iput p1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->errorCode:I

    .line 305
    return-void
.end method


# virtual methods
.method public getAssistantErrorCode()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->mAssistErrorCode:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->errorCode:I

    return v0
.end method
