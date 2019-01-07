.class public final enum Lcom/alibaba/android/user/namecard/guide/LightType;
.super Ljava/lang/Enum;
.source "LightType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/namecard/guide/LightType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/namecard/guide/LightType;

.field public static final enum Circle:Lcom/alibaba/android/user/namecard/guide/LightType;

.field public static final enum Oval:Lcom/alibaba/android/user/namecard/guide/LightType;

.field public static final enum Rectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

.field public static final enum RoundRectangle:Lcom/alibaba/android/user/namecard/guide/LightType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alibaba/android/user/namecard/guide/LightType;

    const-string/jumbo v1, "Rectangle"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/namecard/guide/LightType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->Rectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 17
    new-instance v0, Lcom/alibaba/android/user/namecard/guide/LightType;

    const-string/jumbo v1, "Circle"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/namecard/guide/LightType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->Circle:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 21
    new-instance v0, Lcom/alibaba/android/user/namecard/guide/LightType;

    const-string/jumbo v1, "Oval"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/namecard/guide/LightType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->Oval:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 25
    new-instance v0, Lcom/alibaba/android/user/namecard/guide/LightType;

    const-string/jumbo v1, "RoundRectangle"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/user/namecard/guide/LightType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->RoundRectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/user/namecard/guide/LightType;

    sget-object v1, Lcom/alibaba/android/user/namecard/guide/LightType;->Rectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/namecard/guide/LightType;->Circle:Lcom/alibaba/android/user/namecard/guide/LightType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/namecard/guide/LightType;->Oval:Lcom/alibaba/android/user/namecard/guide/LightType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/namecard/guide/LightType;->RoundRectangle:Lcom/alibaba/android/user/namecard/guide/LightType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->$VALUES:[Lcom/alibaba/android/user/namecard/guide/LightType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/namecard/guide/LightType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/user/namecard/guide/LightType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/guide/LightType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/namecard/guide/LightType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/user/namecard/guide/LightType;->$VALUES:[Lcom/alibaba/android/user/namecard/guide/LightType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/namecard/guide/LightType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/namecard/guide/LightType;

    return-object v0
.end method
