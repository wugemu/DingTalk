.class public final Lifd$a;
.super Ljava/lang/Object;
.source "AVSystemProp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lifd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lifd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lifd;

    invoke-direct {v0}, Lifd;-><init>()V

    sput-object v0, Lifd$a;->a:Lifd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lifd;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lifd$a;->a:Lifd;

    return-object v0
.end method
