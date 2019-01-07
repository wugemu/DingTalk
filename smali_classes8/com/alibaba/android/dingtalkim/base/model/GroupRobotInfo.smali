.class public Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;
.super Ljava/lang/Object;
.source "GroupRobotInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x121c1dfe86854ee6L


# instance fields
.field public mGroupRobotCount:I

.field public mLimitRobotCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "groupRobotCount"    # I
    .param p2, "limitRobotCount"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;->mGroupRobotCount:I

    .line 17
    iput p2, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;->mLimitRobotCount:I

    .line 18
    return-void
.end method


# virtual methods
.method public canAdd()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;->mLimitRobotCount:I

    iget v1, p0, Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;->mGroupRobotCount:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
