.class public Lcom/alibaba/android/oa/model/TeamStatModelObject;
.super Ljava/lang/Object;
.source "TeamStatModelObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2173868373ad872dL


# instance fields
.field private mActUrl:Ljava/lang/String;

.field private mAppId:J

.field private mDesc:Ljava/lang/String;

.field private mIconUrl:Ljava/lang/String;

.field private mTips:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Left;)V
    .locals 2
    .param p1, "model"    # Left;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iget-object v0, p1, Left;->a:Ljava/lang/Long;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmAppId(J)V

    .line 1060
    iget-object v0, p1, Left;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmTitle(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p1, Left;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmIconUrl(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p1, Left;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmDesc(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p1, Left;->e:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmActUrl(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p1, Left;->f:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmTips(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "fakeUrl"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Random;

    const-wide/16 v2, 0x14

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmAppId(J)V

    .line 47
    const-string/jumbo v0, "11"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmTitle(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmIconUrl(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "\u6211\u4eec"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmDesc(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmActUrl(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "\u54c8\u54c8\u54c8\u554a\u54c8"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->setmTips(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getmActUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mActUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmAppId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mAppId:J

    return-wide v0
.end method

.method public getmDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getmIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mTips:Ljava/lang/String;

    return-object v0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setmActUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mActUrl"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mActUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setmAppId(J)V
    .locals 1
    .param p1, "mAppId"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mAppId:J

    .line 81
    return-void
.end method

.method public setmDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDesc"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mDesc:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setmIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIconUrl"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mIconUrl:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setmTips(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTips"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mTips:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/oa/model/TeamStatModelObject;->mTitle:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "appId:"

    .line 58
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",title:"

    .line 59
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",iconUrl:"

    .line 60
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",desc:"

    .line 61
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",actUrl:"

    .line 62
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmActUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",tips:"

    .line 63
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/oa/model/TeamStatModelObject;->getmTips()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 64
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
