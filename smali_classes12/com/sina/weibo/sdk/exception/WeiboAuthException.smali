.class public Lcom/sina/weibo/sdk/exception/WeiboAuthException;
.super Lcom/sina/weibo/sdk/exception/WeiboException;
.source "WeiboAuthException.java"


# static fields
.field public static final DEFAULT_AUTH_ERROR_CODE:Ljava/lang/String; = "-1"

.field public static final DEFAULT_AUTH_ERROR_DESC:Ljava/lang/String; = "Unknown Error Description"

.field public static final DEFAULT_AUTH_ERROR_TYPE:Ljava/lang/String; = "Unknown Error Type"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p3}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorType:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorCode:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sina/weibo/sdk/exception/WeiboAuthException;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
