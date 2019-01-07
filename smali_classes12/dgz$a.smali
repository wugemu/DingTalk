.class public final Ldgz$a;
.super Ljava/lang/Object;
.source "SubConversationConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Ldgz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ldgz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldgz;-><init>(B)V

    sput-object v0, Ldgz$a;->a:Ldgz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ldgz;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ldgz$a;->a:Ldgz;

    return-object v0
.end method
