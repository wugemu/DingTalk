.class public final Laif;
.super Ljava/lang/Object;
.source "AlimeiThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laif$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laie;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Laif$a;

    invoke-direct {v0}, Laif$a;-><init>()V

    .line 40
    .local v0, "thread":Laih;
    const-string/jumbo v1, "AlimeiSDK"

    invoke-virtual {v0, v1}, Laih;->a(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .prologue
    .line 62
    new-instance v0, Laif$a;

    invoke-direct {v0, p0}, Laif$a;-><init>(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V

    .line 63
    .local v0, "thread":Laie;
    const-string/jumbo v1, "AlimeiSDK"

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/String;)V

    .line 64
    return-object v0
.end method
