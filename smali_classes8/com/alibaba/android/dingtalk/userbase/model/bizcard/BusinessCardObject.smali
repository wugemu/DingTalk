.class public Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;
.super Ljava/lang/Object;
.source "BusinessCardObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SOURCE_INDUSTRY_GROUP:Ljava/lang/String; = "IndustryGroup"

.field private static final serialVersionUID:J = 0x3407c20acade5b63L


# instance fields
.field public source:Ljava/lang/String;

.field public userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;)Lcht;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcht;

    invoke-direct {v0}, Lcht;-><init>()V

    .line 28
    .local v0, "model":Lcht;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcht;->a:Ljava/lang/Long;

    .line 29
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/BusinessCardObject;->source:Ljava/lang/String;

    iput-object v1, v0, Lcht;->o:Ljava/lang/String;

    goto :goto_0
.end method
