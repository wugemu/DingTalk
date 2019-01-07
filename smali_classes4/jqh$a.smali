.class final Ljqh$a;
.super Ljava/lang/Object;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Ljqh;


# direct methods
.method private constructor <init>(Ljqh;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Ljqh$a;->d:Ljqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljqh;B)V
    .locals 0
    .param p1, "x0"    # Ljqh;

    .prologue
    .line 822
    invoke-direct {p0, p1}, Ljqh$a;-><init>(Ljqh;)V

    return-void
.end method
