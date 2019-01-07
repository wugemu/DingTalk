.class public final Ldec$a;
.super Ljava/lang/Object;
.source "DraftManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ldec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ldec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldec;-><init>(B)V

    sput-object v0, Ldec$a;->a:Ldec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ldec;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Ldec$a;->a:Ldec;

    return-object v0
.end method
