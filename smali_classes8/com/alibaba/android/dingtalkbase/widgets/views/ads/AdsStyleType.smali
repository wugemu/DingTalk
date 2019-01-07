.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;
.super Ljava/lang/Enum;
.source "AdsStyleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_AVATAR_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_CHAT_STYLE:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_DING_ADS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_EXTERNAL_BANNER:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_FRONT_PAGE_H5:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_NEW:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_POPUP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_REDDOT_PIC_TEXT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_SPLASH:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_TEXT_IN_RED:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

.field public static final enum STYLE_TIPS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 27
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_REDDOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_NUM"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 37
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_NEW"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NEW:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 42
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_TEXT_IN_RED"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TEXT_IN_RED:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 47
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_REDDOT_PIC_TEXT"

    invoke-direct {v0, v1, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT_PIC_TEXT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_TIPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TIPS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_POPUP"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_POPUP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 62
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_SPLASH"

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_SPLASH:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_EXTERNAL_BANNER"

    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_EXTERNAL_BANNER:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 72
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_FRONT_PAGE_H5"

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_FRONT_PAGE_H5:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 77
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_DING_ADS"

    const/16 v2, 0xa

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_DING_ADS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_AVATAR_REDDOT"

    const/16 v2, 0xb

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_AVATAR_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 87
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const-string/jumbo v1, "STYLE_CHAT_STYLE"

    const/16 v2, 0xc

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_CHAT_STYLE:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    .line 22
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NEW:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TEXT_IN_RED:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_REDDOT_PIC_TEXT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_TIPS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_POPUP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_SPLASH:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_EXTERNAL_BANNER:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_FRONT_PAGE_H5:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_DING_ADS:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_AVATAR_REDDOT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_CHAT_STYLE:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->mValue:I

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->mValue:I

    return v0
.end method
