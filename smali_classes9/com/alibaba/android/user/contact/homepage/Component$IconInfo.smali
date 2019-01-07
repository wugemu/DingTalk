.class public final enum Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;
.super Ljava/lang/Enum;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/homepage/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum ALPHA_DEVICE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum CUSTOM_MANAGE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum DEPT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum DEVICE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum EMPLOYEE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum EXT_CONTACT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum ORG:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum ORG_MEMBER:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field public static final enum ORG_SQUARE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;


# instance fields
.field private mIconFontColorResId:I

.field private mIconFontResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "COMMON"

    sget v2, Lezg$l;->icon_branch:I

    sget v3, Lezg$e;->ui_common_level1_line_bg_color:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 105
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "ORG"

    sget v2, Lezg$l;->icon_subordinate:I

    sget v3, Lezg$e;->contact_subordinate_icon_color:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 106
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "DEPT"

    sget v2, Lezg$l;->icon_briefcase:I

    sget v3, Lezg$e;->contact_briefcase_icon_color:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->DEPT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 107
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "EMPLOYEE"

    sget v2, Lezg$l;->icon_briefcase:I

    sget v3, Lezg$e;->contact_briefcase_icon_color:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->EMPLOYEE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 108
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "CUSTOM_MANAGE"

    sget v2, Lezg$l;->icon_shakehand_fill:I

    sget v3, Lezg$e;->contact_device_icon_color:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->CUSTOM_MANAGE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 109
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "EXT_CONTACT"

    const/4 v2, 0x5

    sget v3, Lezg$l;->icon_shakehands:I

    sget v4, Lezg$e;->contact_external_icon_color:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->EXT_CONTACT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 110
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "DEVICE"

    const/4 v2, 0x6

    sget v3, Lezg$l;->icon_list_smart_device:I

    sget v4, Lezg$e;->contact_device_icon_color:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->DEVICE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 111
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "ORG_SQUARE"

    const/4 v2, 0x7

    sget v3, Lezg$l;->icon_homepage:I

    sget v4, Lezg$e;->contact_square_icon_color:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG_SQUARE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 112
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "ORG_MEMBER"

    const/16 v2, 0x8

    sget v3, Lezg$l;->icon_member:I

    sget v4, Lezg$e;->ui_common_orange_icon_bg_color:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG_MEMBER:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 113
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    const-string/jumbo v1, "ALPHA_DEVICE"

    const/16 v2, 0x9

    sget v3, Lezg$l;->icon_hardware:I

    sget v4, Lezg$e;->contact_device_icon_color:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ALPHA_DEVICE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->COMMON:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->DEPT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->EMPLOYEE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->CUSTOM_MANAGE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->EXT_CONTACT:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->DEVICE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG_SQUARE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ORG_MEMBER:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->ALPHA_DEVICE:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "iconFontResId"    # I
    .param p4, "iconFontColorResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->mIconFontResId:I

    .line 120
    iput p4, p0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->mIconFontColorResId:I

    .line 121
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    return-object v0
.end method


# virtual methods
.method public final getIconFontColorResId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->mIconFontColorResId:I

    return v0
.end method

.method public final getIconFontResId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;->mIconFontResId:I

    return v0
.end method
