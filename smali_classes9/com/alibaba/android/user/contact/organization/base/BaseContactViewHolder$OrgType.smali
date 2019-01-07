.class public final enum Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
.super Ljava/lang/Enum;
.source "BaseContactViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum CRM:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum EDITOR_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum EDIT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum FOLLOWER:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum FOLLOWER_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum LABEL:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTIPLE_DEPT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTIPLE_LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTI_COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTI_CRM_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTI_DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum MULTI_FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum SINGLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

.field public static final enum SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "DEPT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 35
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "EMPLOYEE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 36
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTIPLE_EMPLOYEE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 37
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTIPLE_DEPT_EMPLOYEE"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 38
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTIPLE_DEPT"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 39
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "SINGLE_EMPLOYEE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 40
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "SINGLE_DEPT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 41
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "EDITOR_EMPLOYEE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EDITOR_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 42
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "FOLLOWER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 43
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "FOLLOWER_DEPT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 44
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "LOCAL_CONTACT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 45
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTIPLE_LOCAL_CONTACT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 46
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "FRIEND"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 47
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTI_FRIEND"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 48
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "COMMON_CONTACT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 49
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTI_COMMON_CONTACT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 50
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "CRM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->CRM:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 51
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTI_CRM_CONTACT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_CRM_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 52
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "EDIT_EMPLOYEE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EDIT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 53
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "LABEL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LABEL:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 54
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "DEVICE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 55
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    const-string/jumbo v1, "MULTI_DEVICE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    .line 33
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->SINGLE_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EDITOR_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FOLLOWER_DEPT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTIPLE_LOCAL_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_FRIEND:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_COMMON_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->CRM:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_CRM_CONTACT:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->EDIT_EMPLOYEE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->LABEL:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->MULTI_DEVICE:Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->$VALUES:[Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->$VALUES:[Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder$OrgType;

    return-object v0
.end method
