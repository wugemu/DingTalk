.class public final enum Lcom/alibaba/android/user/contact/homepage/Component$ItemType;
.super Ljava/lang/Enum;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/homepage/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/Component$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum AlphaDevice:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum Concern:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum Contact:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum Department:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum Device:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum MicroApp:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum OrgMember:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

.field public static final enum ShowByLabel:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "Department"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 64
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "Contact"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 65
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "Concern"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Concern:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 66
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "Device"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Device:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 67
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "MicroApp"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->MicroApp:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 68
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "AlphaDevice"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->AlphaDevice:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 69
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "ShowByLabel"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->ShowByLabel:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 70
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "OrgHomePage"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 71
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    const-string/jumbo v1, "OrgMember"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgMember:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    .line 61
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Concern:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Device:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->MicroApp:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->AlphaDevice:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->ShowByLabel:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->OrgMember:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->mValue:I

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/homepage/Component$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/homepage/Component$ItemType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->mValue:I

    return v0
.end method
