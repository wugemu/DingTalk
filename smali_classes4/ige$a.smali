.class public final Lige$a;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lige;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static title_bar_icon_height:I

.field public static title_bar_icon_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    sget v0, Ligg$a;->title_bar_icon_height:I

    sput v0, Lige$a;->title_bar_icon_height:I

    .line 187
    sget v0, Ligg$a;->title_bar_icon_width:I

    sput v0, Lige$a;->title_bar_icon_width:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
