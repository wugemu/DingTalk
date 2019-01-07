.class public final enum Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;
.super Ljava/lang/Enum;
.source "CloudSettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/settings/CloudSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WKSettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

.field public static final enum LOCALE:Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

.field public static final enum XPN:Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    const-string/jumbo v1, "XPN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->XPN:Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    .line 90
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    const-string/jumbo v1, "LOCALE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->LOCALE:Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->XPN:Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->LOCALE:Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->$VALUES:[Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->$VALUES:[Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/settings/CloudSettingService$WKSettingType;

    return-object v0
.end method
