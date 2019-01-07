.class public final Ldiy$a;
.super Ljava/lang/Object;
.source "ChatEmotionInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldiy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ldiy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ldiy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldiy;-><init>(B)V

    sput-object v0, Ldiy$a;->a:Ldiy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ldiy;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Ldiy$a;->a:Ldiy;

    return-object v0
.end method
