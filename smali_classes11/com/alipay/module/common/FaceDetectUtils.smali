.class public Lcom/alipay/module/common/FaceDetectUtils;
.super Ljava/lang/Object;
.source "FaceDetectUtils.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "\u4eba\u6c14\u5927\u7206\u53d1\uff0c\u4e00\u4f1a\u513f\u63a5\u5f85\u60a8"

    .line 9
    sparse-switch p0, :sswitch_data_0

    .line 36
    :goto_0
    return-object v0

    .line 12
    :sswitch_0
    const-string/jumbo v0, "\u8bbe\u5907\u65e0\u6cd5\u4f7f\u7528\u8bf7\u68c0\u67e5\u4f60\u7684\u524d\u7f6e\u6444\u50cf\u5934\u662f\u5426\u53ef\u7528"

    goto :goto_0

    .line 16
    :sswitch_1
    const-string/jumbo v0, "\u6444\u50cf\u5934\u6743\u9650\u672a\u5f00\u901a\uff0c\u65e0\u6cd5\u4f7f\u7528\uff0c\u8bf7\u5f00\u901a\u6743\u9650\u518d\u8bd5"

    goto :goto_0

    .line 20
    :sswitch_2
    const-string/jumbo v0, "\u524d\u7f6e\u6761\u4ef6,\u50cf\u7d20\u4e0d\u8fbe\u6807"

    goto :goto_0

    .line 24
    :sswitch_3
    const-string/jumbo v0, "CPU\u6027\u80fd\u4e0d\u7b26\u5408\u8981\u6c42"

    goto :goto_0

    .line 27
    :sswitch_4
    const-string/jumbo v0, "\u7528\u6237\u53d6\u6d88"

    goto :goto_0

    .line 31
    :sswitch_5
    const-string/jumbo v0, "\u7f51\u7edc\u5f02\u5e38"

    goto :goto_0

    .line 9
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x3f2 -> :sswitch_5
        0x3f3 -> :sswitch_5
        0xbbc -> :sswitch_4
    .end sparse-switch
.end method
