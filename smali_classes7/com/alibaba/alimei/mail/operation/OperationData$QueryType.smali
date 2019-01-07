.class public final Lcom/alibaba/alimei/mail/operation/OperationData$QueryType;
.super Ljava/lang/Object;
.source "OperationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/operation/OperationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryType"
.end annotation


# static fields
.field public static final TYPE_ACCOUNT:I = 0x1

.field public static final TYPE_CORE_SERVER_USER_PROFILE:I = 0x5

.field public static final TYPE_DINGTALK_USER_PROFILE:I = 0x6

.field public static final TYPE_FOLDER:I = 0x3

.field public static final TYPE_FRIEND_DOMAIN:I = 0x8

.field public static final TYPE_MSG_CROSS:I = 0x2

.field public static final TYPE_SEARCH:I = 0x9

.field public static final TYPE_SETTING:I = 0x7

.field public static final TYPE_TAG:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
