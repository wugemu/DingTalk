.class public final enum Lcom/alibaba/wukong/im/Follow$FollowStatus;
.super Ljava/lang/Enum;
.source "Follow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Follow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FollowStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Follow$FollowStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Follow$FollowStatus;

.field public static final enum BOTHWAY_FOLLOW:Lcom/alibaba/wukong/im/Follow$FollowStatus;

.field public static final enum FOLLOWER:Lcom/alibaba/wukong/im/Follow$FollowStatus;

.field public static final enum FOLLOWING:Lcom/alibaba/wukong/im/Follow$FollowStatus;

.field public static final enum STRANGE:Lcom/alibaba/wukong/im/Follow$FollowStatus;


# instance fields
.field private status:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;

    const-string/jumbo v1, "FOLLOWING"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/wukong/im/Follow$FollowStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWING:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    .line 41
    new-instance v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;

    const-string/jumbo v1, "FOLLOWER"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/wukong/im/Follow$FollowStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWER:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    .line 46
    new-instance v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;

    const-string/jumbo v1, "BOTHWAY_FOLLOW"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/wukong/im/Follow$FollowStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->BOTHWAY_FOLLOW:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    .line 51
    new-instance v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;

    const-string/jumbo v1, "STRANGE"

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/wukong/im/Follow$FollowStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->STRANGE:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/wukong/im/Follow$FollowStatus;

    sget-object v1, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWING:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWER:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/im/Follow$FollowStatus;->BOTHWAY_FOLLOW:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/im/Follow$FollowStatus;->STRANGE:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->$VALUES:[Lcom/alibaba/wukong/im/Follow$FollowStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p3, "status"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-wide p3, p0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->status:J

    .line 57
    return-void
.end method

.method public static fromValue(J)Lcom/alibaba/wukong/im/Follow$FollowStatus;
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 65
    invoke-static {}, Lcom/alibaba/wukong/im/Follow$FollowStatus;->values()[Lcom/alibaba/wukong/im/Follow$FollowStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 66
    .local v0, "fs":Lcom/alibaba/wukong/im/Follow$FollowStatus;
    iget-wide v4, v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->status:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 71
    .end local v0    # "fs":Lcom/alibaba/wukong/im/Follow$FollowStatus;
    :goto_1
    return-object v0

    .line 65
    .restart local v0    # "fs":Lcom/alibaba/wukong/im/Follow$FollowStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "fs":Lcom/alibaba/wukong/im/Follow$FollowStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->STRANGE:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Follow$FollowStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Follow$FollowStatus;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->$VALUES:[Lcom/alibaba/wukong/im/Follow$FollowStatus;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Follow$FollowStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Follow$FollowStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatus()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->status:J

    return-wide v0
.end method
