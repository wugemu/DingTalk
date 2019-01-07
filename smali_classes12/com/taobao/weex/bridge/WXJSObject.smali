.class public Lcom/taobao/weex/bridge/WXJSObject;
.super Ljava/lang/Object;
.source "WXJSObject.java"


# static fields
.field public static final JSON:I = 0x3

.field public static final NUMBER:I = 0x1

.field public static final String:I = 0x2

.field public static final WSON:I = 0x4


# instance fields
.field public data:Ljava/lang/Object;

.field public key:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 37
    iput-object p2, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 42
    iput-object p2, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/taobao/weex/bridge/WXJSObject;->key:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_1

    .line 49
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 69
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 56
    iput v1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 57
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_0

    .line 58
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 59
    iput v1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    goto :goto_0

    .line 60
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 61
    iput v1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 62
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_0

    .line 63
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 64
    iput v2, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    goto :goto_0

    .line 65
    :cond_5
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    .line 67
    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_0
.end method
