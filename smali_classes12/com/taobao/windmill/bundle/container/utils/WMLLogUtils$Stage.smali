.class public final enum Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;
.super Ljava/lang/Enum;
.source "WMLLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum AUTH:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum DOWNGRDAE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum H5:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum INITIALIZER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum INVOKER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum RENDER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

.field public static final enum ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "INITIALIZER"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->INITIALIZER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 23
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "PACKAGE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 24
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "ROUTER"

    invoke-direct {v0, v1, v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 25
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "AUTH"

    invoke-direct {v0, v1, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->AUTH:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 26
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "DOWNGRDAE"

    invoke-direct {v0, v1, v7}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->DOWNGRDAE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 27
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "RENDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->RENDER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 28
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "INVOKER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->INVOKER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 29
    new-instance v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v1, "H5"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->H5:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    sget-object v1, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->INITIALIZER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->ROUTER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->AUTH:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->DOWNGRDAE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->RENDER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->INVOKER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->H5:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->$VALUES:[Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->$VALUES:[Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    invoke-virtual {v0}, [Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    return-object v0
.end method
