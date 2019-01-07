.class public final Ligf$a;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ligf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static activity_horizontal_margin:I

.field public static face_cicle_height:I

.field public static face_cicle_width:I

.field public static title_bar_icon_height:I

.field public static title_bar_icon_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    sget v0, Ligg$a;->activity_horizontal_margin:I

    sput v0, Ligf$a;->activity_horizontal_margin:I

    .line 211
    sget v0, Ligg$a;->face_cicle_height:I

    sput v0, Ligf$a;->face_cicle_height:I

    .line 212
    sget v0, Ligg$a;->face_cicle_width:I

    sput v0, Ligf$a;->face_cicle_width:I

    .line 213
    sget v0, Ligg$a;->title_bar_icon_height:I

    sput v0, Ligf$a;->title_bar_icon_height:I

    .line 214
    sget v0, Ligg$a;->title_bar_icon_width:I

    sput v0, Ligf$a;->title_bar_icon_width:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
