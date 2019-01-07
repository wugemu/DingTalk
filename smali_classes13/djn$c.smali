.class public final Ldjn$c;
.super Ljava/lang/Object;
.source "EmotionGuideChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static a:Ldjn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ldjn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldjn;-><init>(B)V

    sput-object v0, Ldjn$c;->a:Ldjn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ldjn;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Ldjn$c;->a:Ldjn;

    return-object v0
.end method
