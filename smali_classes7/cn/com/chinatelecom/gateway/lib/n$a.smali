.class public abstract Lcn/com/chinatelecom/gateway/lib/n$a;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/chinatelecom/gateway/lib/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/n$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/n$a;->a:Z

    .line 30
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/n$a;->a:Z

    return v0
.end method
