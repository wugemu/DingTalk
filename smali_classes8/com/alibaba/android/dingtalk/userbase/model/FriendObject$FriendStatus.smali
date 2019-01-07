.class public final enum Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
.super Ljava/lang/Enum;
.source "FriendObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

.field public static final enum ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

.field public static final enum REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

.field public static final enum UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    .line 151
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    .line 155
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    const-string/jumbo v1, "UNKNOWN"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->status:I

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    .prologue
    .line 143
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->status:I

    return v0
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 164
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->values()[Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 165
    .local v0, "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->status:I

    if-ne v4, p0, :cond_0

    .line 169
    .end local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    :goto_1
    return-object v0

    .line 164
    .restart local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    return-object v0
.end method
