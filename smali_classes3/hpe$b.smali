.class public final Lhpe$b;
.super Ljava/lang/Object;
.source "HydroNetStack.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/NetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lhpe;


# direct methods
.method private constructor <init>(Lhpe;)V
    .locals 1

    .prologue
    .line 516
    iput-object p1, p0, Lhpe$b;->b:Lhpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhpe$b;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lhpe;B)V
    .locals 0
    .param p1, "x0"    # Lhpe;

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lhpe$b;-><init>(Lhpe;)V

    return-void
.end method


# virtual methods
.method public final removeNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 1
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .prologue
    .line 527
    iget-object v0, p0, Lhpe$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method

.method public final setNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 1
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .prologue
    .line 522
    iget-object v0, p0, Lhpe$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method
