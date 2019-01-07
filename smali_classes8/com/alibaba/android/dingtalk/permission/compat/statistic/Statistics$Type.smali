.class public final enum Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;
.super Ljava/lang/Enum;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

.field public static final enum grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

.field public static final enum hasSelfPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

.field public static final enum onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

.field public static final enum onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

.field public static final enum requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

.field public static final enum showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    const-string/jumbo v1, "requestPermissions"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    .line 17
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    const-string/jumbo v1, "hasSelfPermissions"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->hasSelfPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    .line 18
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    const-string/jumbo v1, "showRation"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    .line 19
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    const-string/jumbo v1, "grant"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    .line 20
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    const-string/jumbo v1, "onDenied"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    .line 21
    new-instance v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    const-string/jumbo v1, "onNeverAsk"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->hasSelfPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->$VALUES:[Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->$VALUES:[Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    return-object v0
.end method
