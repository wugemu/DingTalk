.class public final enum Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;
.super Ljava/lang/Enum;
.source "UserProfileItemObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/UserProfileItemObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum Avatar:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum BoldTextContent:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum Header:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum Header_TEMP:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum MyAvatar:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum NONE_DIVIDER_CONTENT:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum Remark:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum TextContent:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum TextContentRight:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

.field public static final enum TextContentRight_NO_DIVIVDER:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "Avatar"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Avatar:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 21
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "Header"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Header:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 22
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "BoldTextContent"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->BoldTextContent:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 23
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "TextContent"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->TextContent:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 24
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "NONE_DIVIDER_CONTENT"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->NONE_DIVIDER_CONTENT:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 25
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "MyAvatar"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->MyAvatar:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 26
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "TextContentRight"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->TextContentRight:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 27
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "TextContentRight_NO_DIVIVDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->TextContentRight_NO_DIVIVDER:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 28
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "Header_TEMP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Header_TEMP:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 29
    new-instance v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    const-string/jumbo v1, "Remark"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Remark:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    sget-object v1, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Avatar:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Header:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->BoldTextContent:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->TextContent:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->NONE_DIVIDER_CONTENT:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->MyAvatar:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->TextContentRight:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->TextContentRight_NO_DIVIVDER:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Header_TEMP:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->Remark:Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->$VALUES:[Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->$VALUES:[Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/profile/UserProfileItemObject$Type;

    return-object v0
.end method
