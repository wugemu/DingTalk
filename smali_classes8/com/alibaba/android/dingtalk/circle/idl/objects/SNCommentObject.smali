.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
.super Ljava/lang/Object;
.source "SNCommentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COMMENT:I = 0x1

.field public static final TYPE_LIKE:I = 0x2

.field private static final serialVersionUID:J = 0x4514c5852981d2d2L


# instance fields
.field public atUids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public commentId:J

.field public content:Ljava/lang/String;

.field public createAt:J

.field public originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

.field public transient postId:J

.field public transient replacedUidContent:Ljava/lang/String;

.field public targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

.field public type:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lbpk;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .locals 6
    .param p0, "model"    # Lbpk;

    .prologue
    const-wide/16 v4, 0x0

    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;-><init>()V

    .line 51
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    iget-object v1, p0, Lbpk;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 51
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    .line 52
    iget-object v1, p0, Lbpk;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 52
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->type:I

    .line 53
    iget-object v1, p0, Lbpk;->c:Lbps;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 54
    iget-object v1, p0, Lbpk;->d:Lbps;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 55
    iget-object v1, p0, Lbpk;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lbpk;->f:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 56
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->createAt:J

    .line 57
    iget-object v1, p0, Lbpk;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->uuid:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lbpk;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Lbpk;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .prologue
    .line 63
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lbpk;

    invoke-direct {v0}, Lbpk;-><init>()V

    .line 65
    .local v0, "result":Lbpk;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbpk;->a:Ljava/lang/Long;

    .line 66
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)Lbps;

    move-result-object v1

    iput-object v1, v0, Lbpk;->c:Lbps;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)Lbps;

    move-result-object v1

    iput-object v1, v0, Lbpk;->d:Lbps;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    iput-object v1, v0, Lbpk;->e:Ljava/lang/String;

    .line 69
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbpk;->f:Ljava/lang/Long;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lbpk;->g:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    iput-object v1, v0, Lbpk;->h:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 40
    .local v0, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isComment()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 32
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toIdl()Lbpk;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Lbpk;

    move-result-object v0

    return-object v0
.end method
