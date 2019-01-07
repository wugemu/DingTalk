.class public final enum Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;
.super Ljava/lang/Enum;
.source "ContactInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManageStaffMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

.field public static final enum ADD_EXISTED_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

.field public static final enum ADD_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

.field public static final enum EDIT_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    const-string/jumbo v1, "EDIT_STAFF"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->EDIT_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    .line 134
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    const-string/jumbo v1, "ADD_STAFF"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    .line 135
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    const-string/jumbo v1, "ADD_EXISTED_STAFF"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_EXISTED_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->EDIT_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_EXISTED_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    return-object v0
.end method
