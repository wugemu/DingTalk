.class public final enum Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
.super Ljava/lang/Enum;
.source "WMLAppManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

.field public static final enum H5:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

.field public static final enum WEB:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

.field public static final enum WEEX:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    new-instance v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    const-string/jumbo v1, "WEEX"

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEEX:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    new-instance v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    const-string/jumbo v1, "H5"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->H5:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    new-instance v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    const-string/jumbo v1, "WEB"

    invoke-direct {v0, v1, v4}, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEB:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    .line 236
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEEX:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->H5:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->WEB:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->$VALUES:[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

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
    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    const-class v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->$VALUES:[Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    invoke-virtual {v0}, [Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageType;

    return-object v0
.end method