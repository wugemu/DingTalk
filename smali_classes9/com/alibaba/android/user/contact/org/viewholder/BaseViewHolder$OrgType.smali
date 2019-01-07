.class public final enum Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;
.super Ljava/lang/Enum;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

.field public static final enum DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

.field public static final enum EDITOR_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

.field public static final enum EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

.field public static final enum FOLLOWER:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

.field public static final enum MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

.field public static final enum MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

.field public static final enum SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    const-string/jumbo v1, "DEPT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    .line 38
    new-instance v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    const-string/jumbo v1, "EMPLOYEE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    .line 39
    new-instance v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    const-string/jumbo v1, "MULTIPLE_EMPLOYEE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    .line 40
    new-instance v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    const-string/jumbo v1, "MULTIPLE_DEPT"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    .line 41
    new-instance v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    const-string/jumbo v1, "SINGLE_EMPLOYEE"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    .line 42
    new-instance v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    const-string/jumbo v1, "EDITOR_EMPLOYEE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->EDITOR_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    .line 43
    new-instance v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    const-string/jumbo v1, "FOLLOWER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    sget-object v1, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->MULTIPLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->MULTIPLE_DEPT:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->SINGLE_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->EDITOR_EMPLOYEE:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->FOLLOWER:Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->$VALUES:[Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->$VALUES:[Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder$OrgType;

    return-object v0
.end method
