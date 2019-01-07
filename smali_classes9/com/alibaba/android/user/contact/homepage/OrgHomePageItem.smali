.class public Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "OrgHomePageItem.java"


# instance fields
.field private orgId:J

.field private orgName:Ljava/lang/String;

.field private orgPage:Lfrq;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->orgId:J

    .line 34
    return-void
.end method


# virtual methods
.method public getOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->orgId:J

    return-wide v0
.end method

.method public getOrgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->orgName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgPage()Lfrq;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->orgPage:Lfrq;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public setOrgId(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->orgId:J

    .line 42
    return-void
.end method

.method public setOrgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgName"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->orgName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setOrgPage(Lfrq;)V
    .locals 0
    .param p1, "orgPage"    # Lfrq;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->orgPage:Lfrq;

    .line 50
    return-void
.end method
