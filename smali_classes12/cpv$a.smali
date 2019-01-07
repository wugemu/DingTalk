.class public Lcpv$a;
.super Ljava/lang/Object;
.source "TraceUtils.java"

# interfaces
.implements Lcmj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcpv$a;->a:Z

    .line 35
    return-void
.end method
