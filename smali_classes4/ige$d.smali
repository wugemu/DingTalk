.class public final Lige$d;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lige;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static bio_alert_dialog:I

.field public static bio_dialog_loading_layout:I

.field public static bio_framework_main:I

.field public static title_bar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    sget v0, Ligg$d;->bio_alert_dialog:I

    sput v0, Lige$d;->bio_alert_dialog:I

    .line 230
    sget v0, Ligg$d;->bio_dialog_loading_layout:I

    sput v0, Lige$d;->bio_dialog_loading_layout:I

    .line 231
    sget v0, Ligg$d;->bio_framework_main:I

    sput v0, Lige$d;->bio_framework_main:I

    .line 232
    sget v0, Ligg$d;->title_bar:I

    sput v0, Lige$d;->title_bar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
