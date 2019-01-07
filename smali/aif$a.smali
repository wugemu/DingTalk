.class public final Laif$a;
.super Laih;
.source "AlimeiThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Laih;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V
    .locals 0
    .param p1, "priority"    # Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .prologue
    .line 23
    invoke-direct {p0}, Laih;-><init>()V

    .line 1065
    iput-object p1, p0, Laih;->a:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 25
    return-void
.end method
