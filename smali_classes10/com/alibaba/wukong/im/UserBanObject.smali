.class public Lcom/alibaba/wukong/im/UserBanObject;
.super Ljava/lang/Object;
.source "UserBanObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public banWhiteOptTime:J

.field public banWordsTime:J

.field public conversationId:Ljava/lang/String;

.field public inBanBlack:Z

.field public inBanBlackOptTime:J

.field public inBanWhite:Z

.field public openId:J


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/idl/im/models/UserBanModel;)V
    .locals 6
    .param p1, "model"    # Lcom/alibaba/wukong/idl/im/models/UserBanModel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->conversationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/UserBanObject;->conversationId:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->openId:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    .line 32
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->inBanWhite:Ljava/lang/Integer;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/wukong/im/UserBanObject;->inBanWhite:Z

    .line 33
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->inBanBlack:Ljava/lang/Integer;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/wukong/im/UserBanObject;->inBanBlack:Z

    .line 34
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->banWordsTime:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/wukong/im/UserBanObject;->banWordsTime:J

    .line 35
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->banWhiteOptTime:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/wukong/im/UserBanObject;->banWhiteOptTime:J

    .line 36
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->inBanBlackOptTime:Ljava/lang/Long;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/wukong/im/UserBanObject;->inBanBlackOptTime:J

    .line 38
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 32
    goto :goto_0

    :cond_2
    move v1, v2

    .line 33
    goto :goto_1
.end method


# virtual methods
.method public toModel()Lcom/alibaba/wukong/idl/im/models/UserBanModel;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/UserBanModel;-><init>()V

    .line 42
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/UserBanModel;
    iget-object v1, p0, Lcom/alibaba/wukong/im/UserBanObject;->conversationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->conversationId:Ljava/lang/String;

    .line 43
    iget-wide v4, p0, Lcom/alibaba/wukong/im/UserBanObject;->openId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->openId:Ljava/lang/Long;

    .line 44
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/UserBanObject;->inBanWhite:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->inBanWhite:Ljava/lang/Integer;

    .line 45
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/UserBanObject;->inBanBlack:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->inBanBlack:Ljava/lang/Integer;

    .line 46
    iget-wide v2, p0, Lcom/alibaba/wukong/im/UserBanObject;->banWordsTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->banWordsTime:Ljava/lang/Long;

    .line 47
    iget-wide v2, p0, Lcom/alibaba/wukong/im/UserBanObject;->banWhiteOptTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->banWhiteOptTime:Ljava/lang/Long;

    .line 48
    iget-wide v2, p0, Lcom/alibaba/wukong/im/UserBanObject;->inBanBlackOptTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/UserBanModel;->inBanBlackOptTime:Ljava/lang/Long;

    .line 49
    return-object v0

    :cond_0
    move v1, v3

    .line 44
    goto :goto_0

    :cond_1
    move v2, v3

    .line 45
    goto :goto_1
.end method
