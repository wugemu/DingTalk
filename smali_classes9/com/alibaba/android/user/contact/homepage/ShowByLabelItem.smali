.class public Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "ShowByLabelItem.java"


# instance fields
.field private mOrgId:J

.field private mOrgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->mOrgId:J

    .line 11
    return-void
.end method


# virtual methods
.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->mOrgId:J

    return-wide v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->mOrgName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->ShowByLabel:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->mOrgId:J

    .line 19
    return-void
.end method

.method public setOrgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ShowByLabelItem;->mOrgName:Ljava/lang/String;

    .line 27
    return-void
.end method
