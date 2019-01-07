.class public final Lfdm$a;
.super Ljava/lang/Object;
.source "ConnectionAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lfdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lfdm;

    invoke-direct {v0}, Lfdm;-><init>()V

    sput-object v0, Lfdm$a;->a:Lfdk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
