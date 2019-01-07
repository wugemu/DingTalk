.class public Levt;
.super Ljava/lang/Object;
.source "TeleAudioFocusListener.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Levt;


# instance fields
.field public a:Lciu$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Levt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levt;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Levt$1;

    invoke-direct {v0, p0}, Levt$1;-><init>(Levt;)V

    iput-object v0, p0, Levt;->a:Lciu$b;

    return-void
.end method

.method public static a()Levt;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Levt;->c:Levt;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Levt;

    invoke-direct {v0}, Levt;-><init>()V

    sput-object v0, Levt;->c:Levt;

    .line 66
    :cond_0
    sget-object v0, Levt;->c:Levt;

    return-object v0
.end method

.method static synthetic a(Levt;)V
    .locals 3
    .param p0, "x0"    # Levt;

    .prologue
    .line 1058
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    const-string/jumbo v1, "teleconf_focus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lciu;->a(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Levt;->c:Levt;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    sput-object v0, Levt;->c:Levt;

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Levt;->b:Ljava/lang/String;

    return-object v0
.end method
