.class public Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult$InfoItem;
.super Ljava/lang/Object;
.source "MailAddrInfoResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoItem"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public accountType:I

.field public alias:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public errCode:I

.field public errMsg:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
