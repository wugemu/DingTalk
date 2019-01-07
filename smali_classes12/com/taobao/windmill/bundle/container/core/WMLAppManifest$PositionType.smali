.class public final enum Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;
.super Ljava/lang/Enum;
.source "WMLAppManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

.field public static final enum BOTTOM:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

.field public static final enum TOP:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    new-instance v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->TOP:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    new-instance v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->BOTTOM:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    .line 232
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->TOP:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->BOTTOM:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->$VALUES:[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

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
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    const-class v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->$VALUES:[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    invoke-virtual {v0}, [Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PositionType;

    return-object v0
.end method
