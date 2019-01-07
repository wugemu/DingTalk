.class public Lcom/taobao/xsandroidcamerademo/FilterConstants;
.super Ljava/lang/Object;
.source "FilterConstants.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static Format_RGB:I

.field public static Format_RGBA:I

.field public static Format_UNKNOWN:I

.field public static Format_YUV420P:I

.field public static Format_YUV420SP:I

.field public static TB_FILTER_TYPE_BASIC_YUV:I

.field public static TB_FILTER_TYPE_COLOR_TABLE_CHALKBOARD:I

.field public static TB_FILTER_TYPE_COLOR_TABLE_COOLCHILDREN:I

.field public static TB_FILTER_TYPE_COLOR_TABLE_NEWWARM:I

.field public static TB_FILTER_TYPE_COLOR_TABLE_REDGELB:I

.field public static TB_FILTER_TYPE_FACEBEAUTY:I

.field public static TB_FILTER_TYPE_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    sput v1, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_UNKNOWN:I

    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_YUV420SP:I

    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_YUV420P:I

    .line 13
    const/4 v0, 0x3

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_RGB:I

    .line 14
    const/4 v0, 0x4

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->Format_RGBA:I

    .line 17
    sput v1, Lcom/taobao/xsandroidcamerademo/FilterConstants;->TB_FILTER_TYPE_BASIC_YUV:I

    .line 18
    const/16 v0, 0xb

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->TB_FILTER_TYPE_FACEBEAUTY:I

    .line 19
    const/16 v0, 0xf

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->TB_FILTER_TYPE_COLOR_TABLE_CHALKBOARD:I

    .line 20
    const/16 v0, 0x10

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->TB_FILTER_TYPE_COLOR_TABLE_REDGELB:I

    .line 21
    const/16 v0, 0x11

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->TB_FILTER_TYPE_COLOR_TABLE_NEWWARM:I

    .line 22
    const/16 v0, 0x12

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->TB_FILTER_TYPE_COLOR_TABLE_COOLCHILDREN:I

    .line 23
    const/16 v0, 0x13

    sput v0, Lcom/taobao/xsandroidcamerademo/FilterConstants;->TB_FILTER_TYPE_NONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
