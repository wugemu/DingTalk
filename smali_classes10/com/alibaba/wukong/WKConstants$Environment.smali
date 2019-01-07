.class public final enum Lcom/alibaba/wukong/WKConstants$Environment;
.super Ljava/lang/Enum;
.source "WKConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/WKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/WKConstants$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/WKConstants$Environment;

.field public static final enum ONLINE:Lcom/alibaba/wukong/WKConstants$Environment;

.field public static final enum PRERELEASE:Lcom/alibaba/wukong/WKConstants$Environment;

.field public static final enum SANDBOX:Lcom/alibaba/wukong/WKConstants$Environment;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    new-instance v0, Lcom/alibaba/wukong/WKConstants$Environment;

    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "online"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/wukong/WKConstants$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/wukong/WKConstants$Environment;->ONLINE:Lcom/alibaba/wukong/WKConstants$Environment;

    .line 219
    new-instance v0, Lcom/alibaba/wukong/WKConstants$Environment;

    const-string/jumbo v1, "SANDBOX"

    const-string/jumbo v2, "test"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/wukong/WKConstants$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/wukong/WKConstants$Environment;->SANDBOX:Lcom/alibaba/wukong/WKConstants$Environment;

    .line 223
    new-instance v0, Lcom/alibaba/wukong/WKConstants$Environment;

    const-string/jumbo v1, "PRERELEASE"

    const-string/jumbo v2, "pub"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/wukong/WKConstants$Environment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/wukong/WKConstants$Environment;->PRERELEASE:Lcom/alibaba/wukong/WKConstants$Environment;

    .line 210
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/WKConstants$Environment;

    sget-object v1, Lcom/alibaba/wukong/WKConstants$Environment;->ONLINE:Lcom/alibaba/wukong/WKConstants$Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/WKConstants$Environment;->SANDBOX:Lcom/alibaba/wukong/WKConstants$Environment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/WKConstants$Environment;->PRERELEASE:Lcom/alibaba/wukong/WKConstants$Environment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/wukong/WKConstants$Environment;->$VALUES:[Lcom/alibaba/wukong/WKConstants$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Lcom/alibaba/wukong/WKConstants$Environment;->value:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/WKConstants$Environment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/alibaba/wukong/WKConstants$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/WKConstants$Environment;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/WKConstants$Environment;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/alibaba/wukong/WKConstants$Environment;->$VALUES:[Lcom/alibaba/wukong/WKConstants$Environment;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/WKConstants$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/WKConstants$Environment;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/wukong/WKConstants$Environment;->value:Ljava/lang/String;

    return-object v0
.end method
