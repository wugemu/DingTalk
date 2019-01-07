.class public final Liiu;
.super Ljava/lang/Object;
.source "MaResultTypeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/common/result/ResultMaType;
    .locals 6
    .param p0, "wrapperResult"    # Lcom/alipay/ma/decode/DecodeResult;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    iget v3, p0, Lcom/alipay/ma/decode/DecodeResult;->type:I

    sparse-switch v3, :sswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :sswitch_0
    iget-object v0, p0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 1017
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_3

    :cond_1
    const-string/jumbo v3, "10"

    .line 1018
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    .line 41
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 42
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->MEDICINE:Lcom/alipay/ma/common/result/ResultMaType;

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1018
    goto :goto_1

    .line 44
    :cond_5
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->EXPRESS:Lcom/alipay/ma/common/result/ResultMaType;

    goto :goto_0

    .line 47
    :sswitch_1
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->PRODUCT:Lcom/alipay/ma/common/result/ResultMaType;

    goto :goto_0

    .line 49
    :sswitch_2
    iget-object v0, p0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    .line 1025
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1028
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_6

    .line 1030
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "s.tb.cn"

    .line 1031
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    :goto_2
    if-eqz v1, :cond_7

    .line 50
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->TB_ANTI_FAKE:Lcom/alipay/ma/common/result/ResultMaType;

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1031
    goto :goto_2

    .line 52
    :cond_7
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->QR:Lcom/alipay/ma/common/result/ResultMaType;

    goto :goto_0

    .line 55
    :sswitch_3
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->DM:Lcom/alipay/ma/common/result/ResultMaType;

    goto/16 :goto_0

    .line 57
    :sswitch_4
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->PDF417:Lcom/alipay/ma/common/result/ResultMaType;

    goto/16 :goto_0

    .line 59
    :sswitch_5
    iget v1, p0, Lcom/alipay/ma/decode/DecodeResult;->subType:I

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->EAN14:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v2}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 60
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->PRODUCT:Lcom/alipay/ma/common/result/ResultMaType;

    goto/16 :goto_0

    .line 65
    :sswitch_6
    iget v3, p0, Lcom/alipay/ma/decode/DecodeResult;->type:I

    iget v4, p0, Lcom/alipay/ma/decode/DecodeResult;->subType:I

    .line 1076
    sget-object v5, Lcom/alipay/ma/common/result/ResultMaType;->ARCODE:Lcom/alipay/ma/common/result/ResultMaType;

    invoke-virtual {v5}, Lcom/alipay/ma/common/result/ResultMaType;->getType()I

    move-result v5

    if-ne v3, v5, :cond_8

    sget-object v3, Lcom/alipay/ma/common/result/ResultMaType;->ARCODE:Lcom/alipay/ma/common/result/ResultMaType;

    invoke-virtual {v3}, Lcom/alipay/ma/common/result/ResultMaType;->getDiscernType()I

    move-result v3

    if-ne v4, v3, :cond_8

    .line 65
    :goto_3
    if-eqz v1, :cond_0

    .line 66
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->ARCODE:Lcom/alipay/ma/common/result/ResultMaType;

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 1076
    goto :goto_3

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x7f -> :sswitch_5
        0x400 -> :sswitch_3
        0x800 -> :sswitch_4
        0x10000 -> :sswitch_6
    .end sparse-switch
.end method
