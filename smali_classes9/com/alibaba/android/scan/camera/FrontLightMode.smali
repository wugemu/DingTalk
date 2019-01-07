.class public final enum Lcom/alibaba/android/scan/camera/FrontLightMode;
.super Ljava/lang/Enum;
.source "FrontLightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/scan/camera/FrontLightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/scan/camera/FrontLightMode;

.field public static final enum AUTO:Lcom/alibaba/android/scan/camera/FrontLightMode;

.field public static final enum OFF:Lcom/alibaba/android/scan/camera/FrontLightMode;

.field public static final enum ON:Lcom/alibaba/android/scan/camera/FrontLightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/alibaba/android/scan/camera/FrontLightMode;

    const-string/jumbo v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/scan/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/scan/camera/FrontLightMode;->ON:Lcom/alibaba/android/scan/camera/FrontLightMode;

    .line 32
    new-instance v0, Lcom/alibaba/android/scan/camera/FrontLightMode;

    const-string/jumbo v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/scan/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/scan/camera/FrontLightMode;->AUTO:Lcom/alibaba/android/scan/camera/FrontLightMode;

    .line 34
    new-instance v0, Lcom/alibaba/android/scan/camera/FrontLightMode;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/scan/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/scan/camera/FrontLightMode;->OFF:Lcom/alibaba/android/scan/camera/FrontLightMode;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/scan/camera/FrontLightMode;

    sget-object v1, Lcom/alibaba/android/scan/camera/FrontLightMode;->ON:Lcom/alibaba/android/scan/camera/FrontLightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/scan/camera/FrontLightMode;->AUTO:Lcom/alibaba/android/scan/camera/FrontLightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/scan/camera/FrontLightMode;->OFF:Lcom/alibaba/android/scan/camera/FrontLightMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/scan/camera/FrontLightMode;->$VALUES:[Lcom/alibaba/android/scan/camera/FrontLightMode;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static parse(Ljava/lang/String;)Lcom/alibaba/android/scan/camera/FrontLightMode;
    .locals 1
    .param p0, "modeString"    # Ljava/lang/String;

    .prologue
    .line 37
    if-nez p0, :cond_0

    sget-object v0, Lcom/alibaba/android/scan/camera/FrontLightMode;->OFF:Lcom/alibaba/android/scan/camera/FrontLightMode;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/android/scan/camera/FrontLightMode;->valueOf(Ljava/lang/String;)Lcom/alibaba/android/scan/camera/FrontLightMode;

    move-result-object v0

    goto :goto_0
.end method

.method public static readPref(Landroid/content/SharedPreferences;)Lcom/alibaba/android/scan/camera/FrontLightMode;
    .locals 2
    .param p0, "sharedPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 41
    const-string/jumbo v0, "preferences_front_light_mode"

    sget-object v1, Lcom/alibaba/android/scan/camera/FrontLightMode;->OFF:Lcom/alibaba/android/scan/camera/FrontLightMode;

    invoke-virtual {v1}, Lcom/alibaba/android/scan/camera/FrontLightMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/scan/camera/FrontLightMode;->parse(Ljava/lang/String;)Lcom/alibaba/android/scan/camera/FrontLightMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/scan/camera/FrontLightMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/android/scan/camera/FrontLightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/scan/camera/FrontLightMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/scan/camera/FrontLightMode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/scan/camera/FrontLightMode;->$VALUES:[Lcom/alibaba/android/scan/camera/FrontLightMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/scan/camera/FrontLightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/scan/camera/FrontLightMode;

    return-object v0
.end method
