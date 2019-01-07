.class public final Lglr$j;
.super Ljava/lang/Object;
.source "CSpaceAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static a:Lglr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lglr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lglr;-><init>(B)V

    sput-object v0, Lglr$j;->a:Lglr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
