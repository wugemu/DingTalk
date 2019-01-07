.class public final enum Lcom/taobao/weex/common/WXImageSharpen;
.super Ljava/lang/Enum;
.source "WXImageSharpen.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/common/WXImageSharpen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXImageSharpen;

.field public static final enum SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

.field public static final enum UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/taobao/weex/common/WXImageSharpen;

    const-string/jumbo v1, "UNSHARPEN"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXImageSharpen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    .line 23
    new-instance v0, Lcom/taobao/weex/common/WXImageSharpen;

    const-string/jumbo v1, "SHARPEN"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/common/WXImageSharpen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/weex/common/WXImageSharpen;

    sget-object v1, Lcom/taobao/weex/common/WXImageSharpen;->UNSHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/weex/common/WXImageSharpen;->$VALUES:[Lcom/taobao/weex/common/WXImageSharpen;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXImageSharpen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/taobao/weex/common/WXImageSharpen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXImageSharpen;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/common/WXImageSharpen;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/weex/common/WXImageSharpen;->$VALUES:[Lcom/taobao/weex/common/WXImageSharpen;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXImageSharpen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXImageSharpen;

    return-object v0
.end method
