.class public final Lfuj$b;
.super Ljava/lang/Object;
.source "NameCardCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfuj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lfuj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lfuj;

    invoke-direct {v0}, Lfuj;-><init>()V

    sput-object v0, Lfuj$b;->a:Lfuj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
