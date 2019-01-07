.class public final enum Lcom/alibaba/wukong/im/User$Gender;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/User$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/User$Gender;

.field public static final enum FEMALE:Lcom/alibaba/wukong/im/User$Gender;

.field public static final enum MALE:Lcom/alibaba/wukong/im/User$Gender;

.field public static final enum UNKNOWN:Lcom/alibaba/wukong/im/User$Gender;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 98
    new-instance v0, Lcom/alibaba/wukong/im/User$Gender;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/wukong/im/User$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/User$Gender;->UNKNOWN:Lcom/alibaba/wukong/im/User$Gender;

    .line 102
    new-instance v0, Lcom/alibaba/wukong/im/User$Gender;

    const-string/jumbo v1, "MALE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/im/User$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/User$Gender;->MALE:Lcom/alibaba/wukong/im/User$Gender;

    .line 106
    new-instance v0, Lcom/alibaba/wukong/im/User$Gender;

    const-string/jumbo v1, "FEMALE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/im/User$Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/im/User$Gender;->FEMALE:Lcom/alibaba/wukong/im/User$Gender;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/im/User$Gender;

    sget-object v1, Lcom/alibaba/wukong/im/User$Gender;->UNKNOWN:Lcom/alibaba/wukong/im/User$Gender;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/im/User$Gender;->MALE:Lcom/alibaba/wukong/im/User$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/im/User$Gender;->FEMALE:Lcom/alibaba/wukong/im/User$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/im/User$Gender;->$VALUES:[Lcom/alibaba/wukong/im/User$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/alibaba/wukong/im/User$Gender;->type:I

    .line 111
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/im/User$Gender;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/alibaba/wukong/im/User$Gender;->values()[Lcom/alibaba/wukong/im/User$Gender;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 119
    .local v0, "t":Lcom/alibaba/wukong/im/User$Gender;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/User$Gender;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 123
    .end local v0    # "t":Lcom/alibaba/wukong/im/User$Gender;
    :goto_1
    return-object v0

    .line 118
    .restart local v0    # "t":Lcom/alibaba/wukong/im/User$Gender;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "t":Lcom/alibaba/wukong/im/User$Gender;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/User$Gender;->UNKNOWN:Lcom/alibaba/wukong/im/User$Gender;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/User$Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/alibaba/wukong/im/User$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/User$Gender;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/User$Gender;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/alibaba/wukong/im/User$Gender;->$VALUES:[Lcom/alibaba/wukong/im/User$Gender;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/User$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/User$Gender;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alibaba/wukong/im/User$Gender;->type:I

    return v0
.end method
