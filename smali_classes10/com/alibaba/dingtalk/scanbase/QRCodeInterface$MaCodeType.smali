.class public final enum Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;
.super Ljava/lang/Enum;
.source "QRCodeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaCodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

.field public static final enum ALL:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

.field public static final enum BarCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

.field public static final enum QrCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 47
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    const-string/jumbo v1, "BarCode"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->BarCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    .line 48
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    const-string/jumbo v1, "QrCode"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->QrCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    .line 49
    new-instance v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3, v5}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->ALL:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    .line 46
    new-array v0, v5, [Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    sget-object v1, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->BarCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->QrCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->ALL:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->$VALUES:[Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->type:I

    .line 55
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 62
    packed-switch p0, :pswitch_data_0

    .line 68
    sget-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->ALL:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    sget-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->BarCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->QrCode:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->$VALUES:[Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;->type:I

    return v0
.end method
