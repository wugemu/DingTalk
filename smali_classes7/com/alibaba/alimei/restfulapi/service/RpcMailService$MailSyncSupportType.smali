.class public final Lcom/alibaba/alimei/restfulapi/service/RpcMailService$MailSyncSupportType;
.super Ljava/lang/Object;
.source "RpcMailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/service/RpcMailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MailSyncSupportType"
.end annotation


# static fields
.field public static final SUPPORT_LARGE_BODY:I = 0x2

.field public static final SUPPORT_NO_SEND_BODY_HTML:I = 0x0

.field public static final SUPPORT_SEND_BODY_HTML:I = 0x1

.field public static final SUPPROT_LESS_BODY:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method
