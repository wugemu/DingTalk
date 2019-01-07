.class final enum Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
.super Ljava/lang/Enum;
.source "WXWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/module/WXWebViewModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/ui/module/WXWebViewModule$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

.field public static final enum reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string/jumbo v1, "reload"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 31
    new-instance v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string/jumbo v1, "goBack"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 32
    new-instance v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string/jumbo v1, "goForward"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 33
    new-instance v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    const-string/jumbo v1, "postMessage"

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    sget-object v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->$VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->$VALUES:[Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    return-object v0
.end method
