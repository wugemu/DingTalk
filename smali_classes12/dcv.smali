.class public final Ldcv;
.super Ljava/lang/Object;
.source "CSpaceUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "bmp"

    aput-object v1, v0, v3

    const-string/jumbo v1, "png"

    aput-object v1, v0, v4

    const-string/jumbo v1, "jpg"

    aput-object v1, v0, v5

    const-string/jumbo v1, "jpeg"

    aput-object v1, v0, v6

    const-string/jumbo v1, "webp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "ico"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "tiff"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "tif"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "tga"

    aput-object v2, v0, v1

    sput-object v0, Ldcv;->a:[Ljava/lang/String;

    .line 22
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "3gp"

    aput-object v1, v0, v3

    const-string/jumbo v1, "asf"

    aput-object v1, v0, v4

    const-string/jumbo v1, "avi"

    aput-object v1, v0, v5

    const-string/jumbo v1, "dat"

    aput-object v1, v0, v6

    const-string/jumbo v1, "dv"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "flv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "f4v"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "m2t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "m3u8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "m4v"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "mj2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "mjpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "mkv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "mov"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "mp4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "mpe"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "mpg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "mts"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "qt"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "rm"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "rmvb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "ts"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "vob"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "wmv"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "webm"

    aput-object v2, v0, v1

    sput-object v0, Ldcv;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 26
    .local v0, "interfaceImpl":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    const-string/jumbo v2, "cspace_video_preview_online_enable"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "space_bubble_video_enable"

    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v1, Ldcv;->b:[Ljava/lang/String;

    invoke-static {p0, v1}, Ldcv;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "matchTypes"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v2

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 45
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 46
    .local v0, "matchType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 47
    const-string/jumbo v5, "\\*"

    const-string/jumbo v6, "\\.\\*"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 48
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    const/4 v2, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "space_bubble_image_enable"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldcv;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Ldcv;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
