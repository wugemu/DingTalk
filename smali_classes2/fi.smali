.class public final Lfi;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi$f;,
        Lfi$a;,
        Lfi$b;,
        Lfi$c;,
        Lfi$e;,
        Lfi$d;
    }
.end annotation


# static fields
.field public static final a:Lfh;

.field public static final b:Lfh;

.field public static final c:Lfh;

.field public static final d:Lfh;

.field public static final e:Lfh;

.field public static final f:Lfh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lfi$e;

    invoke-direct {v0, v1, v2}, Lfi$e;-><init>(Lfi$c;Z)V

    sput-object v0, Lfi;->a:Lfh;

    .line 39
    new-instance v0, Lfi$e;

    invoke-direct {v0, v1, v3}, Lfi$e;-><init>(Lfi$c;Z)V

    sput-object v0, Lfi;->b:Lfh;

    .line 47
    new-instance v0, Lfi$e;

    sget-object v1, Lfi$b;->a:Lfi$b;

    invoke-direct {v0, v1, v2}, Lfi$e;-><init>(Lfi$c;Z)V

    sput-object v0, Lfi;->c:Lfh;

    .line 55
    new-instance v0, Lfi$e;

    sget-object v1, Lfi$b;->a:Lfi$b;

    invoke-direct {v0, v1, v3}, Lfi$e;-><init>(Lfi$c;Z)V

    sput-object v0, Lfi;->d:Lfh;

    .line 62
    new-instance v0, Lfi$e;

    sget-object v1, Lfi$a;->a:Lfi$a;

    invoke-direct {v0, v1, v2}, Lfi$e;-><init>(Lfi$c;Z)V

    sput-object v0, Lfi;->e:Lfh;

    .line 68
    sget-object v0, Lfi$f;->a:Lfi$f;

    sput-object v0, Lfi;->f:Lfh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1
    .param p0, "directionality"    # I

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 86
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 81
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static b(I)I
    .locals 1
    .param p0, "directionality"    # I

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 95
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
