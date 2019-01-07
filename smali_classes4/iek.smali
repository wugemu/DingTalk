.class public final Liek;
.super Ljava/lang/Object;
.source "AudioRegulatorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liek$g;,
        Liek$e;,
        Liek$d;,
        Liek$f;,
        Liek$h;,
        Liek$b;,
        Liek$a;,
        Liek$c;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:Liek$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Liek;->a:I

    .line 20
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Liek;->b:Ljava/lang/String;

    .line 21
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Liek;->c:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "MB860"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Galaxy Nexus"

    sget-object v2, Liek;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Liek$d;

    invoke-direct {v0, v1}, Liek$d;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    .line 66
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string/jumbo v0, "M040"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Liek$f;

    invoke-direct {v0, v1}, Liek$f;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    goto :goto_0

    .line 5081
    :cond_2
    sget-object v0, Liek;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5082
    const-string/jumbo v0, "samsung"

    sget-object v2, Liek;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 38
    :goto_1
    if-eqz v0, :cond_6

    .line 39
    sget-object v0, Liek;->b:Ljava/lang/String;

    const-string/jumbo v2, "SM-G9350"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Liek;->b:Ljava/lang/String;

    const-string/jumbo v2, "SM-G9500"

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Liek;->b:Ljava/lang/String;

    const-string/jumbo v2, "SM-G9550"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    :cond_3
    new-instance v0, Liek$b;

    invoke-direct {v0, v1}, Liek$b;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 5084
    goto :goto_1

    .line 44
    :cond_5
    new-instance v0, Liek$h;

    invoke-direct {v0, v1}, Liek$h;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    goto :goto_0

    .line 46
    :cond_6
    const-string/jumbo v0, "MI 3"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "HTC One X"

    sget-object v2, Liek;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "Che2-TL00"

    sget-object v2, Liek;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "PRO 5"

    sget-object v2, Liek;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "HONOR"

    sget-object v2, Liek;->c:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "CHM-TL00H"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    sget-object v0, Liek;->b:Ljava/lang/String;

    const-string/jumbo v2, "ZD-P1-TJ3"

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Liek;->b:Ljava/lang/String;

    const-string/jumbo v2, "Doov L5P_M"

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 53
    :cond_8
    new-instance v0, Liek$e;

    invoke-direct {v0, v1}, Liek$e;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    goto/16 :goto_0

    .line 54
    :cond_9
    const-string/jumbo v0, "MI 2SC"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "MI 2A"

    sget-object v2, Liek;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "Coolpad 5891"

    sget-object v2, Liek;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    :cond_a
    new-instance v0, Liek$g;

    invoke-direct {v0, v1}, Liek$g;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    goto/16 :goto_0

    .line 58
    :cond_b
    const-string/jumbo v0, "vivo X6S A"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Liek;->b:Ljava/lang/String;

    const-string/jumbo v2, "OPPO R9s"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "Meizu"

    sget-object v2, Liek;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "15"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const-string/jumbo v0, "Meizu"

    sget-object v2, Liek;->c:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "15 Plus"

    sget-object v2, Liek;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    :cond_d
    new-instance v0, Liek$b;

    invoke-direct {v0, v1}, Liek$b;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    goto/16 :goto_0

    .line 64
    :cond_e
    new-instance v0, Liek$a;

    invoke-direct {v0, v1}, Liek$a;-><init>(B)V

    sput-object v0, Liek;->d:Liek$c;

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 16
    sget v0, Liek;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Liej;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Liej;->a(Landroid/content/Context;)Liej;

    move-result-object v0

    .line 73
    .local v0, "regulator":Liej;
    sget-object v1, Liek;->d:Liek$c;

    .line 1036
    iput-object v1, v0, Liej;->b:Liek$c;

    .line 74
    return-object v0
.end method

.method static synthetic a(Landroid/media/AudioManager;)V
    .locals 2
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    const/4 v1, 0x3

    .line 16
    .line 2121
    if-eqz p0, :cond_1

    .line 3030
    invoke-static {}, Lifd$a;->a()Lifd;

    .line 2124
    invoke-static {}, Lifd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2125
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2129
    :cond_0
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 16
    :cond_1
    return-void
.end method

.method static synthetic b(Landroid/media/AudioManager;)V
    .locals 3
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    const/4 v2, 0x0

    .line 16
    .line 3106
    if-eqz p0, :cond_0

    .line 4030
    invoke-static {}, Lifd$a;->a()Lifd;

    .line 3109
    invoke-static {}, Lifd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3110
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3111
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    :goto_0
    return-void

    .line 3114
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3115
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method static synthetic b()Z
    .locals 2

    .prologue
    .line 1195
    sget v0, Liek;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget v0, Liek;->a:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_0
.end method

.method static synthetic c(Landroid/media/AudioManager;)V
    .locals 3
    .param p0, "x0"    # Landroid/media/AudioManager;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 16
    .line 4089
    if-eqz p0, :cond_0

    .line 5030
    invoke-static {}, Lifd$a;->a()Lifd;

    .line 4093
    invoke-static {}, Lifd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4094
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 4095
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4099
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method
