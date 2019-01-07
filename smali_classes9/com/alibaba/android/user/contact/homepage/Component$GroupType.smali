.class public final enum Lcom/alibaba/android/user/contact/homepage/Component$GroupType;
.super Ljava/lang/Enum;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/homepage/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/Component$GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

.field public static final enum Common:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

.field public static final enum Concern:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

.field public static final enum CreateOrg:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

.field public static final enum Organization:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    const-string/jumbo v1, "Organization"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Organization:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    .line 87
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    const-string/jumbo v1, "Common"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Common:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    .line 88
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    const-string/jumbo v1, "Concern"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Concern:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    .line 89
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    const-string/jumbo v1, "CreateOrg"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->CreateOrg:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Organization:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Common:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->Concern:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->CreateOrg:Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->mValue:I

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/homepage/Component$GroupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/homepage/Component$GroupType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/homepage/Component$GroupType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/Component$GroupType;->mValue:I

    return v0
.end method
