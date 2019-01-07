.class public final enum Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;
.super Ljava/lang/Enum;
.source "PermissionManageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

.field public static final enum ActionAddFollower:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

.field public static final enum ActionAddShare:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

.field public static final enum Contact:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

.field public static final enum Department:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

.field public static final enum Divider:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    const-string/jumbo v1, "Department"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Department:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .line 273
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    const-string/jumbo v1, "Divider"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Divider:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .line 274
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    const-string/jumbo v1, "Contact"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Contact:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .line 275
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    const-string/jumbo v1, "ActionAddFollower"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->ActionAddFollower:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .line 276
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    const-string/jumbo v1, "ActionAddShare"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->ActionAddShare:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    .line 271
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    sget-object v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Department:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Divider:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->Contact:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->ActionAddFollower:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->ActionAddShare:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->$VALUES:[Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

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
    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 281
    iput p3, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->mValue:I

    .line 282
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    const-class v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->$VALUES:[Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->mValue:I

    return v0
.end method
