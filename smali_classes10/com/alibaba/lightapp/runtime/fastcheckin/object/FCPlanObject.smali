.class public Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;
.super Ljava/lang/Object;
.source "FCPlanObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OPERATION_TYPE_ADD_OR_UPDATE:I = 0x1

.field public static final OPERATION_TYPE_REMOVE:I = 0x2

.field public static final OPERATION_TYPE_UNKNOWN:I = -0x1

.field public static final PLAN_TYPE_FAST:I = 0x3

.field public static final PLAN_TYPE_NOT_REMIND:I = 0x2

.field public static final PLAN_TYPE_REMIND:I = 0x1

.field private static final serialVersionUID:J = 0xa0e04a9daa821feL


# instance fields
.field public mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

.field public mOperationType:I

.field public mPlanType:I

.field public mTopNotifyPushObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

.field public mWorkDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lhhi;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;
    .locals 2
    .param p0, "model"    # Lhhi;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;-><init>()V

    .line 45
    .local v0, "object":Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;
    iget-object v1, p0, Lhhi;->a:Lhjs;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->fromIDLModel(Lhjs;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 46
    iget-object v1, p0, Lhhi;->b:Lhhm;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->from(Lhhm;)Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mTopNotifyPushObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    .line 47
    iget-object v1, p0, Lhhi;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mWorkDate:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lhhi;->d:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    iput v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mOperationType:I

    .line 49
    iget-object v1, p0, Lhhi;->e:Ljava/lang/Integer;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mPlanType:I

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lhhi;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 49
    :cond_2
    iget-object v1, p0, Lhhi;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, ""

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-static {v0}, Lhha;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlanId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    if-nez v0, :cond_0

    .line 67
    const-wide/16 v0, -0x1

    .line 69
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    iget-wide v0, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    goto :goto_0
.end method

.method public getWorkDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mWorkDate:Ljava/lang/String;

    return-object v0
.end method

.method public isExpire()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isExpire()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mCheckinPushObject:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mTopNotifyPushObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCPlanObject;->mTopNotifyPushObject:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;

    .line 74
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCTopNotifyPushObject;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
