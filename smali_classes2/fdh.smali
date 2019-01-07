.class public final Lfdh;
.super Ljava/lang/Object;
.source "TimelineUsrTimeDisplayStrategyInterface.java"

# interfaces
.implements Lfdf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createAt"    # J

    .prologue
    .line 14
    invoke-static {p1, p2, p3}, Lfff;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
