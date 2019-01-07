.class public final Lekg$a;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lekg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lekg$a;->a:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0}, Lekg$a;-><init>()V

    return-void
.end method
