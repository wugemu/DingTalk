.class public Lcom/alibaba/alimei/mail/operation/model/result/OpsDDUserprofileResultModel;
.super Ljava/lang/Object;
.source "OpsDDUserprofileResultModel.java"


# instance fields
.field public result:Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/mail/operation/model/result/OpsDDUserprofileResultModel;->result:Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;

    return-object v0
.end method

.method public setResult(Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/alimei/mail/operation/model/result/OpsDDUserprofileResultModel;->result:Lcom/alibaba/alimei/mail/operation/model/OpsDingtalkUserProfile;

    .line 21
    return-void
.end method
