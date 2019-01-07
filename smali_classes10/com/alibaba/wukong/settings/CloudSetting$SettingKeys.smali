.class public final enum Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;
.super Ljava/lang/Enum;
.source "CloudSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/settings/CloudSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

.field public static final enum LOCALE_LANG:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

.field public static final enum VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

.field public static final enum XPN_SWITCH:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;


# instance fields
.field private key:Ljava/lang/String;

.field private module:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    const-string/jumbo v1, "VIP_USER"

    const-string/jumbo v2, "wk_phone"

    const-string/jumbo v3, "vip_user"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    .line 70
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    const-string/jumbo v1, "XPN_SWITCH"

    const-string/jumbo v2, "wk_xpn"

    const-string/jumbo v3, "switch"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->XPN_SWITCH:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    .line 72
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    const-string/jumbo v1, "LOCALE_LANG"

    const-string/jumbo v2, "wk_locale"

    const-string/jumbo v3, "lang"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->LOCALE_LANG:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->VIP_USER:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->XPN_SWITCH:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->LOCALE_LANG:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->$VALUES:[Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "m"    # Ljava/lang/String;
    .param p4, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->module:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->key:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->$VALUES:[Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->module:Ljava/lang/String;

    return-object v0
.end method
