.class public Lcom/taobao/weex/utils/WXResourceUtils;
.super Ljava/lang/Object;
.source "WXResourceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
    }
.end annotation


# static fields
.field private static final COLOR_RANGE:I = 0xff

.field private static final FUNCTIONAL_RGBA_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final FUNCTIONAL_RGB_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX:I = 0x10

.field private static final RGB:Ljava/lang/String; = "rgb"

.field private static final RGBA:Ljava/lang/String; = "rgba"

.field private static final RGBA_SIZE:I = 0x4

.field private static final RGB_SIZE:I = 0x3

.field private static final colorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, -0x887767

    const v6, -0x8f7f70

    const v5, -0x969697

    const v4, -0xd0b0b1

    const v3, -0xff0001

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/taobao/weex/utils/WXResourceUtils$1;

    invoke-direct {v0}, Lcom/taobao/weex/utils/WXResourceUtils$1;-><init>()V

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->FUNCTIONAL_RGB_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    .line 61
    new-instance v0, Lcom/taobao/weex/utils/WXResourceUtils$2;

    invoke-direct {v0}, Lcom/taobao/weex/utils/WXResourceUtils$2;-><init>()V

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->FUNCTIONAL_RGBA_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;

    .line 82
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "aliceblue"

    const v2, -0xf0701

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "antiquewhite"

    const v2, -0x51429

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "aqua"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "aquamarine"

    const v2, -0x80002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "azure"

    const v2, -0xf0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "beige"

    const v2, -0xa0a24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "bisque"

    const/16 v2, -0x1b3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "black"

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "blanchedalmond"

    const/16 v2, -0x1433

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "blue"

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "blueviolet"

    const v2, -0x75d41e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "brown"

    const v2, -0x5ad5d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "burlywood"

    const v2, -0x214779

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "cadetblue"

    const v2, -0xa06160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "chartreuse"

    const v2, -0x800100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "chocolate"

    const v2, -0x2d96e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "coral"

    const v2, -0x80b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "cornflowerblue"

    const v2, -0x9b6a13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "cornsilk"

    const/16 v2, -0x724

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "crimson"

    const v2, -0x23ebc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "cyan"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkblue"

    const v2, -0xffff75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkcyan"

    const v2, -0xff7475

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkgoldenrod"

    const v2, -0x4779f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkgray"

    const v2, -0x565657

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkgreen"

    const v2, -0xff9c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkkhaki"

    const v2, -0x424895

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkmagenta"

    const v2, -0x74ff75

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkolivegreen"

    const v2, -0xaa94d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkorange"

    const/16 v2, -0x7400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkorchid"

    const v2, -0x66cd34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkred"

    const/high16 v2, -0x750000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darksalmon"

    const v2, -0x166986

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkseagreen"

    const v2, -0x704371

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkslateblue"

    const v2, -0xb7c275

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkslategray"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkslategrey"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkturquoise"

    const v2, -0xff312f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "darkviolet"

    const v2, -0x6bff2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "deeppink"

    const v2, -0xeb6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "deepskyblue"

    const v2, -0xff4001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "dimgray"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "dimgrey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "dodgerblue"

    const v2, -0xe16f01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "firebrick"

    const v2, -0x4dddde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "floralwhite"

    const/16 v2, -0x510

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "forestgreen"

    const v2, -0xdd74de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "fuchsia"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "gainsboro"

    const v2, -0x232324

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "ghostwhite"

    const v2, -0x70701

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "gold"

    const/16 v2, -0x2900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "goldenrod"

    const v2, -0x255ae0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "gray"

    const v2, -0x7f7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "grey"

    const v2, -0x7f7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "green"

    const v2, -0xff8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "greenyellow"

    const v2, -0x5200d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "honeydew"

    const v2, -0xf0010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "hotpink"

    const v2, -0x964c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "indianred"

    const v2, -0x32a3a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "indigo"

    const v2, -0xb4ff7e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "ivory"

    const/16 v2, -0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "khaki"

    const v2, -0xf1974

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lavender"

    const v2, -0x191906

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lavenderblush"

    const/16 v2, -0xf0b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lawngreen"

    const v2, -0x830400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lemonchiffon"

    const/16 v2, -0x533

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightblue"

    const v2, -0x52271a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightcoral"

    const v2, -0xf7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightcyan"

    const v2, -0x1f0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightgoldenrodyellow"

    const v2, -0x5052e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightgray"

    const v2, -0x2c2c2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightgrey"

    const v2, -0x2c2c2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightgreen"

    const v2, -0x6f1170

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightpink"

    const/16 v2, -0x493f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightsalmon"

    const/16 v2, -0x5f86

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightseagreen"

    const v2, -0xdf4d56

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightskyblue"

    const v2, -0x783106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightslategray"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightslategrey"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightsteelblue"

    const v2, -0x4f3b22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lightyellow"

    const/16 v2, -0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "lime"

    const v2, -0xff0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "limegreen"

    const v2, -0xcd32ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "linen"

    const v2, -0x50f1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "magenta"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "maroon"

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumaquamarine"

    const v2, -0x993256

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumblue"

    const v2, -0xffff33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumorchid"

    const v2, -0x45aa2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumpurple"

    const v2, -0x6c8f25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumseagreen"

    const v2, -0xc34c8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumslateblue"

    const v2, -0x849712

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumspringgreen"

    const v2, -0xff0566

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumturquoise"

    const v2, -0xb72e34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mediumvioletred"

    const v2, -0x38ea7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "midnightblue"

    const v2, -0xe6e690

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mintcream"

    const v2, -0xa0006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "mistyrose"

    const/16 v2, -0x1b1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "moccasin"

    const/16 v2, -0x1b4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "navajowhite"

    const/16 v2, -0x2153

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "navy"

    const v2, -0xffff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "oldlace"

    const v2, -0x20a1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "olive"

    const v2, -0x7f8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "olivedrab"

    const v2, -0x9471dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "orange"

    const/16 v2, -0x5b00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "orangered"

    const v2, -0xbb00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "orchid"

    const v2, -0x258f2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "palegoldenrod"

    const v2, -0x111756

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "palegreen"

    const v2, -0x670468

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "paleturquoise"

    const v2, -0x501112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "palevioletred"

    const v2, -0x248f6d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "papayawhip"

    const/16 v2, -0x102b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "peachpuff"

    const/16 v2, -0x2547

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "peru"

    const v2, -0x327ac1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "pink"

    const/16 v2, -0x3f35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "plum"

    const v2, -0x225f23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "powderblue"

    const v2, -0x4f1f1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "purple"

    const v2, -0x7fff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "rebeccapurple"

    const v2, -0x99cc67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "red"

    const/high16 v2, -0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "rosybrown"

    const v2, -0x437071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "royalblue"

    const v2, -0xbe961f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "saddlebrown"

    const v2, -0x74baed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "salmon"

    const v2, -0x57f8e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "sandybrown"

    const v2, -0xb5ba0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "seagreen"

    const v2, -0xd174a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "seashell"

    const/16 v2, -0xa12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "sienna"

    const v2, -0x5fadd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "silver"

    const v2, -0x3f3f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "skyblue"

    const v2, -0x783115

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "slateblue"

    const v2, -0x95a533

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "slategray"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "slategrey"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "snow"

    const/16 v2, -0x506

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "springgreen"

    const v2, -0xff0081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "steelblue"

    const v2, -0xb97d4c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "tan"

    const v2, -0x2d4b74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "teal"

    const v2, -0xff7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "thistle"

    const v2, -0x274028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "tomato"

    const v2, -0x9cb9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "turquoise"

    const v2, -0xbf1f30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "violet"

    const v2, -0x117d12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "wheat"

    const v2, -0xa214d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "white"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "whitesmoke"

    const v2, -0xa0a0b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "yellow"

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "yellowgreen"

    const v2, -0x6532ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    const-string/jumbo v1, "transparent"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->FUNCTIONAL_RGB_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    return-object v0
.end method

.method static synthetic access$300()Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->FUNCTIONAL_RGBA_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$NonUniformMapper;

    return-object v0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 1
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 233
    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getColor(Ljava/lang/String;I)I
    .locals 10
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "defaultColor"    # I

    .prologue
    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 262
    .end local p1    # "defaultColor":I
    :goto_0
    return p1

    .line 240
    .restart local p1    # "defaultColor":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 242
    sget-object v6, Lcom/taobao/weex/utils/WXUtils;->sCache:Lfq;

    invoke-virtual {v6, p0}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 243
    .local v0, "cache":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 247
    :cond_1
    move v5, p1

    .line 249
    .local v5, "resultColor":I
    invoke-static {}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->values()[Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    move-result-object v3

    .line 250
    .local v3, "handlers":[Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
    array-length v8, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v2, v3, v7

    .line 252
    .local v2, "handler":Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->handle(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 253
    .local v4, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 254
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 255
    sget-object v6, Lcom/taobao/weex/utils/WXUtils;->sCache:Lfq;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, p0, v9}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "handler":Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
    .end local v4    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_2
    move p1, v5

    .line 262
    goto :goto_0

    .line 258
    .restart local v2    # "handler":Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Color_Parser"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1
.end method

.method public static getShader(Ljava/lang/String;FF)Landroid/graphics/Shader;
    .locals 10
    .param p0, "image"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 274
    invoke-static {p0}, Lcom/taobao/weex/utils/WXResourceUtils;->parseGradientValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 275
    .local v9, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 276
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/taobao/weex/utils/WXResourceUtils;->parseGradientDirection(Ljava/lang/String;FF)[F

    move-result-object v8

    .line 277
    .local v8, "points":[F
    new-instance v0, Landroid/graphics/LinearGradient;

    aget v1, v8, v2

    aget v2, v8, v5

    aget v3, v8, v6

    aget v4, v8, v4

    .line 279
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 283
    .end local v8    # "points":[F
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNamedColor(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 372
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils;->colorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static parseGradientDirection(Ljava/lang/String;FF)[F
    .locals 8
    .param p0, "direction"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 336
    .local v0, "points":[F
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    const-string/jumbo v1, "\\s*"

    const-string/jumbo v7, ""

    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 340
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 368
    :goto_1
    return-object v0

    .line 340
    :sswitch_0
    const-string/jumbo v6, "toright"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "toleft"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "tobottom"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "totop"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "tobottomright"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "totopleft"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    .line 343
    :pswitch_0
    aput p1, v0, v4

    goto :goto_1

    .line 347
    :pswitch_1
    aput p1, v0, v2

    goto :goto_1

    .line 351
    :pswitch_2
    aput p2, v0, v5

    goto :goto_1

    .line 355
    :pswitch_3
    aput p2, v0, v3

    goto :goto_1

    .line 359
    :pswitch_4
    aput p1, v0, v4

    .line 360
    aput p2, v0, v5

    goto :goto_1

    .line 364
    :pswitch_5
    aput p1, v0, v2

    .line 365
    aput p2, v0, v3

    goto :goto_1

    .line 334
    .line 340
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :sswitch_data_0
    .sparse-switch
        -0x50965f9a -> :sswitch_2
        -0x43cb777f -> :sswitch_0
        -0x33bf06fe -> :sswitch_1
        -0xa418fff -> :sswitch_5
        0x696dcfa -> :sswitch_3
        0x46207176 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static parseGradientValues(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "image"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    :cond_0
    return-object v4

    .line 296
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 297
    const-string/jumbo v5, "linear-gradient"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    const-string/jumbo v5, "("

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string/jumbo v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "valueStr":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v2, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 302
    .local v0, "temp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    goto :goto_0

    .line 308
    :cond_2
    const-string/jumbo v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const/4 v0, 0x0

    .line 312
    goto :goto_0

    .line 314
    :cond_3
    if-eqz v0, :cond_4

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    goto :goto_0

    .line 318
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
