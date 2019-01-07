.class public final enum Lcom/alibaba/android/scan/widget/ScanType;
.super Ljava/lang/Enum;
.source "ScanType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/scan/widget/ScanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/scan/widget/ScanType;

.field public static final enum SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/alibaba/android/scan/widget/ScanType;

    const-string/jumbo v1, "SCAN_MA"

    const-string/jumbo v2, "MA"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/scan/widget/ScanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    .line 5
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/android/scan/widget/ScanType;

    sget-object v1, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/scan/widget/ScanType;->$VALUES:[Lcom/alibaba/android/scan/widget/ScanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/alibaba/android/scan/widget/ScanType;->value:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/alibaba/android/scan/widget/ScanType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/alibaba/android/scan/widget/ScanType;->values()[Lcom/alibaba/android/scan/widget/ScanType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 16
    .local v0, "scanType":Lcom/alibaba/android/scan/widget/ScanType;
    iget-object v4, v0, Lcom/alibaba/android/scan/widget/ScanType;->value:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    .end local v0    # "scanType":Lcom/alibaba/android/scan/widget/ScanType;
    :goto_1
    return-object v0

    .line 15
    .restart local v0    # "scanType":Lcom/alibaba/android/scan/widget/ScanType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "scanType":Lcom/alibaba/android/scan/widget/ScanType;
    :cond_1
    sget-object v0, Lcom/alibaba/android/scan/widget/ScanType;->SCAN_MA:Lcom/alibaba/android/scan/widget/ScanType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/scan/widget/ScanType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/alibaba/android/scan/widget/ScanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/scan/widget/ScanType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/scan/widget/ScanType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/alibaba/android/scan/widget/ScanType;->$VALUES:[Lcom/alibaba/android/scan/widget/ScanType;

    invoke-virtual {v0}, [Lcom/alibaba/android/scan/widget/ScanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/scan/widget/ScanType;

    return-object v0
.end method


# virtual methods
.method public final toBqcScanType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/android/scan/widget/ScanType$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/scan/widget/ScanType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 28
    const-string/jumbo v0, "MA"

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    const-string/jumbo v0, "MA"

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
