.class public Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;
.super Ljava/lang/Object;
.source "OpsDingtalkUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;
    }
.end annotation


# instance fields
.field public allowChangeDingTalkId:Z

.field public email:Ljava/lang/String;

.field public isBindEmail:Z

.field public mobile:Ljava/lang/String;

.field public orgEmail:Ljava/lang/String;

.field public orgEmployeeObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile$DingtalkOrgEmployeeObject;",
            ">;"
        }
    .end annotation
.end field

.field public uid:J

.field public workMobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method
