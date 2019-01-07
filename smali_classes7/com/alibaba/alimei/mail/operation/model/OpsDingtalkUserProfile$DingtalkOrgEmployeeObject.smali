.class public Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;
.super Ljava/lang/Object;
.source "OpsDingtalkUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DingtalkOrgEmployeeObject"
.end annotation


# instance fields
.field public isOrgAuth:Z

.field public orgAuthEmail:Ljava/lang/String;

.field public orgId:J

.field public orgMail:Ljava/lang/String;

.field public orgName:Ljava/lang/String;

.field public orgNickName:Ljava/lang/String;

.field public orgUserName:Ljava/lang/String;

.field public role:I

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
