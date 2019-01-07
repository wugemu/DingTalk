.class public final Laju;
.super Ljava/lang/Object;
.source "ClientVariables.java"


# static fields
.field public static final f:Laju;


# instance fields
.field public volatile a:Landroid/content/Context;

.field public volatile b:Z

.field public volatile c:Ljava/lang/String;

.field public volatile d:Z

.field public volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Laju;

    invoke-direct {v0}, Laju;-><init>()V

    sput-object v0, Laju;->f:Laju;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Laju;->a:Landroid/content/Context;

    .line 11
    iput-boolean v0, p0, Laju;->b:Z

    .line 13
    iput-boolean v0, p0, Laju;->d:Z

    .line 14
    iput-object v1, p0, Laju;->e:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static a()Laju;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Laju;->f:Laju;

    return-object v0
.end method
