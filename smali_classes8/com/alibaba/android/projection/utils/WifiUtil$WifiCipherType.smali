.class public final enum Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;
.super Ljava/lang/Enum;
.source "WifiUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/utils/WifiUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

.field public static final enum WIFICIPHER_NOPASS:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

.field public static final enum WIFICIPHER_WEP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

.field public static final enum WIFICIPHER_WPA_PSK:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

.field public static final enum WIFI_CIPHER_IEEE8021X:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

.field public static final enum WIFI_CIPHER_UNKNOWN:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

.field public static final enum WIFI_CIPHER_WPA_EAP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    new-instance v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    const-string/jumbo v1, "WIFI_CIPHER_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_UNKNOWN:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 207
    new-instance v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    const-string/jumbo v1, "WIFICIPHER_WEP"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_WEP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 208
    new-instance v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    const-string/jumbo v1, "WIFICIPHER_WPA_PSK"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_WPA_PSK:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 209
    new-instance v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    const-string/jumbo v1, "WIFI_CIPHER_WPA_EAP"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_WPA_EAP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 210
    new-instance v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    const-string/jumbo v1, "WIFI_CIPHER_IEEE8021X"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_IEEE8021X:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 211
    new-instance v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    const-string/jumbo v1, "WIFICIPHER_NOPASS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 205
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    sget-object v1, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_UNKNOWN:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_WEP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_WPA_PSK:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_WPA_EAP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_IEEE8021X:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->$VALUES:[Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput p3, p0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->type:I

    .line 216
    return-void
.end method

.method public static getByType(I)Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "wifiCipherType":Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;
    packed-switch p0, :pswitch_data_0

    .line 241
    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_UNKNOWN:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 223
    goto :goto_0

    .line 225
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_WEP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 226
    goto :goto_0

    .line 228
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_WPA_PSK:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 229
    goto :goto_0

    .line 231
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_WPA_EAP:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 232
    goto :goto_0

    .line 234
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFI_CIPHER_IEEE8021X:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    .line 235
    goto :goto_0

    .line 237
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    goto :goto_0

    .line 220
    nop

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->$VALUES:[Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    invoke-virtual {v0}, [Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/projection/utils/WifiUtil$WifiCipherType;

    return-object v0
.end method
