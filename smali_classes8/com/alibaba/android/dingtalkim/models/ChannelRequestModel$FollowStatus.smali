.class public final enum Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
.super Ljava/lang/Enum;
.source "ChannelRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FollowStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

.field public static final enum FOLLOWED:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

.field public static final enum FOLLOWING:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

.field public static final enum NONE_FOLLOW:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;


# instance fields
.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    const-string/jumbo v1, "NONE_FOLLOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->NONE_FOLLOW:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    .line 40
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    const-string/jumbo v1, "FOLLOWED"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWED:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    .line 41
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    const-string/jumbo v1, "FOLLOWING"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWING:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->NONE_FOLLOW:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWED:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWING:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->$VALUES:[Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->status:I

    .line 47
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->values()[Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    move-result-object v1

    .line 51
    .local v1, "var1":[Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    array-length v2, v1

    .line 53
    .local v2, "var2":I
    const/4 v3, 0x0

    .local v3, "var3":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 54
    aget-object v0, v1, v3

    .line 55
    .local v0, "t":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    iget v4, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->status:I

    if-ne v4, p0, :cond_0

    .line 60
    .end local v0    # "t":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    :goto_1
    return-object v0

    .line 53
    .restart local v0    # "t":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "t":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->NONE_FOLLOW:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->$VALUES:[Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    return-object v0
.end method
