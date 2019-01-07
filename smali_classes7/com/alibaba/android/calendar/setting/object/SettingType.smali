.class public final enum Lcom/alibaba/android/calendar/setting/object/SettingType;
.super Ljava/lang/Enum;
.source "SettingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/setting/object/SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/setting/object/SettingType;

.field public static final enum HEADER:Lcom/alibaba/android/calendar/setting/object/SettingType;

.field public static final enum ITEM:Lcom/alibaba/android/calendar/setting/object/SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/android/calendar/setting/object/SettingType;

    const-string/jumbo v1, "HEADER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/setting/object/SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/SettingType;->HEADER:Lcom/alibaba/android/calendar/setting/object/SettingType;

    .line 10
    new-instance v0, Lcom/alibaba/android/calendar/setting/object/SettingType;

    const-string/jumbo v1, "ITEM"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/calendar/setting/object/SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/SettingType;->ITEM:Lcom/alibaba/android/calendar/setting/object/SettingType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/calendar/setting/object/SettingType;

    sget-object v1, Lcom/alibaba/android/calendar/setting/object/SettingType;->HEADER:Lcom/alibaba/android/calendar/setting/object/SettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/calendar/setting/object/SettingType;->ITEM:Lcom/alibaba/android/calendar/setting/object/SettingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/calendar/setting/object/SettingType;->$VALUES:[Lcom/alibaba/android/calendar/setting/object/SettingType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/setting/object/SettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/android/calendar/setting/object/SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/setting/object/SettingType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/setting/object/SettingType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/android/calendar/setting/object/SettingType;->$VALUES:[Lcom/alibaba/android/calendar/setting/object/SettingType;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/setting/object/SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/setting/object/SettingType;

    return-object v0
.end method
