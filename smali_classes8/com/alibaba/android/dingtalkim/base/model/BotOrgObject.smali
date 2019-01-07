.class public Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;
.super Ljava/lang/Object;
.source "BotOrgObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x608d7f03a3a88fc2L


# instance fields
.field public logoMediaId:Ljava/lang/String;

.field public orgId:J

.field public orgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldce;)Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;
    .locals 4
    .param p0, "botOrgModel"    # Ldce;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;-><init>()V

    .line 24
    .local v0, "botOrgObject":Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;
    iget-object v1, p0, Ldce;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 24
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgId:J

    .line 25
    iget-object v1, p0, Ldce;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgName:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Ldce;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->logoMediaId:Ljava/lang/String;

    .line 29
    .end local v0    # "botOrgObject":Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
