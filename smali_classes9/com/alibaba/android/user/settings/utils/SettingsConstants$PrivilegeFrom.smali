.class public final enum Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;
.super Ljava/lang/Enum;
.source "SettingsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/utils/SettingsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivilegeFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

.field public static final enum FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

.field public static final enum FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

.field public static final enum FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

.field public static final enum FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

.field public static final enum FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    const-string/jumbo v1, "FROM_PRIVILEGE_SETINGS_ICON"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    .line 104
    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    const-string/jumbo v1, "FROM_PRIVILEGE_SETINGS_TEXT_MORE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    .line 105
    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    const-string/jumbo v1, "FROM_PRIVILEGE_DIALOG_LEVEL"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    .line 106
    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    const-string/jumbo v1, "FROM_PRIVILEGE_DIALOG_UPGRADE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    .line 107
    new-instance v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    const-string/jumbo v1, "FROM_MANAGE_ORG_SETTINGS"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_ICON:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_SETINGS_TEXT_MORE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_MANAGE_ORG_SETTINGS:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->$VALUES:[Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->$VALUES:[Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    return-object v0
.end method
