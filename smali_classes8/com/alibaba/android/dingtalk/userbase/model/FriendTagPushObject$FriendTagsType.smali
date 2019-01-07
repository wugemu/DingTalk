.class public final enum Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
.super Ljava/lang/Enum;
.source "FriendTagPushObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendTagsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

.field public static final enum ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

.field public static final enum REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

.field public static final enum UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

.field public static final enum UPDATE:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v6, v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    .line 63
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->UPDATE:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    const-string/jumbo v1, "UNKNOWN"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->UPDATE:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->status:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->status:I

    return v0
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 80
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->values()[Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 81
    .local v0, "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->status:I

    if-ne v4, p0, :cond_0

    .line 85
    .end local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    :goto_1
    return-object v0

    .line 80
    .restart local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    return-object v0
.end method
