.class public Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
.super Ljava/lang/Object;
.source "CircleCommentObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COMMENT:I = 0x1

.field public static final TYPE_LIKE:I = 0x2

.field private static final serialVersionUID:J = 0x4514c5852981d2d2L


# instance fields
.field public commentId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public createAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient postId:J

.field public transient replacedUidContent:Ljava/lang/String;

.field public targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lfee;)Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .locals 6
    .param p0, "model"    # Lfee;

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;-><init>()V

    .line 71
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    iget-object v1, p0, Lfee;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 71
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    .line 72
    iget-object v1, p0, Lfee;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 72
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->type:I

    .line 73
    iget-object v1, p0, Lfee;->c:Lfeq;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 74
    iget-object v1, p0, Lfee;->d:Lfeq;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 75
    iget-object v1, p0, Lfee;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lfee;->f:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 76
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->createAt:J

    .line 77
    iget-object v1, p0, Lfee;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->uuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Lfee;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lfee;

    invoke-direct {v0}, Lfee;-><init>()V

    .line 86
    .local v0, "result":Lfee;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfee;->a:Ljava/lang/Long;

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)Lfeq;

    move-result-object v1

    iput-object v1, v0, Lfee;->c:Lfeq;

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)Lfeq;

    move-result-object v1

    iput-object v1, v0, Lfee;->d:Lfeq;

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    iput-object v1, v0, Lfee;->e:Ljava/lang/String;

    .line 90
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfee;->f:Ljava/lang/Long;

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lfee;->g:Ljava/lang/String;

    .line 92
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfee;->b:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 51
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 58
    .local v0, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    iget-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isComment()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 46
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toIdl()Lfee;
    .locals 1

    .prologue
    .line 97
    invoke-static {p0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Lfee;

    move-result-object v0

    return-object v0
.end method
