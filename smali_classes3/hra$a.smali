.class public final Lhra$a;
.super Ljava/lang/Object;
.source "UidTokenDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lhqz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lhra;

    invoke-direct {v0}, Lhra;-><init>()V

    sput-object v0, Lhra$a;->a:Lhqz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
