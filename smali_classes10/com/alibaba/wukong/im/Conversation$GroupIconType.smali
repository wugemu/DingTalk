.class public final enum Lcom/alibaba/wukong/im/Conversation$GroupIconType;
.super Ljava/lang/Enum;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupIconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Conversation$GroupIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Conversation$GroupIconType;

.field public static final enum AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

.field public static final enum CUSTOM:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

.field public static final enum ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

.field public static final enum UNKNOWN:Lcom/alibaba/wukong/im/Conversation$GroupIconType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1012
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    const-string/jumbo v1, "AUTOMATIC"

    invoke-direct {v0, v1, v6, v3}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    .line 1017
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->CUSTOM:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    .line 1022
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    const-string/jumbo v1, "ENTERPRISE"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    .line 1024
    new-instance v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    .line 1007
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->CUSTOM:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->ENTERPRISE:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1027
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1028
    iput p3, p0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->value:I

    .line 1029
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 1036
    invoke-static {}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->values()[Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1037
    .local v0, "t":Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 1041
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    :goto_1
    return-object v0

    .line 1036
    .restart local v0    # "t":Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1041
    .end local v0    # "t":Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->UNKNOWN:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1007
    const-class v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Conversation$GroupIconType;
    .locals 1

    .prologue
    .line 1007
    sget-object v0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->$VALUES:[Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Conversation$GroupIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 1032
    iget v0, p0, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->value:I

    return v0
.end method
