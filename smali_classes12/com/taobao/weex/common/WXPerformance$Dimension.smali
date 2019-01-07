.class public final enum Lcom/taobao/weex/common/WXPerformance$Dimension;
.super Ljava/lang/Enum;
.source "WXPerformance.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/common/WXPerformance$Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

.field public static final enum zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "JSLibVersion"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 36
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "WXSDKVersion"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 37
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "pageName"

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 38
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "spm"

    invoke-direct {v0, v1, v6}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 39
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "scheme"

    invoke-direct {v0, v1, v7}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 40
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "cacheType"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 41
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "requestType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 42
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "networkType"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 43
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "connectionType"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 44
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "zcacheInfo"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 45
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 46
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim2"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 47
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim3"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 48
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim4"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 49
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "wxdim5"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 50
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "bizType"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 51
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "templateUrl"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 52
    new-instance v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    const-string/jumbo v1, "useScroller"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXPerformance$Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    .line 33
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/taobao/weex/common/WXPerformance$Dimension;

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->spm:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->scheme:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXPerformance$Dimension;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/common/WXPerformance$Dimension;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Dimension;->$VALUES:[Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXPerformance$Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXPerformance$Dimension;

    return-object v0
.end method
