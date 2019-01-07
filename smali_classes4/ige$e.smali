.class public final Lige$e;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lige;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static ConfirmAlertDialog:I

.field public static LoadingDialog:I

.field public static text_20:I

.field public static text_28:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    sget v0, Ligg$f;->ConfirmAlertDialog:I

    sput v0, Lige$e;->ConfirmAlertDialog:I

    .line 240
    sget v0, Ligg$f;->LoadingDialog:I

    sput v0, Lige$e;->LoadingDialog:I

    .line 241
    sget v0, Ligg$f;->text_20:I

    sput v0, Lige$e;->text_20:I

    .line 242
    sget v0, Ligg$f;->text_28:I

    sput v0, Lige$e;->text_28:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
