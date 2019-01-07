.class public Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
.super Ljava/lang/Object;
.source "MarketInfoObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public corpId:Ljava/lang/String;

.field public mIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mIsShow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mSectionId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mVersion:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSON(Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    .locals 4
    .param p0, "marketInfo"    # Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "corpId"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 p0, 0x0

    .line 57
    .end local p0    # "marketInfo":Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    :goto_0
    return-object p0

    .line 46
    .restart local p0    # "marketInfo":Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    :cond_0
    if-nez p0, :cond_1

    .line 47
    new-instance p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;

    .end local p0    # "marketInfo":Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    invoke-direct {p0}, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;-><init>()V

    .line 50
    .restart local p0    # "marketInfo":Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;
    :cond_1
    iput-object p2, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->corpId:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "version"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mVersion:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mVersion:J

    .line 52
    const-string/jumbo v0, "icon"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mIcon:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mUrl:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "show"

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mIsShow:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mIsShow:Z

    .line 55
    const-string/jumbo v0, "text"

    iget-object v1, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mText:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "sectionId"

    iget v1, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mSectionId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/oabase/models/MarketInfoObject;->mSectionId:I

    goto :goto_0
.end method
