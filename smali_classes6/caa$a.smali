.class final Lcaa$a;
.super Ljava/lang/Object;
.source "MainLooperHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcaa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcaa;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcaa;-><init>(Landroid/os/Looper;B)V

    sput-object v0, Lcaa$a;->a:Lcaa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method
