.class public Lcom/alibaba/doraemon/impl/request/BasicNetwork$Content;
.super Ljava/lang/Object;
.source "BasicNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/BasicNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# static fields
.field public static final ERROR_AUTHENTICATION_FAILED:I = 0x7

.field public static final ERROR_CONTENT_RANGE:I = 0x6

.field public static final ERROR_CONTENT_TYPE:I = 0x8

.field public static final ERROR_GET_CONTENT:I = 0x2

.field public static final ERROR_IO_EXCEPTION:I = 0x4

.field public static final ERROR_IS_CANCEL:I = 0x3

.field public static final ERROR_MSG_AUTHENTICATION_FAILED:Ljava/lang/String; = "Authentication failed"

.field public static final ERROR_MSG_CONTENT_RANGE:Ljava/lang/String; = "Content-Range Header is invalid"

.field public static final ERROR_MSG_CONTENT_TYPE:Ljava/lang/String; = "response get error content type!"

.field public static final ERROR_MSG_GET_CONTENT:Ljava/lang/String; = "request get content error !"

.field public static final ERROR_MSG_IO_EXCEPTION:Ljava/lang/String; = "request io exception"

.field public static final ERROR_MSG_IS_CANCEL:Ljava/lang/String; = "request is cancel"

.field public static final ERROR_MSG_NOT_MODIFIED:Ljava/lang/String; = "request not modified"

.field public static final ERROR_MSG_RESOURCE_MOVED:Ljava/lang/String; = "resource moved!"

.field public static final ERROR_MSG_SAVE_DATA:Ljava/lang/String; = "request save data error!"

.field public static final ERROR_NOT_MODIFIED:I = 0x5

.field public static final ERROR_RSMOVED_TYPE:I = 0x9

.field public static final ERROR_SAVE_DATA:I = 0x1

.field public static final NO_ERROR:I


# instance fields
.field byteBuffer:Lcom/alibaba/doraemon/image/memory/PooledByteBuffer;

.field downloadSize:I

.field errorCode:I

.field isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
