.class public final Lfbk$a;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lfbk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lfbk;

    invoke-direct {v0}, Lfbk;-><init>()V

    sput-object v0, Lfbk$a;->a:Lfbk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
