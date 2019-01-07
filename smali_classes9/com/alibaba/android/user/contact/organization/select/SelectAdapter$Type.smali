.class public final enum Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;
.super Ljava/lang/Enum;
.source "SelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

.field public static final enum DEPT:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

.field public static final enum USER:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    const-string/jumbo v1, "DEPT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    .line 41
    new-instance v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    sget-object v1, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->DEPT:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->USER:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->$VALUES:[Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->$VALUES:[Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$Type;

    return-object v0
.end method
