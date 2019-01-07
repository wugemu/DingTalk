.class public final Lcom/alibaba/alimei/restfulapi/service/RpcMailService$MailSearchType;
.super Ljava/lang/Object;
.source "RpcMailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MailSearchType"
.end annotation


# static fields
.field public static final SearchAll:I = 0x0

.field public static final SearchAttachmentName:I = 0x6

.field public static final SearchCommunication:I = 0x7

.field public static final SearchContent:I = 0x1

.field public static final SearchReceiver:I = 0x4

.field public static final SearchSender:I = 0x3

.field public static final SearchSenderAndReceiver:I = 0x5

.field public static final SearchTitle:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
