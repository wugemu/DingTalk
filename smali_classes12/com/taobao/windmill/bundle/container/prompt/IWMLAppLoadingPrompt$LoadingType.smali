.class public final enum Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;
.super Ljava/lang/Enum;
.source "IWMLAppLoadingPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

.field public static final enum CLOSE_BY_DEV:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

.field public static final enum CLOSE_BY_FW:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    const-string/jumbo v1, "CLOSE_BY_FW"

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->CLOSE_BY_FW:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    new-instance v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    const-string/jumbo v1, "CLOSE_BY_DEV"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->CLOSE_BY_DEV:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    sget-object v1, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->CLOSE_BY_FW:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->CLOSE_BY_DEV:Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->$VALUES:[Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->$VALUES:[Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    invoke-virtual {v0}, [Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;

    return-object v0
.end method
