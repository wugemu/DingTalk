.class public final Lcom/alibaba/alimei/mail/operation/OperationData$ModifyType;
.super Ljava/lang/Object;
.source "OperationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/operation/OperationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyType"
.end annotation


# static fields
.field public static final TYPE_CLEAR_CLENDAR_DATA:I = 0x5

.field public static final TYPE_CLEAR_EMAIL_UID_DATA:I = 0x6

.field public static final TYPE_CLEAR_FOLDER_SYNCKEY:I = 0x2

.field public static final TYPE_CLEAR_LOGIN_MODEL:I = 0x1

.field public static final TYPE_CLEAR_SEARCH_HISTORY:I = 0x7

.field public static final TYPE_CLEAR_TAG_SYNCKEY:I = 0x3

.field public static final TYPE_REMOVE_ACCOUNT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
